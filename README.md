# homebrew-tap [![Powered By: GoReleaser](https://img.shields.io/badge/powered%20by-goreleaser-green.svg?style=flat-square)](https://github.com/goreleaser)

## Overview

This tap provides both **Homebrew Formulae** and **Casks** for installing the `nanoid` CLI across multiple platforms and architectures.

---

## 🍺 Cask (Preferred)

> ✅ A single `nanoid` cask dynamically installs the correct binary for your system (macOS or Linux, Intel or ARM64).

Install via cask:

```bash
brew tap sixafter/tap
brew install --cask nanoid
```

Supported platforms:

| Platform | Architecture | Supported |
|----------|--------------|-----------|
| macOS    | arm64        | ✅        |
| macOS    | amd64 (Intel)| ✅        |
| Linux    | arm64        | ✅        |
| Linux    | amd64        | ✅        |

---

## 🧪 Formula (Deprecated)

> ⚠️ The formula is maintained only for compatibility with older workflows. Prefer the `nanoid` cask.

Available formula:

- [**`nanoid` Formula**](Formula/nanoid.rb)

Install via formula:

```bash
brew tap sixafter/tap
brew install nanoid
```

---

## 📦 Releases

All binaries are built and published using [GoReleaser](https://goreleaser.com), and signed with [Cosign](https://github.com/sigstore/cosign).
