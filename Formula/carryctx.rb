class Carryctx < Formula
  desc "Local-first memory for coding agents"
   homepage "https://carryctx.xuepoo.xyz"
  version "0.11.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.5/carryctx-aarch64-apple-darwin"
      sha256 "0b52c6c6c51301abb6ba8728b0952e9336b50da62a526c10209e9f37d673ca3a"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.5/carryctx-x86_64-apple-darwin"
      sha256 "c1d02cecff678bc4e277aa0f70925016d57286f1f03f173586f99b9f882a918a"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.5/carryctx-x86_64-unknown-linux-gnu"
    sha256 "cc3915deef626ab2ba1116f64fa89c115d49016b99a542763a55700fe7b7f035"
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
