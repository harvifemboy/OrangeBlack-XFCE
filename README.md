# OrangeBlack Xfce, a theme inspired by a certain Hub, made specially for my beloved boyfriend Harvi

OrangeBlack is a deliberately severe Xfce desktop theme built around exactly two colors:

- Orange: `#FFA500`
- Black: `#000000`

No gradients, translucency, color blending, shadows, alternate grays, off-whites, or secondary accent colors are used by the theme assets.

## Included

`gtk-2.0` provides legacy GTK2 styling.

`gtk-3.0` provides the main GTK3 styling used by Xfce applications such as Thunar.

`gtk-4.0` provides matching GTK4 styling for applications that use GTK4.

`xfwm4` provides the window borders, title bars, corners, and window buttons.

`xfce-notify-4.0` provides Xfce NotifyD styling.

`index.theme` identifies the theme suite to Xfce and GTK theme selectors.

## Installation

Run:

```sh
sh install.sh
```

The installer copies the theme to:

```text
~/.local/share/themes/OrangeBlack
```

When `xfconf-query` is available, the installer also selects OrangeBlack for GTK, enables Xfce theme synchronisation, selects the matching Xfwm4 theme, and selects the Xfce NotifyD theme.

Xfce supports personal themes under `~/.local/share/themes` and `~/.themes`. Xfwm4 uses the `xfwm4` subdirectory inside the theme directory.

## Manual selection

Open Settings Manager → Appearance and select `OrangeBlack`.

Open Settings Manager → Window Manager and select `OrangeBlack` when theme synchronization is disabled.

Open Settings Manager → Notifications and select `OrangeBlack` when Xfce NotifyD is installed.

## Thunar

Thunar's GTK3 interface is styled through the GTK theme CSS, so the same GTK3 rules apply to Thunar without a Thunar-specific theme directory. Xfce documents GTK3 CSS as the supported way to customize graphical elements in GTK3-based Thunar versions.

## Panel and other Xfce applications

The GTK rules cover GTK-based Xfce applications and widgets, including the Xfce panel and its GTK controls. The theme does not replace application-specific icons, file-type icons, or third-party application artwork.

## Icons

OrangeBlack intentionally does not select or replace the system icon theme. A complete replacement icon set would be a separate collection of thousands of application and MIME icons, and blindly selecting a partial two-color icon set would cause missing icons to fall back to another icon theme, defeating the strict two-color goal.

## Uninstallation

Run:

```sh
sh uninstall.sh
```

## Repository layout

```text
OrangeBlack-XFCE/
├── OrangeBlack/
│   ├── gtk-2.0/
│   ├── gtk-3.0/
│   ├── gtk-4.0/
│   ├── xfce-notify-4.0/
│   ├── xfwm4/
│   └── index.theme
├── install.sh
├── uninstall.sh
└── README.md
```

## Color verification

The repository is intended to contain only `#FFA500` and `#000000` as explicit color values. The Xfwm4 PNG assets are also generated using only those two RGB colors.

## License

This project is distributed under the MIT License.
