class ItermCli < Formula
  desc "Drive iTerm2 from code: every window, tab, pane and agent"
  homepage "https://github.com/nikhi1g/iterm-cli"
  url "https://github.com/nikhi1g/iterm-cli/archive/refs/tags/v3.0.0.tar.gz"
  sha256 "88d408de8ededa919dfb1800945d3be561be11e8adc3dccbc0033019e629c5f7"
  license "MIT"
  head "https://github.com/nikhi1g/iterm-cli.git", branch: "main"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iterm version")
  end
end
