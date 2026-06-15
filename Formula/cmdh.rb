class Cmdh < Formula
  desc "CmdHub agent-computer interface CLI client"
  homepage "https://github.com/Xuepoo/cmdhub-oss"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.2/cmdh-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "bc207e452844e3181e5ae52ef35d8dda274f0d68173c32c101e9956f3e6d203c"
    else
      url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.2/cmdh-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "a4eb061e9cd3dff82b36562a01737e7daeb04bc355b93d448a1405359400262e"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.2/cmdh-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e807828f9fe6e70b377e38ed9214814b5876e52a3c41d6eb1bffa03ca0b2ea58"
  end

  def install
    bin.install "cmdh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmdh --version")
  end
end
