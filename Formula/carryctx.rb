class Carryctx < Formula
  desc "Local-first memory for coding agents"
   homepage "https://carryctx.xuepoo.xyz"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.9.0/carryctx-aarch64-apple-darwin"
      sha256 "a7c399bf45e4c6aa746b61d9c7857825f57b98fa4e473754c716a91e5ccc2ab0"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.9.0/carryctx-x86_64-apple-darwin"
      sha256 "e86176d7f965c4103d61c58d8b5b74c14d9a75d453d0826f3ce28387a07b9a90"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.9.0/carryctx-x86_64-unknown-linux-gnu"
    sha256 "2a07858804ac2f6d2aaa381b5af99602e9de058ed784a8d46af217d6e07e9ad8"
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
