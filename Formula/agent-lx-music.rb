class AgentLxMusic < Formula
  desc "A terminal-native music CLI replacing lx-music-desktop, powered by Agentic intelligence"
  homepage "https://github.com/Xuepoo/agent-lx-music"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.3.2/alx-macos-aarch64"
      sha256 "3287a33e812b34a384ba7e51305122adefc192064431a2ff389763b12fc281d6"
    else
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.3.2/alx-macos-x86_64"
      sha256 "fbe0f5c21b87b692f47177691ee1e5fb3e8a9faf0122ace0f6a7c9e1f349d0ab"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.3.2/alx-linux-x86_64"
    sha256 "643d130ec154dac7b5fc344488212daa7858d82120103c00bc872e7423c19b2b"
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "alx-macos-aarch64" => "alx"
      else
        bin.install "alx-macos-x86_64" => "alx"
      end
    elsif OS.linux?
      bin.install "alx-linux-x86_64" => "alx"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alx --version")
  end
end
