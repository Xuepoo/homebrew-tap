class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.5.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.7/carryctx-aarch64-apple-darwin"
      sha256 "da148d9b85c7c7178a8a3d918ba8b37cff2301b730cc5ec8f38dca2bf71a0f24"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.7/carryctx-x86_64-apple-darwin"
      sha256 "4550c24f1d1d25d8ffecb3b4b6326a88c6c4ecaaaecb92286131982c3b717cd3"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.7/carryctx-x86_64-unknown-linux-gnu"
    sha256 "42e503eae987851b515a85465e32476f855d5bfebcbce0b0042bf01278b4e0d2"
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
