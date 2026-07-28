class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.3/carryctx-aarch64-apple-darwin"
      sha256 "406595f3869df7f74cf90f191a8d4c8e5a878967f034a4f21441808b57e9bdfa"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.3/carryctx-x86_64-apple-darwin"
      sha256 "1269bfc59553f095c2a5dc7b10adb79a1fe1de9f299c599f92a56eeb818dd694"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.3/carryctx-x86_64-unknown-linux-gnu"
    sha256 "1f90e9a3d02efbddd0d6a708563f5d20ecb7d9882f867e7d78e4da7f21e2d0a1"
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
