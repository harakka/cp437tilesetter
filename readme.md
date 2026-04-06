# cp437tilesetter

## Overview

A tool to generate font-based fallback tilesets for [Cataclysm: Dark Days Ahead](https://github.com/CleverRaven/Cataclysm-DDA/).

## Prerequisites

`imagemagick` (specifically the `convert` binary), `bash`-compatible shell and a font file.

## Usage

```sh
./generate.sh Terminus.ttf 16 fallback.png
```

Font size will default to 16 and output file to `fallback.png`, so you can also do:

```sh
./generate.sh Terminus.ttf
```

## Example

There's an example overmap tileset, [terminus_overmap](example/terminus_overmap). This was generated from the [Terminus TTF font](https://files.ax86.net/terminus-ttf/) at size 16.

## License

This work is licensed under [MIT License](LICENSE). Additionally, the repository contains rendering of the Terminus TTF font, which is licensed under [SIL Open Font License Version 1.1](example/terminus_overmap/COPYING).
