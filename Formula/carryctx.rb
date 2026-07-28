class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.4/carryctx-aarch64-apple-darwin"
      sha256 "d29f80dda07baad7117a1493aa9ab4b8d1c29b2ca86b9b449610d80d50c0c5cb"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.4/carryctx-x86_64-apple-darwin"
      sha256 "9fa1ee7134f9eb31a153b9e488539c60e4a2b875b1322b073c2b00f6c4a558c3"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.4/carryctx-x86_64-unknown-linux-gnu"
    sha256 "2d8f92f830d924216ad3bbc7f14bd443c381b01416a3d49d0c247a98138b8759"
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
