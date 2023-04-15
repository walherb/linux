dw	- delete word starting from where the cursor is
d}  – delete up to the next paragraph (from current cursor position)
D   – delete remainder of line (from current cursor position)
u 	– undo last change
.   – repeat last change
:n  – move to the nth line of the document (ex. :4)
/text	- search document for string “text”
G   – move to last line in file
:x! - Save the file with modification and exit
:set nu	- Default. For navigiation and simple editing
:set nonu	- Default. For navigiation and simple editing
:$	- Jump to last line
$	- Jump to the last character in the line
dd	- Delete the highlighted text or the current line
v	- Highlight the text. Move left and right arrows to extend or to reduce
y	- Copy the highlighted text or the current line
p	- Paste the previously copied text
o	- Insert a new line after the current line
:/SEARCH_KEYWORD	- Jump to the text matching the string keyword SEarCH_KEyWorD
n	- Jump to the next match of the string match
:split FILE_NAME	- Horizontally open another file named FILE_NAME when a file is opened already
:vsplit FILE_NAME	- Vertically open another file named FILE_NAME when a file is opened already
w	- Jump between different windows in Split mode
yy	- will copy entire line the cursor is currently on
2yy	- will copy the entire line of text as well as the line underneath it (2lines)
p	- will paste the contents from copied yy text, strating on the ine aftre ur cursor 
P	- will paste the copied line(s) strating on the line before the cursor 
5G	- moves ur cursor to line 5
5gg	- moves ur cursor to line 5 (note case sensitive)
G	- Moves the cursor to the beginning of the last line in the file 
1G	- Moves the cursor to the first line of the file  
L	- Also moves the cursor to the beginning of the last line on the terminal screen 
H	- Moves the cursor to the first line on the terminal screen 
o	- opens insert mode to insert text, creates new line below ur current cursor position 
u	- undo 
cc	- Removes the enitire line and places u into insert mode 
/	- serach,/root will serach the file for root u can navigate to the next occurrence using the n key  
?	- is the same as / as it relates to searching 

Insert	Mode
i	- insert text and not replace it 
R	- over write existing text when new text added
cw	- remove current word cursor is on and insert into insert mode to add text 
cc	- replace the enitre of line of text 

Ex  Mode
:%s/user/root	- will replace the first occurrence of "user" on each line of the file with "root"
:%s/user/root/g	- will replace all occurrences of "user" with root; adding the means global
:w	- saves changes
:wq	- saves changes and quits 
:q	- quits without saving changes 
:e /file.txt	- will load the new file.txt into the vi editor for editing. This will only occur if the current changes to the file being edited are saved 
:r	- allows u to bring contents of an old file into a new one
:!	- Allows u to run shell commands from within vi e.g: !ls /etc
:w newfile.txt
:w! newfile.txt
:qa	- Exit all open files in the current Vim session
ZZ	- Save working file and exit
:version
:help or :h
:help 'option'		For example: :help 'list' will give help about :set list
:help CTRL-X	- Help on Vim CTRL-X command. Use the same concept to get help on other CTRL- Vim commands
:help :x	- Help on Vim :x command
:help<CTRL-D>	- Help on auto completion

vimtutor
vimtutor es

Move your cursor to any character between | | and press CTRL-] to go to that particular help section
For example, |quickref| is a link

$VIM/.vimrc:	/usr/share/vim/.vimrc

CTRL-F	- Scroll down full page
CTRL-B	- Scroll up full page
CTRL-D	- Scroll down half page
CTRL-U	- Scroll up half page
CTRL-E	- Scroll down one line
CTRL-Y	- Scroll up one line

w	- Go to the beginning of next word
W	- Go to the beginning of next WORD
e	- Go to the end of current word
E	- Go to the end of current WORD
b	- Go to the beginning of previous word
B	- Go to the beginning of previous WORD

0 (zero)	- Go to the starting of current line
$ (dollar sign)	- Go to the end of current line
^ (caret sign)	- Go to the first non blank character of current line
g_	- Go to the last non blank character of current line

{	- Go to the beginning of current paragraph
}	- Go to the beginning of next paragraph
[[	- Go to the beginning of the current section
]]	- Go to the beginning of next section
(	- Go to the beginning of previous sentence
)	- Go to the beginning of next sentence

H	- Go to the first line of current screen.
M	- Go to the middle line of current screen
L	- Go to the last line of current screen

z<ENTER>	- Redraw the screen with the current line under the cursor at the top of the screen.
z- (lowercase z followed by hyphen - )	- Redraw the screen with the current line under the cursor at the bottom of the screen
z. (lowercase z followed by period)	- Redraw the screen with the current line under the cursor at the middle of the screen

:0	- Go to the top of the file – method 1
gg	- Go to the top of the file – method 2
1G	- Go to the top of the file – method 3
:$	- Go to the bottom of the file – method 1
G	- Go to the bottom of the file – method 2

50%	- Go to the 50th percentage of file. Jump to the middle of the file.
75%	- Go to 75% of the file. Jump to 3/4th of the file.
100l	- Navigation key is: 100 followed by l. Go to the 100th character from current position
100<space>	- Navigation key is: 100 followed by empty space Another way to go to the 100th character from current position
:goto 25	- Go to 25th character from the start of file
25|	- Navigation key is: 25 followed by pipe symbol Go to 25th character in the current line

:set nu	- Display line numbers
:set nonu	- Do not display line numbers
:set numberwidth=5	- By default the line number width is set to 4 characters. You can change this to 5 character using numberwidth

:50	- Go to the 50th line
50gg	- Another way to jump to 50th line
50G	- Another way to jump to 50th line

%	- Go to the matching character of the pair. Jump to the matching parenthesis (), or curly braces {} or square bracket []
[(	- Go to the previous unmatched (
[)	- Go to the previous unmatched )
[{	- Go to the previous unmatched {
[}	- Go to the previous unmatched }

SHIFT-<Right Arrow>	- Go to right word-by-word in insert mode
SHIFT-<Left Arrow>	- Go to left word-by-word in insert mode

:jumps	- jump list 
CTRL-O	- Jump back to previous spot
CTRL-I	- Jump forward to next spot
5CTRL-O	- Jump to location#5 shown above location#0
5CTRL-I	- Jump to location#5 shown below location#0

gj	- Scroll down a visual line
gk	- Scroll up a visual line
g^	- Go to the starting of current visual line
g$	- Go to the end of current visual line
gm	- Go to the middle of current visual line

$ vim +143 <filename>	- Go to the 143rd line of file
$ vim +/search-term <filename>	- Go to the first match of the specified search term from top
$ vim +?search-term <filename>	- Go to the first match of the specified search term from bottom
$ vim -t TAG	- Go to the specific tag
vim +/^jsmith /etc/passwd

i	- Insert text at the current position
I	- Insert text at the beginning of the line Key: Uppercase I as in India
o	- Insert a new line after the current line and insert text Key: Lowercase o as in orange.
O	- Insert a new line before the current line and insert text Key: Uppercase O as in Orange.
:r FILENAME	- Insert another file content into current file after the current line
:r!	- COMMAND Insert output of a command into current file after the current line
:r! date

a	- Append text after the current cursor position
A	- Append text to the end of the line

r{c}	- To replace a single character with the single character {c}
R	- To replace characters until you press <ESC>

s	- Substitute the current character with new character
S	- Substitute the current line with new text
4s	- Substitute 4 characters (from current position) with new text
4S	- Substitute 4 lines (from current line) with new text

cc	- Change the whole current line; synonymous with S. This will delete the full current line and put you in INSERT mode for new text.
C	- Change the current line from the current cursor position.This will delete text in the current line from the current cursor position and put you in INSERT mode for new text.

J	- Join two lines 
:set nojoinspaces

p (lower-case P)	- Paste immediately after the current cursor location
P (upper-case P)	- Paste immediately before the current cursorlocation

:reg
"3p
"

x	- Delete the current character
dw	- Delete the current word
dj	- Delete the current line and next line

SHIFT-INSERT	- Paste clipboard content to editor (ensure you are in insert mode first!)
"*p	- Paste clipboard content to editor in normal mode
"

:%y+	- Copy the whole file to the clipboard
:y+	- Copy the current line from the file to the clipboard
:N,My+	- Copy the specific range from file to the clipboard

:w newfilename
:5,10w newfilename

v (lower-case)	- Start the normal visual mode. Use arrow keys to navigate and select text in visual mode.
V (upper-case)	- Start the line visual mode.
CTRL-V	- Start the visual block mode.

<ESC>	- Exit visual mode
d	- Delete only the highlighted text. For example, if only part of the line is selected, it deletes only the selected text from that line.
D	- Delete rows under highlighted text. For example, if only part of the line is selected, it deletes the entire line.
y	- Copy (yank) only the highlighted text
Y	- Copy (yank) rows under highlighted text
c	- Delete highlighted text and go to insert mode
C	- Delete rows under highlighted text and go to insert mode

:g/^$/d	- Delete all empty lines in the file
:g/^\s*$/d	- Delete all empty and blank lines in the file
:g/^$/,/./-j	- Reduce multiple blank lines into a single blank lines
:g/pattern/d	- Delete the line which has a specific pattern
:g/pattern/ .	- Extract lines with specific pattern and write it into another file
w>>filename
:g/^/m0	- Reverse a file
:g/^\s*PATTERN	- Add a C Style comment ( /* text */ ) to all lines matching the pattern
/exe "norm! I/*
\<ESC>A */\<ESC>"

:g/Sales/d	- Delete all lines containing Sales:
:g!/Sales/d - Delete all lines except Sales:
:v/Sales/d

:abbr US United States
:noabbr US
:abclear

:sort	- Sort in ascending order
:sort!	- Sort in descending order
:sort i	- Ignore case while sorting
:sort u	- Remove duplicate lines. U stands for unique.
:sort!	- ui You can also combine all the sort command options.

“1p Recover the last delete
“2p Recover the second to last delete
“3p Recover the third to last delete

:syn on	- Turn on the syntax highlighting
:syn off	- Turn off the syntax highlighting

CTRL-A	- Increment Number
CTRL-X	- Decrement Number

CTRL-G	- View basic file details
g CTRL-G	- View advanced file details

:set laststatus=2

~	- Change case of the char under the cursor 
5~	- Change the case of the next 5 characters
g~{motion-key}	- Change the case of characters from under the cursor through the entire specified motion.
For example: g~$ changes the case from the cursor through the end of the line.
g~~	- Change the case of the entire current line
gUU	- Change the entire current line to upper case
guu	- Change the entire current line to lower case
gUaw	- Change current word to upper case
guaw	- Change current word to lower case
U 	- Visual Mode: Change current highlighted text to upper case
u	- Visual Mode: Change current highlighted text to lower case
guG	- Change text from current position to end of file to lower case
gUG	- Change text from current position to end of file to upper case


:set	- spell Start the spell check process. This will highlight all spelling mistakes in the current document.
]s	- Jump to the next spelling mistake
[s	- Jump to the previous spelling mistake
z=	- Suggestions for the misspelled word. From the list, type the number to select a specific suggestion.
zg	- Add the highlighted wrong words as a valid word.
:echo &spelllang	- Displays the language code that is used for spell check. For example, this displays en for English
:set spelllang=code	- If the default spellang is not set properly, use this method to set it to your language

:confirm q

:set expandtab	- Convert tabs to spaces automatically.
:set tabstop=4	- If you want Tab to be converted to 4 spaces, specify it with tabstop.
:retab	- Convert all the tabs in a files to spaces based on expandtab and tabstop option.
:set shiftwidth=4	- Specifies the number of spaces that should be used when you indent a line.
:set ai	- In insert mode, Vim will automatically indent new lines (when you hit return) to the same indent level of the current line.

vim –h
vim -R filename.txt
vim –r

vim -c ':50' filename.txt
vim –Z filename

CTRL-W {Navigation key – j, k, h, l}
CTRL-W k	- to jump to the window above
CTRL-W j	- To jump to the window below

CTRL-W +	- Increase the size of current window in split mode
CTRL-W -	- Reduce the size of current window in split mode

:25 vsplit filename.txt	- To open a vertical split with 25 columns do the following
:3 split filename.txt	- To open a horizontal split with 3 lines do the following

:!ls $VIMRUNTIME/colors
:colorscheme evening

vim –p helloworld.cc employee.txt /etc/passwd

:red	(or)	CTRL-R			- Redo

:ls
:e #N	- Go to the Nth file from the above :ls output
:next
:previous

:!echo %
:!echo %:p
:!echo %:e

:map :write :!cc % && ./a.out
map :w :up
:map :q :confirm q
:map

$ set -o vi
$ cat ~/.bashrc
set -o vi
$ set -o emacs

/	- Search forward (also used as Find next)
?	- Search backward (also used as Find previous)
n	- Go to the next occurrence (Find Next)
N	- Go to the previous occurrence (Find Previous)
// (or) ??	- Repeat previous forward or reverse search
*	- Go to the next occurrence of current word under the cursor.
#	- Go to the previous occurrence of current word under the cursor
g*	- Go to the partial match of next occurrence of current word under the cursor. For example, if current word is ‘top’, g* will also match next ‘stop’, ‘laptop’.
g#	- Go to the partial match of previous occurrence of current word under the cursor.
[I	- To list all the occurrences of the word under the cursor, use [I (upper-case i)

fX	- Go to character X within a line in forward direction
FX	- Go to character X within a line in reverse direction
tX	- Go to one character before character X within a line in forward direction
TX	- Go to one character before character X within a line in forward direction
;	- Repeat latest f, F, t or T in forward direction
,	- Repeat latest f, F, t or T in backward direction

:%s/old-text/new-text/g	- Substitute all occurrences of a text with another text in the whole file
:s/helo/Hello/gi	- ubstitution of a text with another text within a single line
:1,10s/I/We/g	- Substitution of a text with another text within a range of lines
:s/helo/hello/g 4	 - Substitution of a text with another text in only the next N number of lines
:s/\<his\>/her/	- Whole Word Substitution:
:%s/\(good\|nice\)/awesome/g
:%s/\<\(hey\|hi\)\>/hai/g

:4,$s/\d\+/\=submatch(0) + 1/
:%s/\.\s*\w/\=toupper(submatch(0))/g	- Capitalizing the first character of every sentence

:set hlsearch	- Enable search result highlighting Note: Add this to ~/.vimrc to make it permanent
:set nohlsearch	- Disable search result highlighting
:nohlsearch		- Clear the active search highlights

:set incsearch	- To enable Incremental search
:set noincsearch

:match ErrorMsg /Error/

$ cat ~/.vimrc
set dictionary+=/usr/share/dict/words
CTRL-X CTRL-K

$ vim ~/.vimrc
set thesaurus+=/HOME/Build/jsmith/mythesaurus.txt
CTRL-X CTRL-T

$ wget http://www.gutenberg.org/dirs/etext02/mthes10.zip
$ unzip mthes10.zip
$ vim ~/.vimrc
set thesaurus+=/HOME/Build/jsmith/mthesaur.txt

$ mkdir –p ~/.vim/plugin
$ cd ~/.vim/plugin
$ wget –O autocomplpop.zip http://www.vim.org/scripts/download_script.php?src_id=11538
$ vim ~/.vimrc
filetype plugin on

Hack 101. Automatically offers Word Completion as you type
Download word_complete.vim plugin from vim.org as shown below
$ mkdir –p ~/.vim/plugin
$ cd ~/.vim/plugin
$ wget http://www.vim.org/scripts/download_script.php?src_id=6504
$ vim ~/.vimrc
filetype plugin on

Two methods to Enable Auto Complete Plugin
: call DoWordComplete()	OR 
$ cat ~/.vimrc
:autocmd BufEnter * call DoWordComplete()
:call EndWordComplete()

# update-alternatives --set editor <PATH OF VIM>
$ export EDITOR=vi

gqap	- Format a paragraph 

 Indent Code Block
• Move the cursor to either the { or }
• Press >i{ to indent the code located in between { and }

d<Navigation Key>	- Delete until specified by the navigation key
dw 	- Delete the word
d$ 	- Delete until end of the line
d0 	- Delete until start of the line
dG 	- Delete up to end of the file
dgg 	- Delete up to start of the file
dk 	- Delete current line and previous line
dj 	- Delete current line and next line
dM 	- Delete until middle of the screen
dH 	- Delete until middle of the screen
dL 	- Delete until bottom of the screen
y<Navigation Key>	- Copy until specified by the navigation key
c<Navigation Key>	- Change until specified by the navigation key

:changes
CTRL-L		- Refresh the Screen
:digraphs	-  Insert Non Keyboard Characters
CTRL-K Co

/pattern\zs		- Cursor at the end of the pattern
ga	- View ASCII value of a character

$ vim -b binaryfile		- Edit Binary files in Vim Editor

:set foldmethod=indent	- Folding - View Only Required Part of Code
za Toggle the fold under the cursor
zR Unfold all folds
zM Fold everything back again

***** VIM Snippets ******
Plug 'vim-scripts/AutoComplPop' in .vimrc 
filetype plugin on

sudo !!				:Execute last command with sudo privileges 
:W					:Save in Read-only file 

command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
cnoremap W execute 'silent! write !sudo tee % >/dev/null' | edit!
command W :execute ':silent w !sudo tee % > /dev/null' | :edit! (*****) - {https://www.cyberciti.biz/faq/vim-vi-text-editor-save-file-without-root-permission/}
:w !sudo tee %
:w !sudo sh -c "cat > %"
cmap w!! w !sudo tee % > /dev/null
cmap W w !sudo tee % > /dev/null   (*****)
cnoremap w!! w !sudo tee % > /dev/null 

2035 2076
for x in $(seq 2035 2076); do history -d 2035; done

https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo dnf install git -y

call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/AutoComplPop'
" Initialize plugin system #"
call plug#end()

:PlugInstall
:PlugUpdate vim-airline 
:PlugClean[!]
:PlugUpgrade
:PlugStatus

:PlugUpdate
:PlugUpdate NERDTree

:PlugSnapshot ~/vim-plug.list

h – move the cursor left
j – move the cursor down
k – move the cursor up
l – move the cursor right

b – move to the start of a word
B – move to the start of a token
w – move to the start of the next word
W – move to the start of the next token
e – move to the end of a word
E – move to the end of a token

0 (zero) – jump to the beginning of the line
$ – jump to the end of the line
^ – jump to the first (non-blank) character of the line
#G / #gg / :# – move to a specified line number (replace # with the line number)

Ctrl + b – move back one full screen
Ctrl + f – move forward one full screen
Ctrl + d – move forward 1/2 a screen
Ctrl + u – move back 1/2 a screen
Ctrl + e – move screen down one line (without moving the cursor)
Ctrl + y – move screen up one line (without moving the cursor)
Ctrl + o – move backward through the jump history
Ctrl + i – move forward through the jump history

H – move to the top of the screen (H=high)
M – move to the middle of the screen (M=middle)
L – move to the bottom of the screen (L=low)

i – switch to insert mode before the cursor
I – insert text at the beginning of the line
a – switch to insert mode after the cursor
A – insert text at the end of the line
o – open a new line below the current one
O – open a new line above the current one
ea – insert text at the end of the word
Esc – exit insert mode; switch to command mode

r  – replace a single character (and return to command mode)
cc – replace an entire line (deletes the line and moves into insert mode)
C / c$ – replace from the cursor to the end of a line
cw – replace from the cursor to the end of a word
s  – delete a character (and move into insert mode)
J  – merge the line below to the current one with a space in between them
gJ – merge the line below to the current one with no space in between them
u  – undo
Ctrl + r – redo
. – repeat last command

yy – copy (yank) entire line
#yy – copy the specified number of lines
dd – cut (delete) entire line
#dd – cut the specified number of lines
p – paste after the cursor
P – paste before the cursor

v – select text using character mode
V – select lines using line mode
Ctrl+v – select text using block mode
o – move from one end of the selected text to the other
aw – select a word
ab – select a block with ()
aB – select a block with {}
at – select a block with <>
ib – select inner block with ()
iB – select inner block with {}
it – select inner block with <>
y – yank (copy) the marked text
d – delete (cut) the marked text
p – paste the text after the cursor
u – change the market text to lowercase
U – change the market text to uppercase

* – jump to the next instance of the current word
# – jump to previous instance of the current word
/pattern – search forward for the specified pattern
?pattern – search backward for the specified pattern
n – repeat the search in the same direction
N – repeat the search in the opposite direction

:w – save the file
:wq / :x / ZZ – save and close the file
:q – quit
:q!/ ZQ – quit without saving changes
:w new_file_name – save the file under a new name and continue editing the original
:sav – save the file under a new name and continue editing the new copy
:w !sudo tee % – write out the file using sudo and tee command

:e file_name  – open a file in a new buffer
:bn  – move to the next buffer
:bp – go back to previous buffer
:bd  – close buffer
:b#  – move to the specified buffer (by number)
:b file_name – move to a buffer (by name)
:ls – list all open buffers
:sp file_name  – open a file in a new buffer and split viewport horizontally
:vs file_name  – open a file in a new buffer and split viewport vertically
:vert ba  – edit all files as vertical viewports
:tab ba  – edit all buffers as tabs
gt – move to next tab
gT – move to previous tab
Ctrl+ws – split viewport
Ctrl+wv – split viewport vertically
Ctrl+ww – switch viewports
Ctrl+wq – quit a viewport
Ctrl+wx – exchange current viewport with next one
Ctrl+= – make all viewports equal in height and width

m[a-z] – mark text using character mode (from a to z)
M[a-z] – mark lines using line mode (from a to z)
`a - jump to position marked a`
`y`a – yank text to position marked >a>
`. – jump to last change in file`
`0 – jump to position where Vim was last exited
`` – jump to last jump`
:marks – list all marks
:jumps – list all jumps
:changes – list all changes
Ctrl+i – move to next instance in jump list
Ctrl+o – move to previous instance in jump list
g, – move to next instance in change list
g; – move to previous instance in change list

qa  – record macro a
q  – stop recording macro
@a  – run macro a
@@  – run last macro again

:colorscheme [colorscheme_name]  – change to specified scheme
:colorscheme [space]+Ctrl+d – list available Vim color scheme

A 				:Move to end of file and enter Insert mode
0 				:Move to beginning of file and enter Insert mode
3W				:Jump to the third word
4E				:Fourth word, last character 
dw				:Delete word and remain in command mode   
u 				:Undo Changes one by one 
U 				:Undo All Changes
ce				:Delete word & go into insert mode 
c$ 				:Delete to the end of the line & go into insert mode 
c0 				:Delete to the beggining of the line & go into insert mode 
r 				:Replace a character 
cw				:Replace a word 
R 				:Go into repalce mode 
v				:Go into VISUAL mode {y - yank/copy, d - cut, p - put/paste}
V 				:VISUAL block mode {y - yank/copy, d - cut, p - put/paste} 
:%s/find/replace/g 
:%s/find/replace/gc 			:Find & Replace with confirmation 
G 				:Go to end of the file  
gg				:Go to beginning of the file 
H 				:Go to the beginning of the page 
M 				:Go to the middle of the page 
L 				:Go to the end of the page
zz				:Go to center of the file  
ZZ				:Exit VIM 
50%				:Go to middle of the file 
$				:Go to last char of the file 
^				:Go to beginning of non empty char
:50				:Go to line fifty 
:e file     	:Go to/Open another file 
:ls 			:List files in the buffer
:bp 			:Buffer previous, navigate to the previous file in the buffer 
:bn 			:Buffer next, navigate to the next file in the buffer 
:bd 			:Buffer Delete/Close, Close or Delete file from the buffer  
:tabedit file	:Open a file in a new tab 
:tabp 			:Move to the previous tab 
:tabn			:Move to the next tab
:tabe file		:Tab Edit 
:tabm			:Move tab to end
:tabnew			:New Tab Edit 
:tabs			:List all tabs
:tabclose 		:Close current tab 
:tabfirst		:Go to first tab
:tablast		:Go to last tab
:w zzz.txt 		:Write newfile and save 
:tabonly		:Close all other tabs except the active one 
:sp file 		:Horizontal Split 
:vsp file    	:Horizontal Split 
Ctrl-W + >		:Move to windows on right
Ctrl-W + <		:Move to windows on left 
Ctrl-W + ^		:Move to windows on up 
Ctrl-W + Down	:Move to windows on left 
vim -p file1 file2 file3		:Create a workspace
:mksession txtfiles.vim 
:qall 			:Quit all 
vim -S txtfiles.vim 			:Open Session
:wqall			:Save all and Quit 
:nmap <C-n> :set number			:Key Mappings, use Ctrl+n to turn on line numbers 
:nmap <C-n> :set invnumber		:Key Mappings, use Ctrl+n to turn on line numbers 

Ctrl-w g f while being with the cursor on a word (e.g. "file.txt") opens the file with that name on a new window
from terminal: vim -p file1 file2 file3 opens Vim and the 3 files on separate tabs (panels)
Ctrl-^ alternates between 2 buffers
type :ls to see the open buffers switch between active buffer (marked as %a) and the previous one (marked as #h) where "h" stands for "hidden"
:only closes all windows leaving only the current one open
Ctrl-w _ maximizes the current window vertically
Ctrl-w | maximizes the current window horizontally
Ctrl-w = equalizes/restores original sizes
Ctrl-w r rotates windows clockwise (R for inverse)
Ctrl-w HJKL moves the window to the far side direction
Ctrl-w T extracts the current window in a new tab
:tabclose closes current tab
:tabonly closes all tabs leaving the current one open
:tabmove <number> moves the current tab to the N position
<number>gt goes to the N-th tab


:set spell enables the spell checker (:set nospell to turn off) - alternatively :set spell! to toggle on/off
]s goes to the next misspelled word - or previous one with [s
z= opens a list of suggestions
1z= tries to autocorrect using the "first" (more likely) occurrence
zg marks word as good - whitelist word
zw marks word as bad - blacklist word
zug and zuw to undo
:set spelllang=en sets the language for the dictionary

:earlier 1h reverts to version of 1 hour ago
:later 1h goes forward to 1 hour ahead

c2b				:Remove 2 words backwards
c2e				:Remove 2 words forwards 
D				:Delete to end of the line 
Shift-0			:Move between sentences )
Shift-9			:Move between sentences backwards ( 
:nohl 			:Remove highlight 
:set list
Shift-[			:Move through paragraphs backwards {
Shift-]			:Move through paragraphs forward }
:marks 
:delmark  R     :Delete mark 
`R 				:Access mark R`
mx				:local mark
mG				:Global mark  
:set backup
:set backupext=.org 
:register
:nmap <C-n> :set invnumber<CR>
:nmap
:tabfirst
:tablast
:tab<TAB>
:source Session.vim 
vimdiff file1 file2 OR vim -d file1 file2 
vim -d -O file1 file2 
vim -d -o file1 file2 

5.	Repeat 5 times the last change made in normal mode

k or Up Arrow	move cursor up one line
j or Down Arrow	move cursor down one line
e	move cursor to the end of the word
b	move the cursor to the beginning of the word
0	move the cursor to the first non-blank character of the line
G	move the cursor to the end of the file
gg	move the cursor position to the beginning of the file
L	move the cursor to the bottom of the screen
:59	move cursor to line 59. Replace 59 by the desired line number.
%	Move cursor to matching parenthesis
[[	Jump to function start
[{	Jump to block start
}

y	Yank/Copy the selected text to clipboard
p	Paste clipboard contents
dd	Cut current line
yw	Yank/Copy word
yy	Yank/Copy current line
y$	Yank/Copy to end of line
D	Cut to end of line

:%s/old/new/g	Replace all occurences of old with new in file
:%s/onward/forward/gi	Replace onward with forward, case insensitive
:%s/old/new/gc	Replace all occurences with confirmation
:2,35s/old/new/g	Replace all occurences between lines 2 and 35
:5,$s/old/new/g	Replace all occurences from line 5 to EOF
:%s/^/hello/g	Replace the beginning of each line by hello
:%s/$/Harry/g	Replace the end of each line by Harry
:%s/onward/forward/gi	Replace onward with forward, case insensitive
x	Delete character
:%s/ *$//g	Delete all white spaces and keep any non-blank character
:g/string/d	Delete all lines containing string
:v/string/d	Delete all lines not containing string
:s/Bill/Steve/	Replace the first occurrence of Bill with Steve in current line
:s/Bill/Steve/g	Replace Bill with Steve in current line
:%s/Bill/Steve/g	Replace Bill with Steve in all of the file
:%s/^M//g	Delete DOS carriage returns (^M)
:%s/\r/\r/g	Transform DOS carriage returns in returns
:%s#<[^>]\+>##g	Delete HTML tags but keep text
:%s/^\(.*\)\n\1$/\1/	Delete lines that appear twice
Ctrl+a	Increment number under the cursor
Ctrl+x	Decrement number under cursor
ggVGg?	Change text to Rot13


Vu	Lowercase line
VU	Uppercase line
g~~	Invert case
vEU	Switch word to uppercase
vE~	Modify word case
ggguG	Set all text to lowercase
gggUG	Set all text to uppercase
:set ignorecase	Ignore case in searches
:set smartcase	Ignore case in searches except if an uppercase letter is used
:%s/\<./\u&/g	Sets the first letter of each word to uppercase
:%s/\<./\l&/g	Sets the first non-blank character of each word to lowercase
:%s/.*/\u&	Sets the first character of the line to uppercase
:%s/.*/\l&	Sets the first character of the line to lowercase

:1,10 w outfile	Save lines 1 to 10 in outfile
:1,10 w >> outfile	Append lines 1 to 10 to outfile
:r infile	Insert the content of infile
:23r infile	Insert the content of infile under line 23

:e .	Open integrated file explorer
:Sex	Split window and open integrated file explorer
:Sex!	Same as :Sex but splits window vertically
:browse e	Graphical file explorer
:ls	List buffers
:cd ..	Move to parent directory
:args	List files
:args *.php	Open file list
:grep expression *.php	Return a list of .php files contening expression
gf	Open file name under cursor


:!pwd	Execute the pwd Unix command, then return to Vi
!!pwd	Execute the pwd unix command and insert output in file
:sh	Temporary return to Unix
$exit	Return to Vi

:%!fmt	Align all lines
!}fmt	Align all lines at the current position
5!!fmt	Align the next 5 lines

:tabnew	Create/Open a new tab
gt	Show next tab
:tabfirst	Show first tab
:tablast	Show last tab
:tabm n(position)	Rearrange tabs
:tabdo %s/foo/bar/g	Execute a command in all tabs
:tab ball	Puts all open files in tabs (Each in a new tab)
:new abc.txt	Edit abc.txt in new window

:e filename	Edit filename in current window
:split filename	Split the window and open filename
ctrl-w up arrow	Put cursor in top window
ctrl-w ctrl-w	Put cursor in next window
ctrl-w_	Maximize current window vertically
ctrl-w|	Maximize current window horizontally
ctrl-w=	Gives the same size to all windows
10 ctrl-w+	Add 10 lines to current window
:vsplit file	Split window vertically
:sview file	Same as :split in Read Only Mode
:hide	Close current window
:­nly	Close all windows, except current
:b 2	Open #2 in this window

Ctrl+N Ctrl+P (in insert mode)	Complete word
Ctrl+x Ctrl+l	Complete line
:set dictionary=dict	Define dict as a dictionary
Ctrl+x Ctrl+k	Complete with dictionary

m {a-z}	Marks current position as {a-z}
‘ {a-z}	Move to position {a-z}
”	Move to previous positio

:ab mail mail@provider.org	Define mail as abbreviation of mail@provider.org


:set autoindent	Turn on auto-indent
:set smartindent	Turn on intelligent auto-indent
:set shiftwidth=4	Define 4 spaces as indent size
ctrl-t, ctrl-d	Indent/un-indent in insert mode
>>	Indent
<<	Un-indent
=%	Indent the code between parenthesis
1GVG=	Indent the whole file 
Un-indent

:syntax on	Turn on syntax highlighting
:syntax off	Turn off syntax highlighting
:set syntax=perl	Force syntax highlighting

5dw		Delete 5 words
3j		Move down 3 lines
3g~l	Swap case for next 3 characters

c	Change
d	Delete
g~	Swap case
gu	Make lowercase
gU	Make uppercase
y	Yank (copy)
<	Shift left
>	Shift right

:%s/{search}/{replace}/gc	Search over the range (% for whole file) for all occurances of {search} and replace with {replace}.
:10,20s/{search}/{replace}/gc	Search over the range (lines 10 to 20) for all occurances of {search} and replace with {replace}.

:tabe			:tabedit
:tabnew			To open a new blank tab.
:tabe {file}	:tabedit {file}
:tabenew {file}	To open a new tab to edit {file}.
:tabc			:tabclose
:tabclose!		To close the current tab.
{count} gt		To specify which tab with {count} or go to the next tab. This wraps around forward.
{count} gT		To specify which tab with {count} or go to the previous tab. This wraps around backward.
:tabs			List the current Vim tabs.

:bfirst	Move to first buffer
:blast	Move to last buffer

# ---------------------- VIM Plug – The easy way to install plugins in VIM -------------------------
https://www.linuxfordevices.com/tutorials/linux/vim-plug-install-plugins
(Awesome Vim:website 4 vim plugins)
sudo apt install git
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.
:source %
:PlugInstall

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' (:Produces Errors due python dependency)


# --------- Learning the vi and Vim Editors Power and Agility Beyond Just Text Editing -----------------
:e filename 
$TERM vt100
vi -R 
ZZ -- save file 
:e! -- reloads last original file 
:w! file 
:w newfile 
:pre 
Ctrl-Z
du -s * | sort -nr 
fg
:sh 
:!du -s *
0 -- Beginning of a line 
$ -- End of a line 
b
2h -- left 2 spaces
j  -- down 1 line 
2w -- move forward 2 words(alphanumeric chars make up words)
2k -- up 2 lines 
l  -- right 1 space
:set wm=10  -- wrapmargin at 10 chars
.exrc  -- startup file 
:set nu 
W  -- move forward one Word(whitespace separates words)
b  -- move backword one word (alphanumeric chars make up words)
B  -- Move backword one Word(whitespace separates words)
G  -- Go to a specific line (End of a file)
1G -- goes to the top of the file 
42G -- goes to line 42
a -- append 
c -- change 
d -- delete 
p -- put 
y -- yank 
x -- delete a single char
r -- replace a single char
cw -- To the end of a word
c2b -- Back two words
c$/C -- To the end of the line
c0 -- To the beginning of the line
cc -- change an entire line 
~  -- change case
dd/D -- delete by line 
s/S  -- subsitute 
u -- undo 
U -- restore line 
. -- repeat command last action
A -- Append text to the end of the current line.
I -- Insert text at the beginning of the current line.
o -- (lowercase letter “o”) Open an empty line below the cursor for text.
O -- (uppercase letter “o”) Open an empty line above the cursor for text.
s -- Delete the character at the cursor and substitute text.
S -- Delete the current line and substitute text.
R -- Starting at the cursor, overstrike existing characters with new characters.
50i*  -- insert 50 asterisks
25a*- -- appends 50 chars (25 pairs of asterisk and hyphen)
Shift+j/J -- join lines 

# -------------------------------------------- Chapter 3 ----------------------------------------------
