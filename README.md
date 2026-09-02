# homebrew-tap

Homebrew tap for [blvp](https://github.com/blvp)'s tools.

## Install

```sh
brew tap blvp/tap
```

## Formulae

| Formula | Description | Status |
|---------|-------------|--------|
| `json-ls` | JSON Language Server — schema-driven diagnostics, hover, and completion | **Deprecated** |

### json-ls — deprecated

> [!WARNING]
> `json-ls` is **deprecated as of 2026-09-02** and will be removed from this tap.
> The [upstream repository](https://github.com/blvp/json-ls) is archived; `v0.1.1` is its
> final release.

Use **`vscode-json-language-server`** instead — the JSON server extracted from VS Code
([`vscode-langservers-extracted`](https://github.com/hrsh7th/vscode-langservers-extracted),
upstream [`microsoft/vscode-json-languageservice`](https://github.com/microsoft/vscode-json-languageservice)).
It is faster and far more featureful: SchemaStore catalog matching, JSONC, formatting,
folding ranges, document symbols, and selection ranges.

```sh
npm i -g vscode-langservers-extracted    # or :MasonInstall json-lsp in Neovim
```

If you have `json-ls` installed, remove it:

```sh
brew uninstall json-ls
```
