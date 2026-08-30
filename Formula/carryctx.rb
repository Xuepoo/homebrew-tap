class Carryctx < Formula
  desc "Local-first memory for coding agents"
   homepage "https://carryctx.xuepoo.xyz"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.8.0/carryctx-aarch64-apple-darwin"
      sha256 "c2f3a4f4f59c17584243f90aa711d60a256253a1efaee9c140fdab8f3de8a8fa"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.8.0/carryctx-x86_64-apple-darwin"
      sha256 "436f38495007daa101dbaffd53e127a186c2f09ddd251420fa108a35c3b9289a"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.8.0/carryctx-x86_64-unknown-linux-gnu"
    sha256 "42041cf1eee8f097310cf6c8c2533c779f1fd3404135c548b4cc8b0fe90bdb0a"
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
