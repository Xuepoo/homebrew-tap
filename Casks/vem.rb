cask "vem" do
  version "0.1.19"

  on_arm do
    sha256 "44bb253bf046096f69597d8f7486e6ac1ff403bb99153d5501cd7573208045b5"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.19/Vem_0.1.19_aarch64.dmg"
  end
  on_intel do
    sha256 "6dd78e299287650f49a934c171b800d3171aef138542acc142536bea43278619"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.19/Vem_0.1.19_x64.dmg"
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
