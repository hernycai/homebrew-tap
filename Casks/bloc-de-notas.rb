cask "bloc-de-notas" do
  version "1.2.2"
  sha256 "5821eed4b582b83b3c65478b92912e5886515c659b4ae131c5de5201934eee93"

  url "https://github.com/hernycai/bloc-de-notas-macos/releases/download/v#{version}/Bloc.de.notas.dmg"
  name "Bloc de notas"
  desc "Clon nativo del clasico Bloc de notas de Windows"
  homepage "https://github.com/hernycai/bloc-de-notas-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Bloc de notas.app"

  zap trash: "~/Library/Preferences/com.hernycai.blocdenotas.plist"
end
