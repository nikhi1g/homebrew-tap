cask "tessera" do
  version "0.9.2"
  sha256 "de88e4786b9c94cb67096973a7024d63208a2a32be73e9bc31191042e47f4a32"

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
  binary "#{appdir}/Tessera.app/Contents/MacOS/tessera"

  zap trash: [
    "~/Library/Application Support/Tessera",
    "~/Library/Preferences/com.2nikhilg.tessera.plist",
  ]
end
