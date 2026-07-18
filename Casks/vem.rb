cask "vem" do
  version "0.1.17"

  on_arm do
    sha256 "c672e7d2524072b4d30643901c4c40ef951c0f779e59aa27110f73d593559a89"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.17/Vem_0.1.17_aarch64.dmg"
  end
  on_intel do
    sha256 "d47ff8df077bfb8104be37accbd13cbc65b2a6a3f5f7112552b5431febde634c"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.17/Vem_0.1.17_x64.dmg"
  end

  name "Vem"
  desc "A next-generation Vim editor powered by VectoJS, running natively via Tauri"
  homepage "https://vem.run"

  app "Vem.app"

  zap trash: [
    "~/Library/Application Support/run.vem.desktop",
    "~/Library/WebKit/run.vem.desktop",
    "~/Library/Saved Application State/run.vem.desktop.savedState",
  ]
end
