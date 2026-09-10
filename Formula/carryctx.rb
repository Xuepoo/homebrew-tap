class Carryctx < Formula
  desc "Local-first memory for coding agents"
   homepage "https://carryctx.xuepoo.xyz"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.10.0/carryctx-aarch64-apple-darwin"
      sha256 "664255b95f7205478dcc8a018325527507fcc6db6d9ce1750cf3de46e4a0b57f"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.10.0/carryctx-x86_64-apple-darwin"
      sha256 "463ccff9230b16ca79d370cc0c6ac33d1c6b216c51ccc44c9ddb4699f6c11d0d"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.10.0/carryctx-x86_64-unknown-linux-gnu"
    sha256 "30395ecc1006a201c6126991b383e5ee0d6cbd6fea745819ffafd7032676b7e2"
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
