# homebrew-tap [![Powered By: GoReleaser](https://img.shields.io/badge/powered%20by-goreleaser-green.svg?style=flat-square)](https://github.com/goreleaser)

## Overview

This tap provides both **Homebrew Formulae** and **Casks** for installing the `nanoid` CLI across various platforms and architectures.

---

## 🧪 Formulas (Deprecated)

> ⚠️ **The formula is currently maintained for backward compatibility but will be deprecated in favor of platform-specific casks.** See [brews](https://goreleaser.com/deprecations#brews) for more details.
> Users are encouraged to use the appropriate cask based on their operating system and CPU architecture.

Available formula:

- [**`Nano ID CLI`**](Formula/nanoid.rb) — A simple, fast, and concurrent command-line tool for generating secure, URL-friendly unique string IDs using the [NanoID](https://github.com/sixafter/nanoid-cli) Go implementation.

Install via formula:

```bash
brew tap sixafter/tap
brew install nanoid
```

---

## 🍺 Casks (Preferred)

Platform-specific casks are now the preferred installation method:

| Cask Name                | Platform         | Architecture |
|--------------------------|------------------|--------------|
| `nanoid-darwin-arm64`    | macOS            | arm64        |
| `nanoid-darwin-amd64`    | macOS            | amd64 (Intel)|
| `nanoid-linux-arm64`     | Linux            | arm64        |
| `nanoid-linux-amd64`     | Linux            | amd64        |

Install via cask (example for macOS ARM64):

```bash
brew tap sixafter/tap
brew install --cask nanoid-darwin-arm64
```

---

## 🔧 Notes

- If you're using an Apple M-series Mac, prefer `nanoid-darwin-arm64`.
- For Intel-based Macs, use `nanoid-darwin-amd64`.
- On Linux systems, choose the appropriate `nanoid-linux-*` variant.
- The CLI binary is architecture-optimized and signed.

---

## 📦 Releases

All binaries are built and published via [GoReleaser](https://goreleaser.com).
