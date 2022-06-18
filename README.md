# mkdrumkit - the drumkit file maker

Say you have WAV files containing individual sounds (kick, snare, hi-hats). Importing them one by one in something like [Koala](https://www.koalasampler.com/), is dedious, slow, and boring.

This small utility is designed to generate random combinations to play on pads.

You define the layout you want for your pads. Say the usual 4x4 grid:

| | | | |
| - | - | - | - |
| kick | kick | kick | kick |
| snare | snare | clap | clap |
| hi-hat | hi-hat | open-hat | cymbal |
| shakers | shakers | bass | chord |

Then feed it a root directory containing sub-directories for each sound:

```
ROOT
  kick
    kick1.wav
    kick2.wav
  snare
    funkysnare.wav
  hi-hat
    ...
```

It will create random combinations for each type of sound. Then, concat each audio files into a single audio file. Each one seperated by a silence, making it super easy to auto-chop in Koala, and such.

## Usage

1. Create a `.json` config file under `kit/`. See other ones for examples.
2. Run `./mkdrumkit kits/YOUR_FILE.json`. Follow errors on screen to tweak the layout in `.json`.
3. Once done, it will open `kit/` with the `kits/YOUR_FILE.wav` containing the drumkit.
4. AirDrop the `.wav` file to Koala (or other).
5. Auto-chop (premium feature in Koala) using silences as markers.
6. Make some beats!

## Known bugs

If you're using a different codec then `pcm_s24le`, you'll need to generate a new `silence.wav`. See `Makefile` for this.
