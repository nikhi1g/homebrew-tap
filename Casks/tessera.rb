cask "tessera" do
  version "0.6.0"
  sha256 "3d1e10138f2edb9c8dd4216f020e1ed187235adb2fb4a5b37c56a1d8111d0347"

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
