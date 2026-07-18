cask "vem" do
  version "0.1.13"

  on_arm do
    sha256 "90b4238adcfda966af4d9661c85a813352267e6871b5e75b34a4ac933e0df10b"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.13/Vem_0.1.13_aarch64.dmg"
  end
  on_intel do
    sha256 "ad83e175f1ac160a138617fe645600bf5869cb1dfe6d761e7adf9fb6987112d2"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.13/Vem_0.1.13_x64.dmg"
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
