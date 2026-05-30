class AgentLxMusic < Formula
  desc "A terminal-native music CLI replacing lx-music-desktop, powered by Agentic intelligence"
  homepage "https://github.com/Xuepoo/agent-lx-music"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.2.4/alx-macos-aarch64"
      sha256 "d83d4d11b1256c807ee3f12db88b19276e89c2d5ce56b3dffaf241e39e8c97ec"
    else
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.2.4/alx-macos-x86_64"
      sha256 "1ecc53604f5146d6c61339983a6177b5b0f5da5cbbcd826d77a233cd03bbceb8"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.2.4/alx-linux-x86_64"
    sha256 "ba84733ac5f455e3e9b0aa3d8f023662f09cf86caa38a4f896d9b8ffaa77f5c2"
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
