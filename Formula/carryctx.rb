class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.1/carryctx-aarch64-apple-darwin"
      sha256 "c599204e34a8472c2affe3d8152f0c6db911cd0d8c775531de4eb52c19e63470"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.1/carryctx-x86_64-apple-darwin"
      sha256 "c68c037ec674711cf877fcb2272e8142d1dcbcbe91a96756c01c4fd4abaadbb0"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.1/carryctx-x86_64-unknown-linux-gnu"
    sha256 "fcb014e9b6a671705c05e4ca4559d6ca5844c09e3ce74952d685c32e52242f0b"
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "carryctx-aarch64-apple-darwin" => "carryctx"
      else
        bin.install "carryctx-x86_64-apple-darwin" => "carryctx"
      end
    elsif OS.linux?
      bin.install "carryctx-x86_64-unknown-linux-gnu" => "carryctx"
    end
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/carryctx --version")
  end
end
