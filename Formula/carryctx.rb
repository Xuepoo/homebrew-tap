class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.5/carryctx-aarch64-apple-darwin"
      sha256 "8d156966c3b0d71da60f651d8d0acc74ac4d9ec1c5b1835ed4b73ad2147f1e6f"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.5/carryctx-x86_64-apple-darwin"
      sha256 "62cf1615c9ee7afac658a20f32b44e74e7d0d8553a6abc8e2fe7854f0406956b"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.5/carryctx-x86_64-unknown-linux-gnu"
    sha256 "d7cd812feedba47753de414c55491454d69b19d258ae2a3fa4deaaa9f528c100"
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
