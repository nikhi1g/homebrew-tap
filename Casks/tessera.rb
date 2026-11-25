cask "tessera" do
  version "0.5.1"
  sha256 "414892d2d8d1017ad57474a8033b848e5ec3603399652b3407bbab87af7a6e14"

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
