class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.4/carryctx-aarch64-apple-darwin"
      sha256 "8332bc89be561117f6c0707ca6584d2ccbc897af23b147d7a8a60264f1d66454"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.4/carryctx-x86_64-apple-darwin"
      sha256 "587c8318b896ce1445888274651bb2a046ade09f2d3e1b3de7784eeb83d941b1"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.4/carryctx-x86_64-unknown-linux-gnu"
    sha256 "a9ff5a0ff74ef08a5764ae9f613244034ac7eb7c3274581208eef1ddf21a17ab"
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
