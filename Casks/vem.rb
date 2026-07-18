cask "vem" do
  version "0.1.12"

  on_arm do
    sha256 "03c6e61eb87b269b2046864fb7d52efe831eb8c07c5a8d5cec4dedce1eb15309"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.12/Vem_0.1.12_aarch64.dmg"
  end
  on_intel do
    sha256 "2a4200f8ba3d646f4cef459ae279426423f2012a7c7e3b53f2c051e50798505e"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.12/Vem_0.1.12_x64.dmg"
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
