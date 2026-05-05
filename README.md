# mickmill54/homebrew-tap

[Homebrew tap](https://docs.brew.sh/Taps) hosting macOS-arm64 (Apple
Silicon) binaries for tools published from
[github.com/mickmill54](https://github.com/mickmill54).

## Available formulae

| Formula | Description | Source |
|---|---|---|
| [`dedupe`](Formula/dedupe.rb) | Find and quarantine duplicate image files for slideshow curation | [`mickmill54/image-deduper`](https://github.com/mickmill54/image-deduper) |

## Usage

One-liner install (no explicit `tap` step needed):

```bash
brew install mickmill54/tap/dedupe
```

Or, tap once and then refer to formulae by short name:

```bash
brew tap mickmill54/tap
brew install dedupe
brew upgrade dedupe   # later, when a new release lands
```

## Notes

- All formulae here are **macOS arm64 only** (Apple Silicon). The upstream
  projects don't yet ship Intel macOS, Linux, or Windows binaries.
- Each formula pins a specific GitHub release asset and its SHA-256, so
  `brew install` is reproducible per formula version.
- After a new release of the upstream project, the formula is bumped by
  updating `version`, `url`, and `sha256`.
