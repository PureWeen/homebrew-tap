cask "polypilot" do
  version "1.0.14"
  sha256 "e0e972de92f98fe0931d227fa7526805550a95d6cd7f3610d294db99467f81e7"

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
