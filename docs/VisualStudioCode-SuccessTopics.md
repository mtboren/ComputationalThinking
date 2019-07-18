## Editor intentional usage (as demo'd in Visual Studio Code)

**What**:

- achieve success with the least cost -- be intentional and leverage editor capabilities. That is, think about what defines success, then use the built-in capabilities to achieve with highest efficiency/speed, and with the fewest errors/rework
- Leave behind the notepad.exe mindset -- many people have contributed a lot of hours to make "real" editors ever more powerful, making us ever more powerful.  Take advantage of those abstractions/encapsulations!
- Embrace the power, even if for seemingly insignificant use cases!  Besides the benefit from practice, you get the possibility of efficiency just by using the real editor itself (uses evolve -- a single copied line becomes several, a temp GUID can be easily copied without playing "drag to highlight")

#### The goods

- [Basics](https://code.visualstudio.com/docs/editor/codebasics):  let the editor do the work
    - **Indent line/selection**:  `Ctrl+[` (decrease indent), `Ctrl+]` (increase indent)
    - **Smart wrapping of characters** -- quotes, parentheses, curly braces, square brackets, asterisks, etc.:  make selection, type opening character of desired "wrap" pair (like a quote, or a parenthesis) -- Language Mode specific (may behave differently in Plain Text vs. some programming language mode)
    - **Act upon current line** (when no selection -- "Empty Selection Clipboard"):
        - Copy/Cut will act on whole line if no selection
    - **Smart line insert**:  deal with whole lines, and you can insert them at will from clipboard (does not overwrite focused line, but, rather, inserts pasted line above current focused line)
    - **Toggle comment**: `Ctrl+/` (line comment every line in selection), `Alt+Shift+a` (block comment selection)
    - **Goto Matching Bracket** (`Ctrl+Shift+\`)
    - **Smart Select**: grow/shrink selection within next/previous bounding characters (within quotes, within brackets, etc.); good for visualizing/selecting body of things like a string, a script block, a logic subexpression, etc.
    - **Goto Line Number** (`Ctrl+g`)
    - **Navigate cursor location history**:  Back in history (`Alt+Left`), Forward in history (`Alt+Right`)
    - [Multiple selections](https://code.visualstudio.com/docs/editor/codebasics#_multiple-selections-multicursor) for multi-editing:
        - `Alt+LeftClick` (add cursor at click location)
        - `Ctrl+Alt+Arrow` (multiple cursors via keyboard)
        - `Alt+Shift+i` (add cursor to end of each selection)
    - [Column (box) select](https://code.visualstudio.com/docs/editor/codebasics#_column-box-selection) `MiddleMouseClick+Drag` (drag to make box selection), `Alt+Shift+LeftClick` (make box selection by start/end)
    - **Join Lines** (command palette): make list out of tabular data (for periodic use case when someone sends you a column of data, like some VM names or Array names or something)
    - **Duplicate (copy) line(s)** (without cluttering clipboard):
        - Duplicate line(s) down `Alt+Shift+DownArrow`
        - Duplicate line(s) up `Alt+Shift+UpArrow`
    - **Transform to upper/lowercase**:  command palette for selection
    - **Orienteering**: Use the Minimap in a long document to help quickly navigate to section \<blahh>
    - Obvious, but:  **use keyboard shortcuts**; if none defined, for given action, can assign at will; most menus show the associated kbd shortcut for an action (if there is one); can search for actions/shortcuts by action name or by shortcut (in File -> Preferences -> Keyboard Shortcuts)
- **Command palette** (`Ctrl+Shift+p`) -- do all the things that you want, in searchable list
- VSCode command line:
    - **Use VSCode as a Diff tool**:  `code --diff file0.txt file1.txt`
    - **Open file in VSCode at specific line and character**:  open given file in Code and put cursor at line 13, column 37: `code --goto \\someserver\someshare\somefile.txt:13:37`
    - help, of course, to see all available items:  `code --help`
- **Format document** (`Shift+Alt+f`), **Format selection** (`Ctrl+k Ctrl+f`); save precious hours when the need arises to properly format someone else's code (our code is _always_ propery formatted, right?) -- can auto-format the document/selection; PS1, JSON, YAML, etc.
- **Expand Aliases** (PowerShell):  expand aliases in your code to follow good practice of using full cmdlets in code (`Shift+Alt+e` with PowerShell extension)
- **Live MarkDown preview**: Open Preview to the Side button at top-right, or `Ctrl-k v`
- **Change Language Mode** (if not auto-detected, or if you want to force): `Ctrl-k m`, or click on current Language Mode at bottom right; to take advantage of langauge-specific features like intellisense, debugging, syntax highlighting, etc.
- [Visual debugging](https://code.visualstudio.com/docs/editor/debugging)
    - Run Selection (`F8` in PowerShell, `Shift+Enter` in Python, for example)
    - Start with Debugging
        - Breakpoint
        - Conditional breakpoints
        - Stepping into, over, out
        - Variable watches/inspection
        - Set variable values
- the rest:  [VSCode documentation](https://code.visualstudio.com/docs)
- other:  if so inclined, there are extensions for \<lots of things> -- see the Extensions Marketplace

Examples to hit:
- MiniMap for quick navigation: see some long file, use the MiniMap to help understand where in the document is the the current pane location
- Apply/leverage several of these principals -- work on `EfficientAndEffectiveExampleThings\snippetsForPracticeOfEffectiveAndEfficientEditing.txt`
- Make valid a JSON-like file -- `EfficientAndEffectiveExampleThings\someJSON_toEditAndFormat.txt`
- Make prod-ready (from formatting/alias perspective) a script -- `EfficientAndEffectiveExampleThings\Get-VMByAddress_forExample.ps1`, save as `Get-VMByAddress_prodified.ps1`
- See the diff of updated file vs. original -- `code --diff EfficientAndEffectiveExampleThings\Get-VMByAddress_forExample.ps1 EfficientAndEffectiveExampleThings\Get-VMByAddress_prodified.ps1`
- Visual Debugging of a PowerShell script:  inspect a script `EfficientAndEffectiveExampleThings\Get-VMByAddress.ps1`
