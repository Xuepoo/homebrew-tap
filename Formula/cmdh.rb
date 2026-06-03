class Cmdh < Formula
  desc "CmdHub agent-computer interface CLI client"
  homepage "https://github.com/Xuepoo/cmdhub"
  version "0.1.0-alpha"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0-alpha/cmdh-v0.1.0-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "e6f8f3b74bc61eceb5c9ae1ff8bf2e468c74e1e7324e526ef9202a0f47890e02"
    else
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0-alpha/cmdh-v0.1.0-alpha-x86_64-apple-darwin.tar.gz"
      sha256 "3421309e826425e5ca94cf4e212e894087b47ff4372c8622dd1691c03f66f37a"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0-alpha/cmdh-v0.1.0-alpha-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "be603b7445ccc44e4988d2d132c4cbecd2d59c488b98e96c61db8eab1642f970"
  end

  def install
    bin.install "cmdh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmdh --version")
  end
end
