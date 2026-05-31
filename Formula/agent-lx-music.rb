class AgentLxMusic < Formula
  desc "A terminal-native music CLI replacing lx-music-desktop, powered by Agentic intelligence"
  homepage "https://github.com/Xuepoo/agent-lx-music"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.3.1/alx-macos-aarch64"
      sha256 "e6204778f69f1dc1ac28184eed0eb558e551b88f221a8c7d340e23b41b5fec96"
    else
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.3.1/alx-macos-x86_64"
      sha256 "4f9aed882cfa5f8a0bd02a2b5006383316b2459cec62d2970603a5c2a9104be9"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.3.1/alx-linux-x86_64"
    sha256 "c7ec48eb37ac5603c719062fbc9056faa0a40a81dea3ce13d17bf5fa56c89b01"
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
