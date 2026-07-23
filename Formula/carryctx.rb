class Carryctx < Formula
  desc "Persistent project context for coding agents"
  homepage "https://carryctx.dev"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.0.2/carryctx-aarch64-apple-darwin"
      sha256 ""
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.0.2/carryctx-x86_64-apple-darwin"
      sha256 ""
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.0.2/carryctx-x86_64-unknown-linux-gnu"
    sha256 ""
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
