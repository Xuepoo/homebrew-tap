class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.7.0/carryctx-aarch64-apple-darwin"
      sha256 "a8104282a0d4949030b8a30fde02206fb530ea7d07c1bec9733e135d0f211723"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.7.0/carryctx-x86_64-apple-darwin"
      sha256 "3cdc3a0d3ffc3c27596ee4e178ea8ea67e5f60ad0c828d0c27f92ec98c6c8a95"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.7.0/carryctx-x86_64-unknown-linux-gnu"
    sha256 "8442345d53db598bf223aa3f29c5beeecdb4042227cd87a9b185d698b8788ddb"
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
