class Carryctx < Formula
  desc "Local-first memory for coding agents"
   homepage "https://carryctx.xuepoo.xyz"
  version "0.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.2/carryctx-aarch64-apple-darwin"
      sha256 "eb266063f7e6477d83122fbb5380c8285dcb75c1dedec4d295687da424790958"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.2/carryctx-x86_64-apple-darwin"
      sha256 "46a941f9f4999d77a4cb23c845120a3af4e24d027fabec9d83db8521e1881f47"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.2/carryctx-x86_64-unknown-linux-gnu"
    sha256 "256f11dc05d3e1969a85147e4c1519999286589a5fc38455c689ec0667638474"
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
