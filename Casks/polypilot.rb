cask "polypilot" do
  version "1.0.13"
  sha256 "57c480351c421cda917a22f4e23cdf65b6fac9cc50c0c5bf5cff02f2263d6f55"

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
