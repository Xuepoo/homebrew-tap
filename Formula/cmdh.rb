class Cmdh < Formula
  desc "CmdHub agent-computer interface CLI client"
  homepage "https://github.com/Xuepoo/cmdhub"
  version "0.1.0-alpha"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0-alpha/cmdh-v0.1.0-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "52c376384661e5189337ed14ce147ff484fc07488727e851656862a8bdc4013f"
    else
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0-alpha/cmdh-v0.1.0-alpha-x86_64-apple-darwin.tar.gz"
      sha256 "069eb9d33cdec8cc9925f15b32ceb8cda39733ec4a4c6a1311bdcb4f50d59f36"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0-alpha/cmdh-v0.1.0-alpha-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "856571df2f211df26766c9857d98362c24265a5453e50edc6821f190b1db8feb"
  end

  def install
    bin.install "cmdh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmdh --version")
  end
end
