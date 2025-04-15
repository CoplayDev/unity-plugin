# Ripgrep Integration for Coplay

This directory contains the [ripgrep](https://github.com/BurntSushi/ripgrep) binaries used by the Coplay plugin for fast and efficient file searching. Ripgrep is a line-oriented search tool that recursively searches directories for a regex pattern.

## Structure

The binaries are organized by platform:

- `Windows/` - Contains ripgrep binaries for Windows
- `macOS/` - Contains ripgrep binaries for macOS (both Intel and Apple Silicon)
- `Linux/` - Contains ripgrep binaries for Linux

## How It Works

The Coplay plugin automatically selects the appropriate ripgrep binary based on your operating system and architecture. When you use the `SearchFiles` function, it will:

1. Determine your platform (Windows, macOS, or Linux)
2. For macOS, detect if you're using Apple Silicon or Intel
3. Use the appropriate ripgrep binary
4. Set executable permissions if needed (on macOS and Linux)
5. Execute the search with optimized parameters
6. Parse the results to match the expected format

## Benefits of Using Ripgrep

- **Speed**: Ripgrep is significantly faster than traditional file searching methods
- **Smart Searching**: Automatically respects .gitignore files and skips binary files
- **Efficient Memory Usage**: Designed to be memory efficient even with large codebases
- **Cross-Platform**: Works consistently across Windows, macOS, and Linux

## Ripgrep Version

The included ripgrep binaries are version 14.1.1.

## License

Ripgrep is licensed under the MIT License or the UNLICENSE, at your option.
See the LICENSE-MIT and UNLICENSE files in each ripgrep directory for details.

## Credits

Ripgrep is created and maintained by Andrew Gallant (BurntSushi).
GitHub Repository: https://github.com/BurntSushi/ripgrep
