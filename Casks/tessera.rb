cask "tessera" do
  version "0.3.2"
  sha256 "cfa5b2453b386891a0b3ee413565d4299452c102f3878d2c8917d2c45379ea1a"

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
