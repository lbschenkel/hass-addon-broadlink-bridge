# Broadlink bridge add-on for Home Assistant

This is the [Broadlink bridge](https://github.com/lbschenkel/broadlink-bridge) packaged as an (unofficial) add-on for Home Assistant.

## Installation

1. Add this repository to your [Hass.io](https://home-assistant.io/hassio/) instance:
 `https://github.com/lbschenkel/hass-addon-broadlink-bridge`
2. Install the "Broadlink bridge" add-on

## Configuration

The Broadlink bridge is optionally configured via its own [configuration file](https://github.com/lbschenkel/broadlink-bridge#configuration).
The option `config_file` can refer to a configuration file saved in Home Assistant configuration directory like this:

```json
{
  "config_file": "/config/broadlink-bridge.ini"
}
```

Note that the default LIRC port of `8765` conflicts with the
[motionEye](https://github.com/hassio-addons/addon-motioneye) add-on.

## Usage in Home Assistant

Examples are provided in the [bridge's own README](https://github.com/lbschenkel/broadlink-bridge#usage-in-home-assistant).
