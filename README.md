

# About

This is a collection of snippets for Twine with the SugarCube format made with AutoHotkey. It work everywhere that allows writing. Made to use with Scrivener.

*(Also i wanted to have a auto-complete feature but i don't have the skills... Yet)*

# Usage
Install [Autohotkey](https://www.autohotkey.com/) if you haven't already.

Open `Sugarcube Essentials.ahk` and you're ready to go.

Also, you may open `Sugarcube Essentials.exe` but it is not safe, do it if you trust me. It's only in there for accessibility. 

# How it works

The way it work is that after you type the initial trigger, anything else will be placed correspondingly.

All the macros initialize with a  `:` (Double Colon ) + the macro name, then whatever you type after becomes modifiers.

When you type `:timed5s` it becomes: `<<timed 5s t8n>> | <</timed>>` automatically (the | symbol represent the place the cursor ends).

being `:timed` the trigger and `5s` the modifier. The script completes the rest and put the modifier where it needs to, making dynamics snippets.

Also, every coma `,` is replaced with a space because  the space key is used for ending the hotstring (also, weird thing happened when i try other alternatives)

### What it's replacing?

You can ignore this but i feel the need to explain were the modifiers actually ends.

in short it goes in the options of the macro, it wraps itself in single quotes where it needs a name and put itself 'as if' where it needs a variable (this way you can decide if the variable is a temporal `_` or a normal `$` one).

## Examples

`:append#someId`  becomes `<<append 'someId't8n>>|<</append>>`

`:append.someClass`  becomes `<<append '.someClass't8n>>|<</append>>`

`:append#someId,.someClass`  becomes `<<append 'someId .Someclass't8n>>|<</append>>`

`:buttonButtonName`  becomes `<<button 'ButtonName'>>|<</button>>`

I took the liberty to add extra elements for my personal use, mainly automatically adding the `<label>` tag in some macros.

So `:checkbox$var`  becomes `<label><<checkbox $var false true>>|</label>`.

`:set$Example,=,"string"` becomes `<<set $Example = "string">>`

_Special hotstring_:

`:<<` is a general use snippet, it wraps the modifier in a opening and closing Sugarcube-Like tag.

`:<<someNewMacro`becomes `<<someNewMacro>>|<</someNewMacro>>`

### Exceptions

The `:linkappend` was shorten to `:lapp` (link - append) as well with `:linkreplace` shorten to `:lrep` and`:linprepend` to `:lprep` because i use them regularly, everything else is normal.

The `:nobr` hotstring is automatic because does not need modifiers, also with `:br `.

# Limitations

Specials characters `[]{}` may need an escaped char in order to work depending on the software.

The script is simulating the keystrokes so it may interfere if you have other scripts.

Also, this was made for scrivener but it can work anywhere, just i don't know how it will respond (some keystrokes may execute other commands).



# Editing

In `Sugarcube Essentials.ahk`  are the hotstrings, you can add, modify or delete whatever you like, however, there are thing you need to keep in mind.  

![https://prnt.sc/yL6_LdWBTylc](https://prnt.sc/yL6_LdWBTylc)

`endchars` are the key wich fire the hotstring, it's the name of the key as listed in [the AutoHotkey Key List](https://www.autohotkey.com/docs/KeyList.htm) wrapped in curvy brackets `{}`.

We use `:*B0:` to prevent AHK from deleting the pessed keys (we will need to do that later manually) and to prepare the hotstring. The actual hotstring comes after the second set of double colons (the red part) and is finished with two double colons.

Then we jump to `Label` (wich i use as a function, dont jugde me, im not AHK proeficient) with `Gosub,` and finally we return.

We need all this to make it work as intended, i reccomend you to copy-paste a hotstring including the return and modified just the trigger.

After adding a trigger, we need to modify `SugarcubeCases.ahk` to add the new rule.

![https://prnt.sc/L6CvEuu38GQW](https://prnt.sc/L6CvEuu38GQW)

On line 3 you can change the character (`,`) that will be replaced for a space.

On line 6 and below are the switch cases, you can add your own case in here.

Then we declare a variable `text` which are the characters the hotstring is going to make regardless the modifier, speaking of which, you can add the variable `%modifier%` inside of the variable `text` to place the content you want the modifier to... Modify.

We then use `Send` to print in the editor the characters.

If you want your cursor to end in a specific place you can put the `|` character inside of `text` and, after `Send` use `Gosub, cursorPos` to make the cursor go back until it reaches the `|` char, deletes it and stays there.

# Credits

This script it's actually a modification of other script, but i lost the original post. They made it possible to actually use the extras keys.

**What i added:**

* The default hotstrings for the SugarCube macros.

* The code to find the `|` char and put the cursor in there at the end of hotsring.
* The part to replace the comas with spaces.
