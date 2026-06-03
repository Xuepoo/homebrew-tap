class Cmdh < Formula
  desc "CmdHub agent-computer interface CLI client"
  homepage "https://github.com/Xuepoo/cmdhub"
  version "0.1.0-alpha"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0-alpha/cmdh-v0.1.0-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "72e63de3d6ba1e07d0bbf0e712a1561478c5ccaf92515f96014b0796b4759a31"
    else
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0-alpha/cmdh-v0.1.0-alpha-x86_64-apple-darwin.tar.gz"
      sha256 "06050511a3bed0b77b5af2a5a56a3f1e804e8eb4a9aeb1a04a81c056b4155c4a"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0-alpha/cmdh-v0.1.0-alpha-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c1184c5a584330d4023f34d9028e58b3b5de68af0f810894dc3b37f81fec8de4"
  end

  def install
    bin.install "cmdh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmdh --version")
  end
end
