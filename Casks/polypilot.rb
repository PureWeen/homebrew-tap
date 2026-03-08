cask "polypilot" do
  version "1.0.9"
  sha256 "9c3b377368f5fc49eb8b840d2d392da342c757f617f449366ff6c9381cdb7457"

  url "https://github.com/PureWeen/PolyPilot/releases/download/v#{version}/PolyPilot.zip"
  name "PolyPilot"
  desc "Multi-session GitHub Copilot client built with .NET MAUI"
  homepage "https://github.com/PureWeen/PolyPilot"

  # Requires macOS 14+ (Sonoma) for Mac Catalyst support
  depends_on macos: ">= :sonoma"
  depends_on cask: "copilot-cli"

  app "PolyPilot.app"

  zap trash: [
    "~/.polypilot",
  ]
end
