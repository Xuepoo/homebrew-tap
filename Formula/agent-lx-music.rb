class AgentLxMusic < Formula
  desc "A terminal-native music CLI replacing lx-music-desktop, powered by Agentic intelligence"
  homepage "https://github.com/Xuepoo/agent-lx-music"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.2.6/alx-macos-aarch64"
      sha256 "643ab549a75ffb24585915b7145496bd05114f3e4d32e1c7bc1b69223b6dcb55"
    else
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.2.6/alx-macos-x86_64"
      sha256 "d2d3e938dc8e595093d1858ec731571924d369edb6a8b5678af84b888e387505"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.2.6/alx-linux-x86_64"
    sha256 "9892105314b4638b3f2f00f7b68d21e0008be5939812a24c1017fdb21ce55d67"
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
