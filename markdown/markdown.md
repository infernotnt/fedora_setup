
# Markdown

This document is based on https://www.youtube.com/watch?v=3NiBr3j-vMw&t=1760s
Good website: https://www.markdownguide.org/basic-syntax/

The basic principle is that you use the most basic form of markdown for everything. This is done for comptability, and long-term sustainability.

The list goes like, from least to most complex:
1. Basic markdown
1. Github flavored markdown
1. Pandoc markdown

# adf adsf

## aldsjflajsdlfk  lakjdsf

### who the fuck are you tell what I should do, eeeh? askdlfj

# Okay so that was it i think, i think now we can move on

A list:
* N1
* N2
* Niiggger
* Nigger

End of the list.
Now we begin a new one.
1. k
1. fagoot
1. fk u niggerfaggot

## paragraps

*Aldlkjasad* lfjasldfj skdljf sdjf *single* noalskdf sdf. End.





## Formatting pocinje:------------------------------------------------------------------------------------------------------

### IMPORTANT: USE ONLY STARS, DOOON'T USE _ because you want to search for bolded words, and you don't want to mix them up with _ in your names, titles and other stuff. * won't be confused for unnumbered lists when searching, as you will see


One star for italics:

```markdown
one star for *italics*
```

Two stars for bold:

```markdown
two stars for **bold**
```

Three stars for bold italics:

```markdown
thre stars for ***bold italics***
```


Backticks for code also known as monospaced:

```markdown
backticks for `monospaced`
```



## Escaping

Escaping works as usual. \ to escape. For example: \$

## Headings

```markdown
#Level one
Paragraphs and such here
##Level two
Paragraps and such here
```

Formatting is allowed in headings but can be problematic with some renderers. Avoid if you can.

Generally you should never have more than one first level heading (# Heading one) because search engines prioritize it. When using pandoc you will not even need a level one heading because the Title is better placed in the meta-data property instead and rendered with the Pandoc Template.



# Links/ Hyperlinks

Hyperlinks (stuff you click on) come in three basic forms

1. words
1. URL-s
1. Imagess

### Hyperlinked words

The most common link in Markdown is just words you can click on that take you to [local](#top) places or [external sites](https://pornhub.com). The web adress must be either pointing to a remote site or so something on the same that document is on.

### Autolinked URLs

Sometimes you want to show the full web adress. NEVER OMMIT ANGLE BRACKETS.

```markdown
Here is URL to <https://www.pornhub.com> that will apear in full.
```

## Images

Images are just links with an exclamation point in front. Make sure to put a blank line before and after any image for maximum compability. Inline images are not widely supported and mess up other formatting in almost all cases.

Evo je: [mrrrrs](/home/milos/Pictures/wallpaper/wallpaper)

```
![watever](/home/milos/Pictures/wallpaper/wallpaper)
```

Image with a link link. Not imporant. Skip
[![gnome](/home/milos/Pictures/wallpaper/wallpaper)](https://rwxrob.live)

note: don't put html in markdown/notes, cause stuff

## Lists

Use stars followed by spaces for unnumbered lists

* el1
  * dva
    * tri
  * tri

* el 2
  * dva
* ellll3

Numbered lists: use 1. followed by space

1. prvi
1. drugi
1. treci
1. cet



## Seperators

Also called "horizontal rule. These just break up the page usually with a horizontal line.

Note: best way to do this is 4 dashes (----) (because of long term stability). Don't use 3 dashes, that's for yaml. If you find a better idea and you know it's better, use that instead of the dashes, because they are not that unique.

```markdown
----
```

Here comes an example of a seperator.

----


## Hard returns | TODO: look if you should use them, very very controversial (hard to search?)

Two spaces at the end of the line makes a line break.(  )

Hello there.  
General kenoby.  
ah , the negotiator.
Yes he is here.


## blocks

### Code fences

Please use backticks(\`).
Code blocks are perphaps the single biggest reason to use mardown for all our tech writing and note taking.

When you want to add syntax highlighting or otherwise indicate how the text should be handled provide an information tag immidiately following the first triple-backtick fence, so for JavaScript it would be:

~~~markdown
```js
console.log('hello world')
```
~~~

Note that color highlighting is disabled because it can distract from equal focus on everything being displayed.


## Blockquotes

Blockquotes are for quotations and only quotations. Avoid the temptation to use them for anything else because if you do you can semantically identify all the actual quotes in your content.

Begin each line of the block with a greater-than (>) sign.

Usually you will just have a sigle paragraph.

```markdown
> "Your mom gay." (Black science man)
> "yes he rally said that shit my dude"
```

Result:  
> "Your mom gay." (Black science man)
> "yes he rally said that shit my dude"


## Tables

A good table: 

| name            | address                  | phone                        |
|-----------------|--------------------------|------------------------------|
| John Adams      | 1600 Pennsylvania Avenue | 0123456789                   |
|-----------------|--------------------------|------------------------------|
| Sherlock Holmes | 221B Baker Street        | 0987654321                   |
| Just some       | random text              | without horizontal seperator |

  : A fricking table my dude

Use [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode) for making tables relatively automatically (:TableModeToggle)

### vim-table-mode
* <leader> tm   - table mode toggle (:TableModeToggle)
* <leader> tr   - table mode realign (:TableModeRealign)
* <leader> tt   - format existing content into table (visualy select multiple lines and then Tableize) (:Tableize)
* <leader> tic  - table mode insert column

Just don't use them. If you need them, use pandoc markdown (https://pandoc.org/MANUAL.html#tables) instead of Github Flavored Markdown. For basic Markdown it is more important to maintain comptability and no one agrees on how tables should be done. It is one of the most hotly debated topics in the Markdown community.

## Table of contents

You should use pandoc, don't use html.

Here are some words, *italija*, **fet amerigu**, ***retorado***.
Test, evo testiram, sta se desava ovde? Sasdfasf.
Još jedan test, ovaj put na latinici, da vidimo kako će sad da prođe?
Океј, ево на ћирилици један, ај садa да те видим, моћни ВИМ спелчече.

## Dodatak za linkove, references:

```markdown
[Link Text](ref1)

Some random text in betweeen.

[ref1]: <url>
```

### Math random test

Evo neka jednacina recimo: $$x=\sqrt{\frac{1}{\sqrt{1-\frac{v^2}{c^2}}}\left(x' - vt'\right)$$
