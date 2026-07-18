cask "vem" do
  version "0.1.14"

  on_arm do
    sha256 "3f4045f43052b47d2bc18e96071814cbf3195baefe4aa902b9f13d228228132c"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.14/Vem_0.1.14_aarch64.dmg"
  end
  on_intel do
    sha256 "58c8324375bf730447c460d27ff258cc401208432708d089037d3ad46bcaa7a4"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.14/Vem_0.1.14_x64.dmg"
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
