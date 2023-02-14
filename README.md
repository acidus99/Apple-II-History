# Apple II History (Markdown Export)

Markdown versions of Steven Weyhrich's Apple II History Project text files with updated, properly licensed images.

If you want to support Steven's work, he expanded his Apple II History content significantly in the early 2010's and turn it into the book: *Sophistication & Simplicity: The Life and Times of the Apple II Computer*, which is available from [Amazon](https://www.amazon.com/Sophistication-Simplicity-Times-Apple-Computer/dp/0986832278/) and other bookstores.

## Why this project exists

I am a big fan of Steven Weyhrich's history of the Apple II, written in the 1990's over *23* different text files! Over the years, Steven edited the files, added some content, ported them to HTML, and added some (by modern standards) low quality images. These versions are scattered around the web, in various states for completeness, and slowly succumbing bit rot.

The versions that do exist have many issues:
* Originally the files were just text, with minimal formatting, and ASCII art which doesn't render properly due to charsets.
* Many versions of the TXT files have hard newlines to keep lines below 40 characters or 80 characters.
* Part 15 was missing entirely from places like Textfiles.com
* Weird and inconsistent indenting, spacing.
* Images were added later, resulting in footnotes that are out of order
* Some images don't have footnotes
* Images are of low quality/low resolution typical of late 1990's
* Images come from unknown sources, with unknown usage rights, and reference URLs which no longer exists
* Missing properly formatted metadata

I wanted to clean this content up and make it available to [Gemini Space](https://en.wikipedia.org/wiki/Gemini_(protocol)). Luckily [an early 2000's web version](https://www.duxburysystems.org/downloads/library/texas/apple/history/history/ah01.html) is licensed under a Creative Commons License.

## What I've done:

* Collect the latest version of each file that is still properly licensed in HTML, TXT, and PDF (see [Sources](tree/main/sources))
* Converted content to Markdown
* Added [YAML FrontMatter](https://stackoverflow.com/questions/44215896/markdown-metadata-format) metadata to each post with the update date and version.
* Fixed typos and errors
* Renumbered the footnotes
* Replaced images with higher resolution images from properly licensed sources (Wikimedia Commons, Internet Archive, etc.)

## Sources

* [Duxbury Systems mirror](https://www.duxburysystems.org/downloads/library/texas/apple/history/history/ah01.html) - Updated versions of all chapters hosted on Duxbury Systems mirror, released on Creative Commons Non Commercial license
* [TextFiles.com](http://www.textfiles.com/apple/) - Collection of original TXT files that traded on BBSes. 
* [Wikipedia/ Wikimedia Commons](https://commons.wikimedia.org/wiki/Main_Page) - Higher resolution and properly licensed images
* [Internet Archive](https://archive.org/search?query=apple+ii&and%5B%5D=mediatype%3A%22texts%22) - Scanned PDFs of Apple technical documents, manuals, and Apple II print magazines.
* [Apple II Documentation Project](https://mirrors.apple2.org.za/Apple%20II%20Documentation%20Project/) - Higher resolution and properly licensed images

## Gemini Mirror:

Gemtext versions of these posts are available on my Gemini Capsule: [gemini://gemi.dev/apple-ii-history/](gemini://gemi.dev/apple-ii-history/)
