class Cmdh < Formula
  desc "CmdHub agent-computer interface CLI client"
  homepage "https://github.com/Xuepoo/cmdhub-oss"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.4/cmdh-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "d5f14d497816adc612836d9b9f79b7b05d16e66b422b6b93a5e52d9075243928"
    else
      url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.4/cmdh-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "9feeffefe239d6f5c883f3d1b64e6d3b86742d9328fb40d98167bf0c4976cebc"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.4/cmdh-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7ab0a1aa79ef631ec873654f7756cc569d87e727ffba1f7625e17b32f8e8f460"
  end

  def install
    bin.install "cmdh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmdh --version")
  end
end
