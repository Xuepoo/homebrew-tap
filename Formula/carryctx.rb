class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.0/carryctx-aarch64-apple-darwin"
      sha256 "94d5cedc5fb716ff4397d340888d1eac677cc9a9154d83a11a0e7114bd668b85"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.0/carryctx-x86_64-apple-darwin"
      sha256 "a3b8ece82177e4094528af7ca8dbd67284f78b7940bceb2c23a60ccba95ba1d8"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.0/carryctx-x86_64-unknown-linux-gnu"
    sha256 "a08627b46b0eae1501fe49ce2f15a77e0b3591ccdeff566bcfad49d0f70839b7"
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
