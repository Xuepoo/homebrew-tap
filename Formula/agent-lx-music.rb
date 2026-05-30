class AgentLxMusic < Formula
  desc "A terminal-native music CLI replacing lx-music-desktop, powered by Agentic intelligence"
  homepage "https://github.com/Xuepoo/agent-lx-music"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.3.0/alx-macos-aarch64"
      sha256 "33ca83910906f7b9354339c4d723a26fd283b9842b79fa633f3e321fda27cbc4"
    else
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.3.0/alx-macos-x86_64"
      sha256 "4555894ceb845b0921b30a68665986dee2fe7ad2568e2881a16551408cae7632"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.3.0/alx-linux-x86_64"
    sha256 "a7bbc49ca6b9f141b35796a643f11bfa1ec4a5d0515923c2df9faa2e1b54f31b"
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
