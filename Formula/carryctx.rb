class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.6/carryctx-aarch64-apple-darwin"
      sha256 "7313c928b10101e7218aac8c9e195d4dee23cfe58f292effd4a4103526a12e59"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.6/carryctx-x86_64-apple-darwin"
      sha256 "7b009e836eeb4a52e74b7712e1b972f1d646550e7d254bf108c717728380c6d1"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.6/carryctx-x86_64-unknown-linux-gnu"
    sha256 "81f11eef078753e555297cb3488e4c9b79b9b595974015853a0c09c793b0d4ad"
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
