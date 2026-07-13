cask "vem" do
  version "0.1.4"

  on_arm do
    sha256 "8b75135d43c2f84159c57a0f1fe1abb529f70233fa668567e5a529fff76e4e2d"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.4/Vem_0.1.4_aarch64.dmg"
  end
  on_intel do
    sha256 "02c7c0b625cb4dd57c376d9365772c5c0d6368b20c45c112cc6a266a7eef02a1"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.4/Vem_0.1.4_x64.dmg"
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
