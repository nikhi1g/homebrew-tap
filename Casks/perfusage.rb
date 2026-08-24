cask "perfusage" do
  version "0.1.0"
  sha256 "bd3044392277558247575ec2561560661e17e96dcc92eb0b2ac4119e480363ef"

  url "https://github.com/nikhi1g/perfusagepublic/releases/download/v#{version}/PerfUsage-#{version}-macos-universal.zip"
  name "PerfUsage"
  desc "Native macOS performance monitor"
  homepage "https://github.com/nikhi1g/perfusagepublic"

  app "PerfUsage.app"

  zap trash: [
    "~/Library/Preferences/com.example.perfusage.plist",
    "~/Library/Saved Application State/com.example.perfusage.savedState",
  ]
end
