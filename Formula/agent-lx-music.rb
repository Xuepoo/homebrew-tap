class AgentLxMusic < Formula
  desc "A terminal-native music CLI replacing lx-music-desktop, powered by Agentic intelligence"
  homepage "https://github.com/Xuepoo/agent-lx-music"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.3.4/alx-macos-aarch64"
      sha256 "909af72ee98923dab029e72ab68c19c03e907405b5291aea65867e938f724b3d"
    else
      url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.3.4/alx-macos-x86_64"
      sha256 "7be8313b41b5f4be4fae02288160668d59226af83c2e0cb8ff5aedd37c830e98"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/agent-lx-music/releases/download/v0.3.4/alx-linux-x86_64"
    sha256 "4f03ab13836e465f53d4158405dc4ccc679d92db773089510ef56ca79e65e7e3"
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
