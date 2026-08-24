# perf_usage Homebrew tap

Install the cask directly:

```bash
brew install --cask nikhi1g/homebrew-tap/perfusage
open -a PerfUsage
```

The cask downloads the versioned GitHub Release artifact from
`perfusagepublic`. Release automation updates the version and checksum after
signed, notarized releases are published.

The current cask is a test-channel artifact. The production release workflow
publishes Gatekeeper-clean artifacts after Developer ID and notarization
credentials are configured.
