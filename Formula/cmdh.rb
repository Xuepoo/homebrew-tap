class Cmdh < Formula
  desc "CmdHub agent-computer interface CLI client"
  homepage "https://github.com/Xuepoo/cmdhub"
  version "0.1.0-alpha"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0-alpha/cmdh-v0.1.0-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "7f613b5ad58ce035fb4e3f38a03edaa318f1d913730b7767b6b58149f20135e7"
    else
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0-alpha/cmdh-v0.1.0-alpha-x86_64-apple-darwin.tar.gz"
      sha256 "0b474446806c86ec77f38122e8bb03042c2a4558e87e8489b2f52f50f072ed4e"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0-alpha/cmdh-v0.1.0-alpha-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4226f58a6e04a97fe97d7bc29fde40289809145333ced88b49232697fab6e0c5"
  end

  def install
    bin.install "cmdh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmdh --version")
  end
end
