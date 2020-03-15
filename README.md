# pre-commit hooks for .NET Core

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Release](https://img.shields.io/github/release/KuriharaJun/pre-commit-hooks-dotnet-core.svg)](https://github.com/KuriharaJun/pre-commit-hooks-dotnet-core/releases/latest)

pre-commit-hooks for .NET Core is pre-commit hooks for protecting beauty code.

These hooks are required `dotnet` and `dotnet-format`.

## Using pre-commit-hooks-dotnet-core

Add this to your `.pre-commit-config.yaml`

```
-   repo: https://github.com/KuriharaJun/pre-commit-hooks-dotnet-core
    rev: feature-add-test
    hooks:
    -   id: dotnet-format
    -   id: dotnet-test
        args: ["Your project or Solution file path"]
```

## Hooks available

### `dotnet-format`

Format C# code and vb code. Using `dotnet format command`.
This hook is required [dotnet-format](https://github.com/dotnet/format)

### `dotnet-test`

Execute `dotnet test` for protecting test failed.

- `-p`

    **Required argument**
    Target test project or solution file path.

## License

- [MIT License](LICENSE)