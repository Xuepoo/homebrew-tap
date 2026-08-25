class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.7.0/carryctx-aarch64-apple-darwin"
      sha256 "ee6a8d32c11aaa720d6f44d82a0a116e7c0dc5f1829aecdd895ce13342952f99"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.7.0/carryctx-x86_64-apple-darwin"
      sha256 "0e9fd5bf48d6ef331469ff331335f9ca0b19a23fc5321fce45cd5f422283c8b2"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.7.0/carryctx-x86_64-unknown-linux-gnu"
    sha256 "6d6ada71a6b0f9488d0374f014c9b2267d20d6215cf36278d07c77c9988ec030"
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
