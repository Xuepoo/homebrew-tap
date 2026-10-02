class AgentLxMusic < Formula
  desc "A terminal-native music CLI replacing lx-music-desktop, powered by Agentic intelligence"
  homepage "https://github.com/Xuepoo/agent-lx-music"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.4.1/alx-macos-aarch64"
      sha256 "fd30e9666c2c6e890b8a3da86f775e0c08b806de511497afd5f8311d79e1a2b7"
    else
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.4.1/alx-macos-x86_64"
      sha256 "ea19f2d2fe525509324afd364fbb0d0fef34d408f8f086cf32f0dc4dada81f5c"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.4.1/alx-linux-x86_64"
    sha256 "1191182062f446ee37dda9eebcf88e055d51e968814c9cef16d7e6c3565edf8e"
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
