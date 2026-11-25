cask "tessera" do
  version "0.4.0"
  sha256 "ba5ec05a8484390510267463b230292556672cbd7b23503728507802a66ecb27"

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
