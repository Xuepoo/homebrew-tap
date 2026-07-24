class Carryctx < Formula
  desc "Persistent project context for coding agents"
  homepage "https://carryctx.dev"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.3.0/carryctx-aarch64-apple-darwin"
      sha256 "bece30992777ef8025745e04ad0f267f8d4dc47759505281173f5ba7b890952c"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.3.0/carryctx-x86_64-apple-darwin"
      sha256 "0ea43e861d7cfc78da72c6eb4f0d7a39453a6ae759de459be66ede267aca53c7"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.3.0/carryctx-x86_64-unknown-linux-gnu"
    sha256 "670a9ea716c16a401a9cbf03fa59406632b67e2c8ac4f98aa208564ee26567b3"
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
