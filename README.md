# dweekly/homebrew-tap

Personal Homebrew tap for [David E. Weekly](https://github.com/dweekly)'s projects.

## Formulae

### tailscale-swift

Swift CLI for inspecting a local Tailscale daemon, built on
[swift-tailscale-client](https://github.com/dweekly/swift-tailscale-client).
Unofficial — not affiliated with or endorsed by Tailscale Inc.

```bash
brew tap dweekly/tap
brew install tailscale-swift
```

The formula builds the `tailscale-swift` executable from the release source
tarball (requires Xcode). Try it out:

```bash
tailscale-swift status
tailscale-swift netcheck
tailscale-swift watch --json
```

Maintainer notes (per-release bump procedure) live in the main repository's
[`Documentation/HOMEBREW.md`](https://github.com/dweekly/swift-tailscale-client/blob/main/Documentation/HOMEBREW.md).
