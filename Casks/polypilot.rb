cask "polypilot" do
  version "1.0.20"
  sha256 "989a68d957f6f1780991a087143ebb52b52c66fa381aa550ed56e3246739798a"

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
