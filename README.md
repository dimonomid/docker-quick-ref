# Docker: Printable Quick Reference (Cheat Sheet)

I use [Docker](http://docker.com), but not often enough to memorize even basic
Dockerfile instructions and CLI commands. After all I got so annoyed by
being unable to quickly sketch some Dockerfile or to do something with the
existing containers occasionally, so I decided to write a concise cheat sheet
which I can print once and constantly keep on my desktop:

[![](http://dmitryfrank.com/_media/projects/docker_quick_ref_icon.png)](https://github.com/dimonomid/docker-quick-ref/releases/download/latest/docker-quick-ref.pdf)

*(click the thumbnail to download pdf)*

The appearance of the card is largely inspired by the [GDB Quick
Reference](http://www.cs.nyu.edu/courses/spring07/V22.0474-001/misc/gdb-refcard.pdf),
since I was using it for a long time already, and it was a very pleasant
experience. It is clear and concise. Personally, I just print it on both sides
of a single A4 sheet.

The card is written in LaTeX. Not everything was smooth. Probably that's
because my LaTeX-fu is too weak, but in my opinion, LaTeX shines best for the
cases when the user believes that LaTeX knows better. This was not the case
here, since I had to pack lots of stuff in two pages, and I had to fight with
LaTeX a lot, rather than embracing it. If anyone knows how to structure the
document better, your comments / PRs are appreciated.

## Build

You need docker. Once you have it, just type in your terminal, from the
repository:

```bash
$ make my-pdflatex-docker # needs to be done once, to build a docker image
$ make
```

And check out the `build/docker-quick-ref.pdf` file.

## License

MIT
