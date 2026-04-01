cask "polypilot" do
  version "1.0.17"
  sha256 "0fc600fa983558be8f35f3b5631ec1ab35dae683e9049cef5817991ee20d3389"

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
