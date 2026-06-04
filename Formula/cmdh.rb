class Cmdh < Formula
  desc "CmdHub agent-computer interface CLI client"
  homepage "https://github.com/Xuepoo/cmdhub"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0/cmdh-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "8f517c4db391e9219c253ef3c60d791696ae93feed06d5d65ae71e2dbab0a78e"
    else
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0/cmdh-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "41321a4ee0937dd1aaa65806cc4bab39859ba284e0bda893c61d9cee45206a84"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0/cmdh-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a13afdf3673d5aebddd618242cec6acb485d448855b22ce638ed4d7e0cfa5685"
  end

  def install
    bin.install "cmdh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmdh --version")
  end
end
