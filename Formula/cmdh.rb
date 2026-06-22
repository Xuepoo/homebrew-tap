class Cmdh < Formula
  desc "CmdHub agent-computer interface CLI client"
  homepage "https://github.com/Xuepoo/cmdhub-oss"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.3/cmdh-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "ad9c8de49f3ba8eadbfbca526853a539e6f23b0b17a8ff605b8f253c87dd29f7"
    else
      url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.3/cmdh-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "5159aaeefb6f33f8e5d62f9689b01bf1aa616c4865107a1fbb4dffb22d4fc5a1"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.3/cmdh-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "557d8ae61836475ddabeae5a0ad942ae01273a2dd13ec6c77235e1200af081da"
  end

  def install
    bin.install "cmdh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmdh --version")
  end
end
