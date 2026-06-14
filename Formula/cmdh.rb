class Cmdh < Formula
  desc "CmdHub agent-computer interface CLI client"
  homepage "https://github.com/Xuepoo/cmdhub"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.1/cmdh-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "9ca26e7e79f9d364d309668ccc629249e929bb2afd2c5d73d5fb8de05a47b94b"
    else
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.1/cmdh-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "7b3cd0338462550e7a18ee8857e19cdac35d7ed7a72fbd80a0eaade72b73039d"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.1/cmdh-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7e8e3ba7443aaa9ab87c882ca1503a512af221516a825adb0554389a5749920f"
  end

  def install
    bin.install "cmdh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmdh --version")
  end
end
