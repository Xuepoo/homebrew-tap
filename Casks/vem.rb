cask "vem" do
  version "0.1.21"

  on_arm do
    sha256 "ee00c6543b7d394f5fdf865611f78e7bb54fb51a4a16f84bb48b708a7b83077e"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.21/Vem_0.1.21_aarch64.dmg"
  end
  on_intel do
    sha256 "10859772266792762592160642d21d49d176a4c72179813d47fc2949390125df"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.21/Vem_0.1.21_x64.dmg"
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
