import pango

from terminatorlib.util import dbg
import terminatorlib.plugin as plugin

# AVAILABLE must contain a list of all the classes that you want exposed
AVAILABLE = ['AutoFontSizePlugin']

class Resizer:
    def __init__(self, term):
        self.term = term
        self.term.vte.connect('size-allocate', self.on_resize)

    def on_resize(self, widget, allocation):
        # current = self.term.vte.get_font()
        config = pango.FontDescription(self.term.config['font'])
        # dbg(current.get_size())
        dbg(config.get_size())
        dbg(allocation)
        if allocation.width < 600 or allocation.height < 400:
            config.set_size(int(config.get_size() * 0.85))
        self.term.set_font(config)

class AutoFontSizePlugin(plugin.Plugin):
    capabilities = ['autofontsize']

    def __init__(self):
        terminator = plugin.Terminator()
        for term in terminator.terminals:
            dbg(term)
            Resizer(term) # it also connects signal handler.
        pass

    def unload(self):
        # IDK how to disconnect 'size-allocate' from vte
        pass

    def do_test(self):
        dbg('TestPluginWin')