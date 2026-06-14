class Cmdh < Formula
  desc "CmdHub agent-computer interface CLI client"
  homepage "https://github.com/Xuepoo/cmdhub-oss"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.1/cmdh-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "4b85e7e5056c62658dc1ac9ec6bf4fddb1f2529ab291ffbb3dfa0ea488582a82"
    else
      url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.1/cmdh-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "44fe65375395213cdafe44ce7b81578f0301098bb3091c00a14a84f23fcf8cd4"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.1/cmdh-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d66e95ce3a369dffffa19617f1a902f243ac44c650b2bbf695c7ad1914a66d8e"
  end

  def install
    bin.install "cmdh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmdh --version")
  end
end
