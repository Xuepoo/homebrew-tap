class Carryctx < Formula
  desc "Local-first memory for coding agents"
   homepage "https://carryctx.xuepoo.xyz"
  version "0.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.8.2/carryctx-aarch64-apple-darwin"
      sha256 "5d10b9aa4852296e49b8ac8f25c170b0346189c980876ba81c37f78b8a0cf00c"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.8.2/carryctx-x86_64-apple-darwin"
      sha256 "2dc3baa7f9dc4478fb965cc005767669d329433625a3280f636d51c0d99adbd6"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.8.2/carryctx-x86_64-unknown-linux-gnu"
    sha256 "7c9c1c283584ea15355c2320d5a1c697c05e7a3af419a923f79b939798042341"
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
