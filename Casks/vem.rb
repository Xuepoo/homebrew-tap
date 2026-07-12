cask "vem" do
  version "0.1.2"

  on_arm do
    sha256 "ef31a985f6a512e91998b3a3b73bdcf6a734c48691ff07baea8fc0591572dd15"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.2/Vem_0.1.2_aarch64.dmg"
  end
  on_intel do
    sha256 "b329cd74572af2907fe06ad9ba1e96f7f57380efa4e1be9d32e61deb74056b28"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.2/Vem_0.1.2_x64.dmg"
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
