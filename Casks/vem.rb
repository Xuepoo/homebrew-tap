cask "vem" do
  version "0.1.9"

  on_arm do
    sha256 "256ade8ee73c4c4bee4350382e5909e979be39782d3b15f3cf9018d931ae81ae"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.9/Vem_0.1.9_aarch64.dmg"
  end
  on_intel do
    sha256 "548aac46099a661d38469618ba3d18bef634885cb636583ad3c1e00b1f05822d"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.9/Vem_0.1.9_x64.dmg"
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
