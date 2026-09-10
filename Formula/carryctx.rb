class Carryctx < Formula
  desc "Local-first memory for coding agents"
   homepage "https://carryctx.xuepoo.xyz"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.9.1/carryctx-aarch64-apple-darwin"
      sha256 "3f6f1191d91b9493f8835461b9e89fbaee1a42ce6dcf1bf6a3ea477312697877"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.9.1/carryctx-x86_64-apple-darwin"
      sha256 "1cc472b1e4b98f1a0f4b46cd2ac4862a3e8492a01425edbc2956af2792f272a6"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.9.1/carryctx-x86_64-unknown-linux-gnu"
    sha256 "014492035e2613bbd634821d9371806777b43fce020280f2e5b0203c31c0fd3c"
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
