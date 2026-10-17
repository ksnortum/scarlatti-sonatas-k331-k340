# scarlatti-sonatas-k331-k340

[LilyPond](https://lilypond.org/) engraving input files used to create Scarlatti's sonatas K331 through K340.

## Downloading the sheet music

If you're only interested in the PDFs and/or MIDI files, you can [download them](https://github.com/ksnortum/scarlatti-sonatas-k331-k340/releases/latest) from the latest release. If you're interested in modifying and/or compiling the sheet music using LilyPond, then read the next section.

## Creating the PDF and MIDI files

(I highly recommend the [Frescobaldi](https://github.com/frescobaldi/frescobaldi) IDE for [editing and compiling LilyPond sheet music](https://lilypond.org/doc/v2.26/Documentation/learning/graphical-setup). It makes all the following much easier.)

PDF and MIDI files can be created by compiling an `ly` file with LilyPond, that is, for instance, issuing the following command (assuming you have [`lilypond` installed  and running](https://lilypond.org/doc/v2.26/Documentation/learning/installing) on your system):

```sh
lilypond sonata-k331.ly
```

To create a smaller PDF:

```sh
lilypond -dno-point-and-click sonata-k331.ly
```

### Two-sided printing

The pieces are set up so that they can be printed on two sides of the paper, leaving an extra margin amount on the inside pages for binding. If you don't want this, open the file `globals.ily`, find the `\paper` block (near the top) and set `two-sided = ##f`.

### Bar numbering

If you don't want to print bar numbers over the first measure of every system, open the file `globals.ily` and uncomment (remove the `%`) from the line `\omit BarNumber`.

## Thanks

Thanks to the folks at the [LilyPond user's mailing list](https://lilypond.org/doc/v2.26/Documentation/web/contact) for all the help getting LilyPond to do what I wanted.

## License

Copyright © 2026 by [Knute Snortum](https://github.com/ksnortum/), licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)![cc](https://mirrors.creativecommons.org/presskit/icons/cc.svg)![by](https://mirrors.creativecommons.org/presskit/icons/by.svg)![sa](https://mirrors.creativecommons.org/presskit/icons/sa.svg)

If you use this work, please attribute it to Knute Snortum (<https://github.com/ksnortum/>).
