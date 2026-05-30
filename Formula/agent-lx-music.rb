class AgentLxMusic < Formula
  desc "A terminal-native music CLI replacing lx-music-desktop, powered by Agentic intelligence"
  homepage "https://github.com/Xuepoo/agent-lx-music"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.2.5/alx-macos-aarch64"
      sha256 "e50f3b3007ec768d34f102c667d59d5b83acc0ec92f30ff696caa136587a4d2a"
    else
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.2.5/alx-macos-x86_64"
      sha256 "11cdee4c4b6ecc891541b92b5cc17b582863f5529f02f2d8e41f93e1643a159e"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.2.5/alx-linux-x86_64"
    sha256 "7cd2f1591b52f3a3284069599a5a60b617287448ee6362715005a96e2007813a"
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
