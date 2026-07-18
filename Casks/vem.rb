cask "vem" do
  version "0.1.11"

  on_arm do
    sha256 "ab3273f2fa82f81c9f0d7c4a27170092a7c20b7e047314cf6cd958a3d6ad1699"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.11/Vem_0.1.11_aarch64.dmg"
  end
  on_intel do
    sha256 "2247c5a4839712cf3f21fb6dbc60b6539521328c3a10030e2d10582939ead0da"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.11/Vem_0.1.11_x64.dmg"
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
