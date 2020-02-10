#!/usr/bin/python2

from __future__ import print_function
import math


def main():
    # Pallet
    # green
    # accent_dark = "#585c4f"
    # accent = "#819a52"
    accent_light = "#94998a"
    # red
    positive_dark = "#7f0906"
    positive = "#9f424b"
    positive_light = "#993745"
    # brown
    neutral_dark = "#362016"
    neutral = "#806060"
    neutral_light = "#c0a0a0"
    # red to white
    negative_dark = "#c10138"
    negative = "#81553d"
    negative_light = "#ffffff"

    # Normal texts.
    colorscheme = Colorscheme('le_petit_chaperonrouge', neutral_dark)
    colorscheme.apply(neutral_dark, neutral_light,
                      ["Normal", "Folded", "FoldColumn", "SignColumn"])
    colorscheme.apply(None, add(neutral_dark, all_=+20), ["NonText"])
    colorscheme.apply(accent_light, neutral_dark, ["Visual"])
    # Values
    colorscheme.apply(None, positive_light,
                      ["Constant", "Boolean", "Float", "Number"])
    colorscheme.apply(None, negative_light,
                      ["Character", "String"])

    colorscheme.apply(None, positive, ["Function"])
    colorscheme.apply(None, neutral, ["Identifier"])

    colorscheme.apply(None, positive_light,
                      ["Statement", "cppCast"])
    colorscheme.apply(None, accent_light, ["Operator"])
    colorscheme.apply(None, positive,
                      ["Conditional", "Repeat", "Label", "Exception",
                       "Keyword"])
    colorscheme.apply(positive_light, positive_dark, ["Title"])
    colorscheme.apply(None, accent_light, ["SpecialKey"])

    colorscheme.apply(None, negative_light, ["Type"])
    colorscheme.apply(None, positive_light, ["StorageClass"])
    colorscheme.apply(None, add(positive_light, all_=10), ["Typedef"])
    # Bracket pair
    colorscheme.apply(positive_dark, positive_light, ["MatchParen"])
    # Comments TODO:
    colorscheme.apply(neutral, neutral_light, ["Comment"])
    colorscheme.apply(neutral, neutral_dark, ["SpecialComment"])
    colorscheme.apply(negative_dark, neutral_light, ["Todo"])
    # PreProcessor
    colorscheme.apply(None, negative_dark,
                      ["PreProc", "Define", "PreCondit"])
    colorscheme.apply(None, positive_light, ["Include"])

    # Special
    colorscheme.apply(None, accent_light, ["Special", "SpecialChar"])
    colorscheme.apply(None, negative_dark, ["Error"])

    # UI
    colorscheme.apply(add(neutral_dark, all_=10), None, ["CursorLine"])
    colorscheme.apply(add(neutral_dark, all_=10), positive_dark, ["TabLine"])
    colorscheme.apply(None, positive_dark, ["LineNr"])
    colorscheme.apply(neutral_dark, neutral_light, ["CursorColumn"])
    colorscheme.apply(neutral_dark, None, ["CursorLineNr"])
    # Menu
    colorscheme.apply(neutral, neutral_dark,
                      ["PMenuSbar", "PMenu", "WildMenu", "PMenu"])
    colorscheme.apply(add(neutral_dark, all_=-10), neutral, ["PMenuThumb"])
    colorscheme.apply(accent_light, neutral_dark, ["PMenuSel"])
    # Search
    colorscheme.apply(None, negative, ["Question"])
    colorscheme.apply(negative, neutral_light, ["Search", "IncSearch"])
    # Split bar
    colorscheme.apply(neutral_dark, neutral_dark, ["VertSplit"])
    colorscheme.apply(None, neutral_dark, ["StatusLineTermNC", "StatusLineNC"])
    colorscheme.apply(None, negative, ["StatusLineTerm", "StatusLine"])
    # Diff
    colorscheme.apply(accent_light, neutral_dark, ["DiffAdd"])
    colorscheme.apply(negative_dark, negative_light, ["DiffDelete"])
    colorscheme.apply(neutral_light, neutral, ["DiffChange"])
    colorscheme.apply(accent_light, neutral, ["DiffText"])
    colorscheme.apply(None, negative_light, ["Directory"])
    # Syntax
    colorscheme.apply(negative_dark, negative_light, ["SpellBad"])
    colorscheme.apply(negative_dark, negative, ["SpellCap"])


def qubic(hexcolor):
    """Convert hexcolor to term 256 color."""
    r = int(hexcolor[1:3], 16)
    g = int(hexcolor[3:5], 16)
    b = int(hexcolor[5:7], 16)
    if math.fabs(r - g) < 5 and math.fabs(g - b) < 5:
        m = (r + g + b) / 3
        level = m * 25 / 16**2
        if level <= 0:
            return 232
        elif level >= 24:
            return 231
        else:
            return 231 + level
    else:
        rlevel = r * 6 / 16**2
        glevel = g * 6 / 16**2
        blevel = b * 6 / 16**2
        return 16 + rlevel * 6 ** 2 + glevel * 6 + blevel


def add(hexcolor, r=0, g=0, b=0, all_=0):
    rv = hexcolor_range(int(hexcolor[1:3], 16) + r + all_)
    gv = hexcolor_range(int(hexcolor[3:5], 16) + g + all_)
    bv = hexcolor_range(int(hexcolor[5:7], 16) + b + all_)
    return '#{:06x}'.format(rv * 16**4 + gv * 16**2 + bv)


def hexcolor_range(x):
    if 0 <= x <= 255:
        return x
    elif x < 0:
        return 0
    else:
        return 255


class Colorscheme(object):
    def __init__(self, name, background=''):
        self.background = background
        print("""if v:version >= 700
if &background ==# 'dark' || &background ==# 'light'
else
    set background = dark
endif

let g:colors_name = "{colors_name}"
""".format(colors_name=name))

    def __del__(self):
        print("""endif""")

    def apply(self, background, foreground, labels=None, option="NONE"):
        if len(labels) == 0:
            return
        background = background if background else "NONE"
        foreground = foreground if foreground else "NONE"
        cb = qubic(background) if not background == "NONE" else "NONE"
        cf = qubic(foreground) if not foreground == "NONE" else "NONE"
        out = ("hi {} guifg={} guibg={} gui={} "
               "ctermfg={} ctermbg={} cterm={}")
        if background == self.background:
            print(out.format(labels[0], foreground, background, option,
                             cf, "NONE", option))
        else:
            print(out.format(labels[0], foreground, background, option,
                             cf, cb, option))
        for label in labels[1:]:
            print("hi! link {} {}".format(label, labels[0]))


if __name__ == '__main__':
    main()
