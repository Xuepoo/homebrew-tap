class Carryctx < Formula
  desc "Persistent project context for coding agents"
  homepage "https://carryctx.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.1.0/carryctx-aarch64-apple-darwin"
      sha256 "71dd0f2436a4651c7c54930f1d2478be68c55b405f4a3c50b80c33fe4c30e664"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.1.0/carryctx-x86_64-apple-darwin"
      sha256 "54cde6a0a4b103897033a13beb39fbd2f3cfc9d5cb718a111c3fae9a3770995d"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.1.0/carryctx-x86_64-unknown-linux-gnu"
    sha256 "329329639e5d3cd8384d552c7d5c1e668bbc68669fbb3b3aea2af9967c937efc"
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
