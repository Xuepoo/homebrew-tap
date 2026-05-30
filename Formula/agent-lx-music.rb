class AgentLxMusic < Formula
  desc "A terminal-native music CLI replacing lx-music-desktop, powered by Agentic intelligence"
  homepage "https://github.com/Xuepoo/agent-lx-music"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.2.3/alx-macos-aarch64"
      sha256 "e17c707b4a56e489ef924eb49925c264777ceea4d46cfc65b832fa55f1a66f9f"
    else
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.2.3/alx-macos-x86_64"
      sha256 "4d3d0d5357b5b885d5db3bf09c2fff092116fb6ff3ef3bd03aa98a16bdee9fb1"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.2.3/alx-linux-x86_64"
    sha256 "7a60b3ba298d0c04e6ac6167bcb5dc74ffd8fd8d3615c4b736bd86e07e5c5168"
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
