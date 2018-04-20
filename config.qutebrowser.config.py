
# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html
color0 = '#<COLOR0>'
color13 = '#<COLOR13>'
color14 = '#<COLOR14>'
color15 = '#<COLOR15>'
color9 = '#<COLOR9>'
color8 = '#<COLOR8>'
colora = '#<COLORACT>'
colori = '#<COLORIN>'

# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()

c.fonts.tabs = '11pt Roboto Monospace'
c.fonts.statusbar =  '11pt Roboto Monospace'
c.fonts.completion.entry = '11pt Roboto Monospace'

# Aliases for commands. The keys of the given dictionary are the
# aliases, while the values are the commands they map to.
# Type: Dict
c.aliases = {'q': 'quit', 'w': 'session-save', 'wq': 'quit --save'}

# Always restore open sites when qutebrowser is reopened.
# Type: Bool
c.auto_save.session = True

# Background color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.bg = color8
c.colors.statusbar.command.fg = color15

c.colors.statusbar.normal.bg = color8
c.colors.statusbar.normal.fg = color15

c.colors.statusbar.url.success.http.fg = color13
c.colors.statusbar.url.success.https.fg = color14
c.colors.statusbar.url.success.http.fg = color13
c.colors.statusbar.url.success.https.fg = color14
c.colors.statusbar.url.error.fg = color9

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = colori
c.colors.tabs.bar.bg = color8

# Color for the tab indicator on errors.
# Type: QtColor
c.colors.tabs.indicator.error = 'red'

# Color gradient start for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.start = 'green'

# Color gradient end for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.stop = 'green'

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = colori

# Background color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.bg = colora

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = colora

# Open new windows in private browsing mode which does not record
# visited pages.
# Type: Bool
c.content.private_browsing = False

# Editor (and arguments) to use for the `open-editor` command. The
# following placeholders are defined: * `{file}`: Filename of the file
# to be edited. * `{line}`: Line in which the caret is found in the
# text. * `{column}`: Column in which the caret is found in the text. *
# `{line0}`: Same as `{line}`, but starting from index 0. * `{column0}`:
# Same as `{column}`, but starting from index 0.
# Type: ShellCommand
c.editor.command = ['gvim', '-f', '{file}', '-c', 'normal {line}G{column0}l']

# Leave insert mode if a non-editable element is clicked.
# Type: Bool
c.input.insert_mode.auto_leave = False

# Automatically enter insert mode if an editable element is focused
# after loading the page.
# Type: Bool
c.input.insert_mode.auto_load = False

# Switch to insert mode when clicking flash and other plugins.
# Type: Bool
c.input.insert_mode.plugins = True

# Include hyperlinks in the keyboard focus chain when tabbing.
# Type: Bool
c.input.links_included_in_focus_chain = True

# Enable smooth scrolling for web pages. Note smooth scrolling does not
# work with the `:scroll-px` command.
# Type: Bool
c.scrolling.smooth = True

# Padding (in pixels) around text for tabs.
# Type: Padding
c.tabs.padding = {'bottom': 2, 'left': 5, 'right': 5, 'top': 2}

# Position of the tab bar.
# Type: Position
# Valid values:
#   - top
#   - bottom
#   - left
#   - right
c.tabs.position = 'top'

# Format to use for the tab title. The following placeholders are
# defined:  * `{perc}`: Percentage as a string like `[10%]`. *
# `{perc_raw}`: Raw percentage, e.g. `10`. * `{title}`: Title of the
# current web page. * `{title_sep}`: The string ` - ` if a title is set,
# empty otherwise. * `{index}`: Index of this tab. * `{id}`: Internal
# tab ID of this tab. * `{scroll_pos}`: Page scroll position. *
# `{host}`: Host of the current web page. * `{backend}`: Either
# ''webkit'' or ''webengine'' * `{private}`: Indicates when private mode
# is enabled. * `{current_url}`: URL of the current web page. *
# `{protocol}`: Protocol (http/https/...) of the current web page.
# Type: FormatString
c.tabs.title.format = '[{index}] {title}'

# Format to use for the tab title for pinned tabs. The same placeholders
# like for `tabs.title.format` are defined.
# Type: FormatString
c.tabs.title.format_pinned = '[{index}]'

# Width (in pixels or as percentage of the window) of the tab bar if
# it's vertical.
# Type: PercOrInt
c.tabs.width = '10%'

# Page to open if :open -t/-b/-w is used without URL. Use `about:blank`
# for a blank page.
# Type: FuzzyUrl
c.url.default_page = 'https://google.com'

# URL segments where `:navigate increment/decrement` will search for a
# number.
# Type: FlagList
# Valid values:
#   - host
#   - port
#   - path
#   - query
#   - anchor
c.url.incdec_segments = ['path', 'query']

# Search engines which can be used via the address bar. Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` signs. The search engine named
# `DEFAULT` is used when `url.auto_search` is turned on and something
# else than a URL was entered to be opened. Other search engines can be
# used by prepending the search engine name to the search term, e.g.
# `:open google qutebrowser`.
# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://www.google.com/search?hl=en&q={}', 'y': 'https://youtube.com/results?search_query={}'}

# Page(s) to open at the start.
# Type: List of FuzzyUrl, or FuzzyUrl
c.url.start_pages = ['https://google.com']

c.scrolling.smooth = False
c.tabs.background = True
