# yurifrl/casks

Custom Homebrew casks for personal use. These are applications that are not available in the official `homebrew/cask` repository.

## Installation

### Add Tap

```bash
brew tap yurifrl/casks
```

### Install Casks

```bash
brew install --cask yurifrl-amphetamine-power-protect
brew install --cask yurifrl-obsbot-center
brew install --cask yurifrl-toggle-mute
brew install --cask yurifrl-alt-tab          # pinned to the latest tagged release
brew install --cask yurifrl-alt-tab@latest   # always the newest GitHub release
```

### Using Brewfile

Add to your `Brewfile`:

```ruby
tap "yurifrl/casks"
cask "yurifrl-amphetamine-power-protect"
cask "yurifrl-obsbot-center"
cask "yurifrl-toggle-mute"
cask "yurifrl-alt-tab"
```

Then run:

```bash
brew bundle
```

## Available Casks

### yurifrl-amphetamine-power-protect

Plugin that prevents Mac from sleeping while on power. Requires Amphetamine from the Mac App Store.

- **Homepage:** https://github.com/x74353/Amphetamine-Power-Protect
- **Installation:** Manual - open the DMG and follow instructions

### yurifrl-obsbot-center

Control center for Obsbot webcams. Automatically fetches the latest version from OBSBOT's CDN.

- **Homepage:** https://www.obsbot.com/

### yurifrl-toggle-mute

Menu bar app to mute/unmute the default microphone. Versioned releases, notarized DMG.

- **Homepage:** https://github.com/yurifrl/toggleMute

### yurifrl-alt-tab / yurifrl-alt-tab@latest

Keyboard-driven window switcher. Signed and notarized DMG. `yurifrl-alt-tab` is pinned to a version (bumped automatically on each release); `yurifrl-alt-tab@latest` is unversioned and always installs the newest GitHub release (refresh with `brew upgrade --cask --greedy yurifrl-alt-tab@latest`). The two conflict, install only one.

- **Homepage:** https://github.com/yurifrl/alt-tab

## Development

This tap follows Homebrew's standard structure:

```
yurifrl/homebrew-casks/
├── Casks/
│   ├── yurifrl-amphetamine-power-protect.rb
│   └── yurifrl-obsbot-center.rb
└── README.md
```

## Contributing

These are personal casks. If you find issues or have suggestions, feel free to open an issue.

## License

The cask definitions in this repository are provided as-is. Each application has its own license - please refer to the application's homepage for details.
