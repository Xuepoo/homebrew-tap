class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.2/carryctx-aarch64-apple-darwin"
      sha256 "3119f5899bbcf9242cda8b1399fb9480ea07fdd47eb1750ffe46d97bceafa8c3"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.2/carryctx-x86_64-apple-darwin"
      sha256 "c4a296bd7c3f252637c8fe1a46d8e85b67c241f94e967a8c20329d38a36a9fc9"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.2/carryctx-x86_64-unknown-linux-gnu"
    sha256 "fa5bd3cd3c223dd29607fd77fbd114f208ea1cc484e974c491647f82666c231b"
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
