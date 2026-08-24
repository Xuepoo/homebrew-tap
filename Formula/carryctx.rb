class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.7.0/carryctx-aarch64-apple-darwin"
      sha256 "1504b9303d76c6e470b47d616591942204e6d0f5cb281408819e7271fef6a4ca"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.7.0/carryctx-x86_64-apple-darwin"
      sha256 "138316e01981ea9f8d11a56e46f7908555100a421effdf23d347387404ca077a"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.7.0/carryctx-x86_64-unknown-linux-gnu"
    sha256 "a7b1119e0d1f595ec1aa89645d9e92a5462e7a6c79d61bc84862690311b1169a"
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
