class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.3.2/carryctx-aarch64-apple-darwin"
      sha256 "685da48faf1ef5838abb6e77fae8bc04a90a18b5565c1417f8ddbf6e211d2a82"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.3.2/carryctx-x86_64-apple-darwin"
      sha256 "d4ada83b69ce6fbd43092564e60fe6d2107c4cb507e4252eefa0107141ae22b9"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.3.2/carryctx-x86_64-unknown-linux-gnu"
    sha256 "b45472312108734cf97afc33ca4c4a89d064bab00cbc1082608d4a0da7f32a1c"
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
