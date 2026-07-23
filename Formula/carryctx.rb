class Carryctx < Formula
  desc "Persistent project context for coding agents"
  homepage "https://carryctx.dev"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.0.3/carryctx-aarch64-apple-darwin"
      sha256 "a901613b9e6a37f9d425228fcc478965b2d05ed62a45fa7d23dd9c111599c6b6"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.0.3/carryctx-x86_64-apple-darwin"
      sha256 "f7b8bf3836650b8bb9cff4816fdb5b2e86c38f5976324c23a067a72e36408a6e"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.0.3/carryctx-x86_64-unknown-linux-gnu"
    sha256 "1289921d755585fa38c9a90d92d0e9104582b9ccfbc679fd371f1ed884d7e937"
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
