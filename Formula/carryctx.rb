class Carryctx < Formula
  desc "Local-first memory for coding agents"
   homepage "https://carryctx.xuepoo.xyz"
  version "0.11.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.7/carryctx-aarch64-apple-darwin"
      sha256 "6862eb48ad443a936ed65da3fbf8334c5056f753bba76fe771450f6251f95c89"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.7/carryctx-x86_64-apple-darwin"
      sha256 "d9daac40578d291aac3983f66b160fd5398873538c63ca49fd5efe7a7e876e5d"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.7/carryctx-x86_64-unknown-linux-gnu"
    sha256 "e1c2061b3f2c6738299ac89b2c3fbb26f41dd70e65f372369dccb3d23db1dd39"
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
