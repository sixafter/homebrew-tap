# homebrew-tap [![Powered By: GoReleaser](https://img.shields.io/badge/powered%20by-goreleaser-green.svg?style=flat-square)](https://github.com/goreleaser)

## Overview

This tap provides both **Homebrew Formulae** and **Casks** for installing the `nanoid` CLI across multiple platforms and architectures.

---

## 🍺 Cask (Preferred)

> A single `nanoid` cask dynamically installs the correct binary for your system (macOS or Linux, Intel or ARM64).

Install via cask:

```bash
brew tap sixafter/tap
brew install --cask nanoid
```

### ✅ Supported Platforms

- **macOS**
  - `arm64` (Apple Silicon)
  - `amd64` (Intel)
- **Linux**
  - `arm64`
  - `amd64`

> 🔐 **Note for macOS users**: If you see a `killed` error when running `nanoid`, macOS may have quarantined the binary due to it being unsigned or unnotarized. To resolve:
>
> ```bash
> sudo xattr -d com.apple.quarantine /opt/homebrew/bin/nanoid
> ```

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
