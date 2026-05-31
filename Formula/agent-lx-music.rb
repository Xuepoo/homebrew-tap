class AgentLxMusic < Formula
  desc "A terminal-native music CLI replacing lx-music-desktop, powered by Agentic intelligence"
  homepage "https://github.com/Xuepoo/agent-lx-music"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.3.3/alx-macos-aarch64"
      sha256 "faa7a52bf647d740385933525cfddd7d399d149959a6497a5bd62fa72917f808"
    else
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.3.3/alx-macos-x86_64"
      sha256 "8b16d85a73334b49c7154f75786af37d5a679082ceee0b08792f419880f3ba8f"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.3.3/alx-linux-x86_64"
    sha256 "210b4609b252a73cf46a27198d24e0f11572e063c67e9435d38cdc97516040bf"
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
