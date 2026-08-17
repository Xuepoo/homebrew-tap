class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.5.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.8/carryctx-aarch64-apple-darwin"
      sha256 "020b328ccd731e0388bec8babf3cc475e4c839627ddb27a3a913c45be4472e39"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.8/carryctx-x86_64-apple-darwin"
      sha256 "5235bab76290d635e9dfa1f631948aecfa33a7df14296e538bfb1f885583747b"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.8/carryctx-x86_64-unknown-linux-gnu"
    sha256 "3f0e00a7810d42008417f83ad2cc86df12bbfb863776e4827ab8c9de2e78137a"
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
