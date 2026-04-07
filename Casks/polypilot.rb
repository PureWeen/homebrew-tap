cask "polypilot" do
  version "1.0.19"
  sha256 "4e7a1fd88e11ad5f647b61a95e89d59440d5325abe39e2d2cf0306a481ed9c90"

  url "https://github.com/PureWeen/PolyPilot/releases/download/v#{version}/PolyPilot.zip"
  name "PolyPilot"
  desc "Multi-session GitHub Copilot client built with .NET MAUI"
  homepage "https://github.com/PureWeen/PolyPilot"

  # Requires macOS 14+ (Sonoma) for Mac Catalyst support
  depends_on macos: ">= :sonoma"

  app "PolyPilot.app"

  caveats <<~EOS
    PolyPilot requires the GitHub Copilot CLI (`copilot`) on your PATH.
    If you don't have it, install with one of:
      brew install --cask copilot-cli
      npm install -g @github/copilot
  EOS

  zap trash: [
    "~/.polypilot",
  ]
end
