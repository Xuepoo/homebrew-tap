class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.3/carryctx-aarch64-apple-darwin"
      sha256 "0e0ce54e6cd08f5ae424cca7d5bec846e0f94fed1a88f866ed3c0e34916364c7"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.3/carryctx-x86_64-apple-darwin"
      sha256 "ce458caf9a68cd38bfabb21a8cff131b78d41d01ffb0b1ba226de587f3162242"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.3/carryctx-x86_64-unknown-linux-gnu"
    sha256 "19fb7805dafeccf19a995c3daac810d36af91279392a83feca9166ea09273fb9"
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
