class AgentLxMusic < Formula
  desc "A terminal-native music CLI replacing lx-music-desktop, powered by Agentic intelligence"
  homepage "https://github.com/Xuepoo/agent-lx-music"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.4.0/alx-macos-aarch64"
      sha256 "57ead7c6c0d69da7d31ecea2bf4b11dbd5b889f59b3181f92f8453b6ea689fe9"
    else
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.4.0/alx-macos-x86_64"
      sha256 "ea0a3083617151a4e6d6682ed009f4559134aefcdab9047823de9d14a22c6ca1"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.4.0/alx-linux-x86_64"
    sha256 "6bd510de2906ab731074cff35ceedbd6347f2536d54f0bc09e7fa1ae6fba8d6b"
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
