class Cmdh < Formula
  desc "CmdHub agent-computer interface CLI client"
  homepage "https://github.com/Xuepoo/cmdhub"
  version "0.1.0-alpha"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0-alpha/cmdh-v0.1.0-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "600c704c3a4697e531e604b14608a4874e186e8c0be2cbdac0aa1baf4265c466"
    else
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0-alpha/cmdh-v0.1.0-alpha-x86_64-apple-darwin.tar.gz"
      sha256 "1bc70e455c35d455681f5e93d41419f4e1552735fbb400598b6cd3ba8895160a"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0-alpha/cmdh-v0.1.0-alpha-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b152256b2afd87a14760895c28ed9b41ee4b1420de091ae4b4e0af96a4490bfd"
  end

  def install
    bin.install "cmdh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmdh --version")
  end
end
