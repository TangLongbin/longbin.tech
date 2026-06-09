#!/usr/bin/env ruby

require "json"
require "net/http"
require "uri"
require "yaml"

API_ROOT = "https://api.github.com"
OUTPUT_PATH = File.expand_path("../_data/github_stars.yml", __dir__)

def github_get(path)
  uri = URI("#{API_ROOT}#{path}")
  request = Net::HTTP::Get.new(uri)
  request["Accept"] = "application/vnd.github+json"
  request["User-Agent"] = "longbin-tech-stars-updater"
  request["Authorization"] = "Bearer #{ENV.fetch("GITHUB_TOKEN")}" if ENV["GITHUB_TOKEN"]

  response = Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |http|
    http.request(request)
  end

  raise "GitHub API returned #{response.code} for #{path}" unless response.is_a?(Net::HTTPSuccess)

  JSON.parse(response.body)
end

def repository_stars(owner, repo)
  github_get("/repos/#{owner}/#{repo}").fetch("stargazers_count")
end

def organization_stars(org)
  page = 1
  total = 0

  loop do
    repos = github_get("/orgs/#{org}/repos?type=public&per_page=100&page=#{page}")
    total += repos.sum { |repo| repo.fetch("stargazers_count", 0) }
    break if repos.length < 100

    page += 1
  end

  total
end

stars = {}

begin
  total = organization_stars("HITSZ-OpenAuto")
  stars["HITSZ-OpenAuto"] = "#{total} stars"
rescue StandardError => e
  warn "Skipping HITSZ-OpenAuto: #{e.message}"
end

{
  "NavRL-Go2" => ["TangLongbin", "NavRL-Go2"],
  "torchcontrol" => ["TangLongbin", "torchcontrol"]
}.each do |name, (owner, repo)|
  begin
    stars[name] = "#{repository_stars(owner, repo)} stars"
  rescue StandardError => e
    warn "Skipping #{name}: #{e.message}"
  end
end

File.write(OUTPUT_PATH, stars.to_yaml)
puts "Updated #{OUTPUT_PATH} with #{stars.length} project star counts."
