# PureWeen Homebrew Tap

Homebrew formulae and casks for [PolyPilot](https://github.com/PureWeen/PolyPilot) — a multi-session GitHub Copilot client.

## Install

```bash
brew tap PureWeen/tap
```

### PolyPilot (Mac Catalyst GUI app)

```bash
brew install --cask polypilot
```

Installs the notarized PolyPilot.app to `/Applications`.

### PolyPilot Console (CLI)

```bash
brew install polypilot-console
```

Installs the cross-platform console CLI for managing Copilot sessions from the terminal.

## Updating

```bash
brew update
brew upgrade --cask polypilot
brew upgrade polypilot-console
```

## Available Packages

| Package | Type | Description |
|---------|------|-------------|
| `polypilot` | Cask | Mac Catalyst GUI app (macOS 14+) |
| `polypilot-console` | Formula | Cross-platform CLI for Copilot sessions |
