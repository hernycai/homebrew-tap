cask "bloc-de-notas" do
  version "1.2.0"
  sha256 "af3a70edd5310acfa332733c7daadfcca392854c0afc09c20c15974b46ea6ae6"

  url "https://github.com/hernycai/bloc-de-notas-macos/releases/download/v#{version}/Bloc.de.notas.dmg"
  name "Bloc de notas"
  desc "Clon nativo del Bloc de notas de Windows para macOS"
  homepage "https://github.com/hernycai/bloc-de-notas-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Bloc de notas.app"

  zap trash: "~/Library/Preferences/com.hernycai.blocdenotas.plist"
end
