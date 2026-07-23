class Carryctx < Formula
  desc "Persistent project context for coding agents"
  homepage "https://carryctx.dev"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.2.0/carryctx-aarch64-apple-darwin"
      sha256 "f494c501bcdc4e667cdb536a4a411ac561cae77369a9c54f6434f13eae3b8de9"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.2.0/carryctx-x86_64-apple-darwin"
      sha256 "41b2cbe8e77ea2e19fef76222069f8fff22946df68b783d5c0d9a91e0a3614e2"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.2.0/carryctx-x86_64-unknown-linux-gnu"
    sha256 "58149926be03c49fe4b27e0e8c55224a016c9b6292bf34ed34adc4f9d122c934"
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
