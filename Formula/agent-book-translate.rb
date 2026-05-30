class AgentBookTranslate < Formula
  desc "A powerful LLM-driven agentic EPUB book translator with robust progress monitoring and recovery"
  homepage "https://github.com/Xuepoo/agent-book-translate"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/agent-book-translate/releases/download/v0.1.6/agent-book-translate-macos-aarch64"
      sha256 "7275a4fa50650f12d61fae7044d6f25d0e85163a22691582c57fb3d4c0767859"
    else
      url "https://github.com/Xuepoo/agent-book-translate/releases/download/v0.1.6/agent-book-translate-macos-x86_64"
      sha256 "2a1ce37a5f2533e0c00ac16f734a19f14a38e6d48842bd92471dba8093177d11"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/agent-book-translate/releases/download/v0.1.6/agent-book-translate-linux-x86_64"
    sha256 "1d2d7bd455451935589d3ff0c8e4bf8f4de1ee6370896295d310c04b1e166650"
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "agent-book-translate-macos-aarch64" => "agent-book-translate"
      else
        bin.install "agent-book-translate-macos-x86_64" => "agent-book-translate"
      end
    elsif OS.linux?
      bin.install "agent-book-translate-linux-x86_64" => "agent-book-translate"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-book-translate --version")
  end
end
