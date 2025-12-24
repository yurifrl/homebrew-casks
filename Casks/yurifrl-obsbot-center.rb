cask "yurifrl-obsbot-center" do
  version :latest
  sha256 :no_check

  url do
    require "net/http"
    require "json"
    require "uri"

    begin
      website_uri = URI("https://www.obsbot.com/download/obsbot-tiny-2")
      http = Net::HTTP.new(website_uri.host, website_uri.port)
      http.use_ssl = true
      response = http.get(website_uri.path)

      latest_version = response.body.match(/macOS v([\d.]+)/)&.captures&.first || "2.0.13.28"
      base_url = "https://resource-cdn.obsbothk.com/download/obsbot-center/Obsbot_Center_OA_E_MacOS_Apple_#{latest_version}_release.dmg"

      api_uri = URI("https://remo-api.obsbot.com/fms/v1/files/cdn/authorization")
      http = Net::HTTP.new(api_uri.host, api_uri.port)
      http.use_ssl = true

      request = Net::HTTP::Post.new(api_uri.path)
      request["Content-Type"] = "application/json"
      request.body = { url: base_url }.to_json

      response = http.request(request)
      result = JSON.parse(response.body)
      result["url"] || base_url
    rescue
      "https://resource-cdn.obsbothk.com/download/obsbot-center/Obsbot_Center_OA_E_MacOS_Apple_2.0.13.28_release.dmg"
    end
  end
  name "Obsbot Center"
  desc "Control center for Obsbot webcams"
  homepage "https://www.obsbot.com/"

  app "OBSBOT_Center.app"

  zap trash: [
    "~/Library/Application Support/Obsbot Center",
    "~/Library/Caches/com.obsbot.center",
    "~/Library/Preferences/com.obsbot.center.plist",
  ]
end
