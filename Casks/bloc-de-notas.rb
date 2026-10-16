cask "bloc-de-notas" do
  version "1.2.1"
  sha256 "0362289657bad45d56b7bad1fee2aaf7253d21ac2697ac86c0fddc7c0b2dc9f0"

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
