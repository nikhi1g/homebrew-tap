cask "tessera" do
  version "0.5.0"
  sha256 "c850a93f916afd2e111e9c96fd685fab1d489efb4d46be028e8c70b64d7ba54e"

  url "https://2nikhilg.com/download/Tessera-#{version}.dmg"
  name "Tessera"
  desc "Automatic window tiling for each Desktop"
  homepage "https://2nikhilg.com/tessera/"

  livecheck do
    url :homepage
    regex(/Tessera[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Tessera.app"

  zap trash: "~/Library/Preferences/com.2nikhilg.tessera.plist"
end
