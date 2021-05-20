# Todo

1. basic tutorial
1. ona playlist-a sa youtube
1. org mode install
1. org mode tutorial
1. evil mode install
1. evil mode tutorial

1. pogledati witchmacs
1. pogledati prelude
1. pogledati evil-colletion i evil-escape 

>("evil-collection and evil-escape are also nice mentions, as they make the vim experience a lot more consistent.
The downside of course is that you're removing the "emacs"ness of keybinds, many prefer to stay more vanilla.")

----

Druga lista:
* Using caps lock and escape AND control (emacs wiki, maybe arch wiki)

<https://github.com/redguardtoo/mastering-emacs-in-one-year-guide/blob/master/guide-en.org#too-many-key-bindings-to-memorize>


* Refresh emacs after changing `init.el` by `M-x load-file<Return><Return>`
* Load new line in emacs config (`init.el`) with `C-x C-e`


* Brave bookmark folder: emacs

Don’t worry though. You can get far enough by learning M-x for running commands, M-: for Elisp evaluation, and by defining custom key bindings.


# 4chan

## bitno

>(Self) Documentation
C-h a (apropos)
C-h k (Keybinds)
C-h f (Functions)
C-h v (Variables)
C-h i (Assorted Manuals)

Resources:  
* <https://www.gnu.org/software/emacs/manual/emacs.html> (GNU Emacs Manual)
* <https://www.emacswiki.org> (Emacs Wiki)

Premade configs:  
* <https://github.com/snackon/Witchmacs> (Witchmacs (Basic config with sane defaults))
* <https://github.com/bbatsov/prelude> (Prelude (Basic starter kit))

Chaning deafult keybindings  
https://pastebin.com/2hg4g3C6

## sve

Here's an useful tip, anon. When you type in a prefix (Say, like C-x), you can press "?" and you'll get a buffer with all the possible completions for that prefix.

>General Emacs resources
https://www.gnu.org/software/emacs/manual/emacs.html (GNU Emacs Manual)
https://www.emacswiki.org (Emacs Wiki)
https://github.com/emacs-tw/awesome-emacs (Big List of Packages)

>Tutorials
C-h t (Interactive Tutorial)
https://www.gnu.org/software/emacs/tour (GNU Emacs Tour)
https://www.youtube.com/playlist?list=PLX2044Ew-UVVv31a0-Qn3dA6Sd_-NyA1n ((Youtube) General Introduction)
https://www.youtube.com/playlist?list=PLVtKhBrRV_ZkPnBtt_TD1Cs9PJlU0IIdE ((Youtube) Org Mode)
https://www.youtube.com/playlist?list=PL8Bwba5vnQK14z96Gil86pLMDO2GnOhQ6 ((Youtube) Advanced Configuration)

>(Self) Documentation
C-h a (apropos)
C-h k (Keybinds)
C-h f (Functions)
C-h v (Variables)
C-h i (Assorted Manuals)

>Premade Configs
=Make your own=
https://github.com/hlissner/doom-emacs/tree/develop (Doom Emacs)
https://github.com/syl20bnr/spacemacs (Spacemacs (heavy))
https://github.com/snackon/Witchmacs (Witchmacs (Basic config with sane defaults))
https://github.com/bbatsov/prelude (Prelude (Basic starter kit))
>Managing Multiple Configs
https://github.com/plexus/chemacs2 (Profile switcher)

>Reduce Startup Time
use-package defer
https://www.emacswiki.org/emacs/EmacsAsDaemon
https://www.emacswiki.org/emacs/OptimizingEmacsStartup
http://akrl.sdf.org/gccemacs.html (Native Compilation, Now in master!)

>Changing Default Keybinds
https://pastebin.com/2hg4g3C6
>Programming resources for Emacs Lisp, Common Lisp, Scheme and Clojure:
https://pastebin.com/W519jdPq

>Troubleshooting
If there seems to be a bug (or complicated issue), anons may ask you to compose an MWE (minimum working example).
To create an MWE, try the following:
1) start emacs with "emacs -q". This disables your init.
2) try to reproduce your issue with as few settings changed and packages (manually) loaded as possible.
These steps ensure that other anons can replicate your problem if it's something more involved. Sometimes you even find the cause yourself this way, too!

# org-mode

* C-<Return>    Make new point/\*

* <s TAB        Insert `#begin_src` code snipped

* C-c '         Edit source code in `#begin_src`.

* C-c C-e,  ?Org mode export to markdown?


# general stuff for evil mode too

NOTE: skipped:
* search
* multiple windows
* getting more help

* M-x <MAJOR_MODE>      change to that <MAJOR_MODE> (text, fundemental, etc...)
* C-h m                 see documentation for current mode

* describe-keybindings
* which-key
* describe-key

## eXtend command

* X (eXtend) command:
    * C-x       Character eXtend. Followed by one character.
    * M-x       Named command eXtend. Followed by a long name.

### M-x

* <TAB> for autocompletion
* <Return> for tab completion
* Separate arguments with <Return>

Ex: M-x repl s<Return>oldString<Return>newString<Return>

### C-x

* C-x C-f,  Find/create a file
* C-x C-s,  Save a file
* C-x C-c   Quit emacs

* C-x C-b,  List buffers
* C-x b,    Switch to currently open buffer (buffer name usually = file name)
* C-x k,    Kill a buffer

* C-x s     Save some buffers

* C-x 1     Delete all but 1 window
* C-x u     Undo (weird as fuck)

# Basic motion

* C-v,      Move forward one screenful
* M-v,      Move backward one screenful
* C-l,      Move screen around cursor

* C-p,      Previous line (p=previous)
* C-n,      Next line (n=next)
* C-f,      Forward one character (f=forward)
* C-b,      Backward one character (b=backward)

* M-f,      Next word
* M-b,      Back word

* C-a       Beginning of line (a=first letter in alphabet, or a=at start)
* C-e       End of line (e=end)

* M-a       Beginning of sentence (a=first letter in alphabet, or a=at start)
* M-e       End of sentence (e=end)

* Note: Might change keyboard layout, because you need alt+shift+</>
* M-<       Beginning of file
* M->       End of file


## 2

* NOTE: skipped some stuff, like undo, yanking from the past etc.

* C-g       Discard command, kill emacs if not responding, stop command...

* Note: Kill != Delete
* C-d       Kill next character after cursor
* M-<DEL>   Kill word immediately before cursor
* M-d       Kill word immediately after cursor
* C-k       Kill from cursor to end of line

* C-y       Yank, (Yank=Paste in vim)

* C-<SPC>   Start/end selection
* C-w       Delete current selection

* C-u n     Number of times to do some command, e.g. C-u 4 M-f     = move forward 4 words

* M-k       Kill to the end of the current sentence

* C-x 1,    leave only one window, kill all else (1=one window)


