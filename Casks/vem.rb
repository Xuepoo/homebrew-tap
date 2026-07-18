cask "vem" do
  version "0.1.20"

  on_arm do
    sha256 "8784b799435318326f36ccdca12d291d097712a3f0956c1862820d54aadcdb65"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.20/Vem_0.1.20_aarch64.dmg"
  end
  on_intel do
    sha256 "f896f5049313aee18e3c156cd48bbcf26f74187fcbd94967fcf7569eb455b88e"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.20/Vem_0.1.20_x64.dmg"
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
