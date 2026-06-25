class Cmdh < Formula
  desc "CmdHub agent-computer interface CLI client"
  homepage "https://github.com/Xuepoo/cmdhub-oss"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.5/cmdh-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "8e3675912777b04f222d0e1df990285400984d4314dabd802858e9d0d101f43d"
    else
      url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.5/cmdh-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "55fc1e5fa4d78e98444cb5047b80c0f3c8ebe3c5c4d86646d39872e459168e53"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.5/cmdh-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "535b107ebfd7a8a0a745c64a7e3e5372f9bc5052f712a24a466998656767890c"
  end

  def install
    bin.install "cmdh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmdh --version")
  end
end
