-- Setup nvim-cmp.
local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
  return
end

npairs.setup {
  check_ts = true,
  ts_config = {
    lua = { "string", "source" },
    javascript = { "string", "template_string" },
    java = false,
  },
  disable_filetype = { "TelescopePrompt", "spectre_panel" },
  fast_wrap = {
    map = "<M-e>",
    chars = { "{", "[", "(", '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
    offset = 0, -- Offset from pattern match
    end_key = "$",
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    highlight = "PmenuSel",
    highlight_grey = "LineNr",
  },
}

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })


times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.010  000.010: --- NVIM STARTING ---
000.117  000.107: event init
000.213  000.096: early init
000.267  000.054: locale set
000.307  000.039: init first window
000.634  000.327: inits 1
000.645  000.012: window checked
000.648  000.002: parsing arguments
001.235  000.099  000.099: require('vim.shared')
001.386  000.060  000.060: require('vim._meta')
001.389  000.149  000.089: require('vim._editor')
001.391  000.288  000.040: require('vim._init_packages')
001.393  000.457: init lua interpreter
001.432  000.039: expanding arguments
001.481  000.048: inits 2
001.826  000.346: init highlight
001.828  000.002: waiting for UI
002.893  001.065: done waiting for UI
002.907  000.015: init screen for UI
003.072  000.165: init default mappings
003.085  000.013: init default autocommands
004.208  000.074  000.074: sourcing /usr/share/nvim/runtime/ftplugin.vim
004.444  000.052  000.052: sourcing /usr/share/nvim/runtime/indent.vim
004.549  000.014  000.014: sourcing /usr/share/nvim/archlinux.vim
004.553  000.046  000.032: sourcing /etc/xdg/nvim/sysinit.vim
006.126  001.518  001.518: require('user.options')
006.334  000.204  000.204: require('user.keymaps')
008.323  000.326  000.326: require('packer.util')
008.406  001.907  001.581: require('packer')
009.808  000.578  000.578: require('packer.log')
009.815  000.847  000.269: require('packer.async')
010.346  000.187  000.187: require('packer.result')
010.352  000.534  000.347: require('packer.jobs')
010.362  001.901  000.520: require('packer.plugin_utils')
010.744  000.369  000.369: require('packer.snapshot')
011.107  004.769  000.593: require('user.plugins')
011.497  000.267  000.267: require('catppuccin')
012.498  001.282  001.015: sourcing /home/es/.local/share/nvim/site/pack/packer/start/catppuccin/colors/catppuccin-macchiato.vim
012.510  001.398  000.117: require('user.colorscheme')
014.200  000.124  000.124: require('cmp.utils.debug')
014.902  000.349  000.349: require('cmp.utils.char')
014.924  000.719  000.371: require('cmp.utils.str')
015.087  000.161  000.161: require('cmp.utils.pattern')
015.971  000.313  000.313: require('cmp.utils.misc')
016.104  000.128  000.128: require('cmp.utils.buffer')
016.298  000.191  000.191: require('cmp.utils.api')
016.309  001.030  000.398: require('cmp.utils.keymap')
016.314  001.224  000.194: require('cmp.utils.feedkeys')
016.553  000.236  000.236: require('cmp.utils.async')
017.004  000.138  000.138: require('cmp.types.cmp')
017.299  000.291  000.291: require('cmp.types.lsp')
017.411  000.108  000.108: require('cmp.types.vim')
017.414  000.655  000.118: require('cmp.types')
017.556  000.139  000.139: require('cmp.utils.cache')
017.561  001.004  000.210: require('cmp.context')
018.650  000.270  000.270: require('cmp.config.mapping')
019.235  000.384  000.384: require('cmp.config.compare')
019.241  000.585  000.201: require('cmp.config.default')
019.260  001.208  000.352: require('cmp.config')
020.449  000.408  000.408: require('cmp.matcher')
020.461  001.198  000.790: require('cmp.entry')
020.471  002.908  000.502: require('cmp.source')
021.063  000.189  000.189: require('cmp.utils.event')
021.942  000.525  000.525: require('cmp.utils.window')
021.949  000.879  000.354: require('cmp.view.docs_view')
022.865  000.174  000.174: require('cmp.utils.autocmd')
022.883  000.932  000.758: require('cmp.view.custom_entries_view')
023.368  000.482  000.482: require('cmp.view.wildmenu_entries_view')
023.722  000.350  000.350: require('cmp.view.native_entries_view')
023.999  000.273  000.273: require('cmp.view.ghost_text_view')
024.019  003.545  000.439: require('cmp.view')
024.077  010.810  000.888: require('cmp.core')
024.387  000.140  000.140: require('cmp.config.sources')
024.537  000.145  000.145: require('cmp.config.window')
024.631  011.917  000.822: require('cmp')
027.536  000.064  000.064: require('luasnip.session')
028.129  000.588  000.588: require('luasnip.util.util')
028.192  000.059  000.059: require('luasnip.util.types')
028.519  000.149  000.149: require('luasnip.util.ext_opts')
028.558  000.363  000.214: require('luasnip.nodes.util')
028.618  000.058  000.058: require('luasnip.util.events')
028.634  001.678  000.546: require('luasnip.nodes.node')
029.087  000.119  000.119: require('luasnip.util.extend_decorator')
029.101  000.464  000.345: require('luasnip.nodes.insertNode')
029.220  000.117  000.117: require('luasnip.nodes.textNode')
029.436  000.210  000.210: require('luasnip.util.mark')
030.203  000.552  000.552: require('luasnip.util._builtin_vars')
030.310  000.101  000.101: require('vim.inspect')
030.360  000.921  000.268: require('luasnip.util.environ')
030.511  000.147  000.147: require('luasnip.util.pattern_tokenizer')
030.602  000.088  000.088: require('luasnip.util.dict')
030.920  000.315  000.315: require('luasnip.session.snippet_collection')
030.969  005.437  001.498: require('luasnip.nodes.snippet')
031.229  000.076  000.076: require('luasnip.loaders._caches')
031.440  000.206  000.206: require('luasnip.util.path')
031.473  000.500  000.217: require('luasnip.loaders')
031.685  000.203  000.203: require('luasnip.util.log')
031.961  000.262  000.262: require('luasnip.nodes.functionNode')
032.469  000.503  000.503: require('luasnip.nodes.choiceNode')
032.936  000.462  000.462: require('luasnip.nodes.dynamicNode')
033.252  000.311  000.311: require('luasnip.nodes.restoreNode')
034.110  000.237  000.237: require('luasnip.util.parser.neovim_ast')
034.957  000.174  000.174: require('luasnip.util.directed_graph')
034.971  001.541  001.130: require('luasnip.util.parser.ast_utils')
035.454  000.099  000.099: require('luasnip.util.functions')
035.464  000.490  000.391: require('luasnip.util.parser.ast_parser')
036.015  000.548  000.548: require('luasnip.util.parser.neovim_parser')
036.176  000.156  000.156: require('luasnip.util.str')
036.184  002.927  000.192: require('luasnip.util.parser')
039.698  000.225  000.225: require('vim.treesitter.language')
039.720  001.102  000.877: require('vim.treesitter.query')
040.369  000.645  000.645: require('vim.treesitter.languagetree')
040.413  002.303  000.555: require('vim.treesitter')
040.712  003.891  001.588: require('nvim-treesitter.parsers')
041.847  000.411  000.411: require('nvim-treesitter.utils')
041.858  001.143  000.732: require('nvim-treesitter.ts_utils')
041.863  005.196  000.162: require('luasnip.extras.filetype_functions')
042.011  000.103  000.103: require('luasnip.nodes.absolute_indexer')
042.370  000.355  000.355: require('luasnip.extras')
042.611  000.236  000.236: require('luasnip.extras.fmt')
042.774  000.081  000.081: require('luasnip.extras.conditions')
042.823  000.045  000.045: require('luasnip.extras.conditions.show')
042.830  000.180  000.054: require('luasnip.extras.conditions.expand')
042.833  000.218  000.038: require('luasnip.extras.expand_conditions')
042.941  000.106  000.106: require('luasnip.extras.postfix')
043.693  007.506  001.292: require('luasnip.config')
043.698  019.063  000.954: require('luasnip')
044.318  000.252  000.252: require('luasnip.loaders.util')
044.452  000.129  000.129: require('luasnip.nodes.snippetProxy')
044.467  000.766  000.384: require('luasnip/loaders/from_vscode')
053.258  040.745  008.998: require('user.cmp')
056.357  000.213  000.213: require('vim.lsp.log')
057.337  000.007  000.007: require('vim.F')
057.341  000.980  000.973: require('vim.lsp.protocol')
059.062  000.319  000.319: require('vim.lsp._snippet')
059.210  000.146  000.146: require('vim.highlight')
059.223  001.881  001.416: require('vim.lsp.util')
059.238  003.597  000.523: require('vim.lsp.handlers')
059.651  000.412  000.412: require('vim.lsp.rpc')
059.877  000.224  000.224: require('vim.lsp.sync')
060.395  000.515  000.515: require('vim.lsp.buf')
060.582  000.185  000.185: require('vim.lsp.diagnostic')
060.796  000.213  000.213: require('vim.lsp.codelens')
060.851  006.678  001.533: require('vim.lsp')
060.916  007.190  000.512: require('lspconfig.util')
060.918  007.514  000.325: require('lspconfig.configs')
060.920  007.615  000.100: require('lspconfig')
061.175  000.072  000.072: require('mason-core.path')
061.203  000.173  000.101: require('mason.settings')
061.498  000.122  000.122: require('mason-core.functional')
061.672  000.054  000.054: require('mason-core.functional.data')
061.677  000.170  000.116: require('mason-core.functional.function')
061.750  000.062  000.062: require('mason-core.functional.relation')
061.825  000.069  000.069: require('mason-core.functional.logic')
061.836  000.631  000.208: require('mason-core.platform')
061.838  000.875  000.070: require('mason')
062.209  000.161  000.161: require('mason-core.functional.list')
062.225  000.335  000.174: require('mason.api.command')
062.538  000.175  000.175: require('mason-core.log')
062.542  000.313  000.138: require('mason-lspconfig')
062.613  000.069  000.069: require('mason-lspconfig.settings')
062.780  000.053  000.053: require('mason-core.notify')
062.785  000.164  000.111: require('mason-lspconfig.lspconfig_hook')
062.996  000.100  000.100: require('mason-core.functional.table')
063.038  000.247  000.147: require('mason-lspconfig.mappings.server')
063.461  000.183  000.183: require('mason-core.async')
063.523  000.059  000.059: require('mason-core.async.uv')
063.529  000.384  000.142: require('mason-core.fs')
063.627  000.097  000.097: require('mason-core.optional')
063.719  000.090  000.090: require('mason-core.EventEmitter')
063.886  000.165  000.165: require('mason-registry.index')
063.895  000.855  000.119: require('mason-registry')
063.953  000.056  000.056: require('mason-lspconfig.server_config_extensions')
064.088  000.132  000.132: require('lspconfig.server_configurations.omnisharp')
064.237  000.088  000.088: require('mason-lspconfig.ensure_installed')
064.672  000.114  000.114: require('mason-core.result')
065.187  000.192  000.192: require('mason-core.process')
065.245  000.363  000.171: require('mason-core.spawn')
065.364  000.116  000.116: require('mason-core.receipt')
065.458  000.089  000.089: require('mason-core.functional.string')
065.471  000.798  000.230: require('mason-core.installer.context')
065.561  000.088  000.088: require('mason-core.installer.linker')
065.644  000.081  000.081: require('mason-core.async.control')
065.648  001.239  000.158: require('mason-core.installer')
065.837  000.188  000.188: require('mason-core.installer.handle')
066.398  000.104  000.104: require('mason-core.managers.powershell')
066.401  000.230  000.127: require('mason-core.fetch')
066.403  000.289  000.058: require('mason-core.managers.cargo.client')
066.738  000.169  000.169: require('mason-core.managers.std')
066.964  000.106  000.106: require('mason-core.providers')
066.974  000.234  000.128: require('mason-core.managers.github.client')
066.979  000.575  000.172: require('mason-core.managers.github')
066.992  001.054  000.190: require('mason-core.managers.cargo')
067.191  000.198  000.198: require('mason-core.managers.composer')
067.372  000.178  000.178: require('mason-core.managers.gem')
067.476  000.103  000.103: require('mason-core.managers.git')
067.639  000.161  000.161: require('mason-core.managers.go')
067.797  000.156  000.156: require('mason-core.managers.luarocks')
067.939  000.140  000.140: require('mason-core.managers.npm')
068.119  000.178  000.178: require('mason-core.managers.pip3')
068.124  002.284  000.117: require('mason-core.package.version-check')
068.128  003.889  000.178: require('mason-core.package')
068.234  000.097  000.097: require('mason-registry.lua-language-server')
068.350  000.068  000.068: require('mason-registry.pyright')
068.425  000.066  000.066: require('mason-registry.json-lsp')
068.660  000.069  000.069: require('mason-core.functional.number')
068.677  000.248  000.179: require('mason-lspconfig.api.command')
069.167  000.135  000.135: require('cmp_nvim_lsp.source')
069.173  000.290  000.155: require('cmp_nvim_lsp')
069.177  000.497  000.207: require('user.lsp.handlers')
069.227  000.043  000.043: require('user.lsp.settings.sumneko_lua')
069.350  000.112  000.112: require('lspconfig.server_configurations.sumneko_lua')
069.799  000.021  000.021: require('user.lsp.settings.pyright')
070.145  000.327  000.327: require('lspconfig.server_configurations.pyright')
070.550  000.075  000.075: require('lspconfig.server_configurations.jsonls')
070.765  009.844  001.268: require('user.lsp.mason')
071.822  001.031  001.031: require('vim.diagnostic')
072.339  000.242  000.242: require('null-ls.utils')
072.348  000.384  000.142: require('null-ls.config')
072.489  000.072  000.072: require('null-ls.helpers.cache')
072.688  000.197  000.197: require('null-ls.helpers.diagnostics')
072.757  000.067  000.067: require('null-ls.helpers.formatter_factory')
073.143  000.106  000.106: require('null-ls.logger')
073.263  000.118  000.118: require('null-ls.state')
073.267  000.509  000.284: require('null-ls.helpers.generator_factory')
073.525  000.117  000.117: require('null-ls.helpers.command_resolver')
073.528  000.259  000.142: require('null-ls.helpers.make_builtin')
073.630  000.101  000.101: require('null-ls.helpers.range_formatting_args_factory')
073.632  001.283  000.078: require('null-ls.helpers')
074.302  000.146  000.146: require('null-ls.methods')
074.309  000.373  000.227: require('null-ls.diagnostics')
074.316  000.682  000.309: require('null-ls.sources')
074.399  000.081  000.081: require('null-ls.builtins')
074.402  002.538  000.109: require('null-ls')
074.512  000.109  000.109: require('null-ls.builtins.formatting.prettier')
074.600  000.074  000.074: require('null-ls.builtins.formatting.black')
074.729  000.114  000.114: require('null-ls.builtins.formatting.stylua')
075.128  000.214  000.214: require('null-ls.client')
075.153  003.327  000.278: require('user.lsp.null-ls')
075.155  021.892  000.076: require('user.lsp')
076.072  000.183  000.183: require('nvim-treesitter.tsrange')
076.175  000.100  000.100: require('nvim-treesitter.caching')
076.187  000.619  000.335: require('nvim-treesitter.query')
076.209  001.021  000.402: require('nvim-treesitter.configs')
077.018  000.219  000.219: require('nvim-treesitter.info')
077.306  000.285  000.285: require('nvim-treesitter.shell_command_selectors')
077.333  001.117  000.613: require('nvim-treesitter.install')
091.915  016.758  014.620: require('user.treesitter')
092.176  087.596  000.313: sourcing /home/es/.config/nvim/init.lua
092.183  001.330: sourcing vimrc file(s)
092.489  000.011  000.011: sourcing /home/es/.local/share/nvim/site/pack/packer/start/LuaSnip/ftdetect/snippets.vim
092.647  000.009  000.009: sourcing /usr/share/vim/vimfiles/ftdetect/PKGBUILD.vim
092.667  000.009  000.009: sourcing /usr/share/vim/vimfiles/ftdetect/SRCINFO.vim
092.820  000.509  000.481: sourcing /usr/share/nvim/runtime/filetype.lua
092.849  000.014  000.014: sourcing /usr/share/nvim/runtime/filetype.vim
093.067  000.074  000.074: sourcing /usr/share/nvim/runtime/syntax/synload.vim
093.175  000.267  000.193: sourcing /usr/share/nvim/runtime/syntax/syntax.vim
093.848  000.118  000.118: sourcing /usr/share/nvim/runtime/plugin/gzip.vim
093.870  000.008  000.008: sourcing /usr/share/nvim/runtime/plugin/health.vim
094.202  000.134  000.134: sourcing /usr/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
094.269  000.389  000.254: sourcing /usr/share/nvim/runtime/plugin/matchit.vim
094.387  000.106  000.106: sourcing /usr/share/nvim/runtime/plugin/matchparen.vim
094.657  000.258  000.258: sourcing /usr/share/nvim/runtime/plugin/netrwPlugin.vim
094.789  000.007  000.007: sourcing /home/es/.local/share/nvim/rplugin.vim
094.795  000.112  000.105: sourcing /usr/share/nvim/runtime/plugin/rplugin.vim
094.855  000.044  000.044: sourcing /usr/share/nvim/runtime/plugin/shada.vim
094.890  000.016  000.016: sourcing /usr/share/nvim/runtime/plugin/spellfile.vim
094.984  000.078  000.078: sourcing /usr/share/nvim/runtime/plugin/tarPlugin.vim
095.065  000.060  000.060: sourcing /usr/share/nvim/runtime/plugin/tohtml.vim
095.093  000.013  000.013: sourcing /usr/share/nvim/runtime/plugin/tutor.vim
095.220  000.111  000.111: sourcing /usr/share/nvim/runtime/plugin/zipPlugin.vim
095.740  000.450  000.450: sourcing /home/es/.config/nvim/plugin/packer_compiled.lua
095.965  000.089  000.089: sourcing /usr/share/nvim/runtime/plugin/man.lua
095.996  001.172: loading rtp plugins
096.322  000.132  000.132: sourcing /home/es/.local/share/nvim/site/pack/packer/start/LuaSnip/plugin/luasnip.vim
097.645  000.852  000.852: require('cmp.utils.highlight')
097.997  001.357  000.506: sourcing /home/es/.local/share/nvim/site/pack/packer/start/nvim-cmp/plugin/cmp.lua
098.440  000.327  000.327: sourcing /home/es/.local/share/nvim/site/pack/packer/start/nvim-lspconfig/plugin/lspconfig.lua
098.833  000.143  000.143: require('nvim-treesitter.statusline')
099.147  000.311  000.311: require('nvim-treesitter.query_predicates')
099.150  000.572  000.117: require('nvim-treesitter')
099.687  001.161  000.590: sourcing /home/es/.local/share/nvim/site/pack/packer/start/nvim-treesitter/plugin/nvim-treesitter.lua
099.793  000.022  000.022: sourcing /home/es/.local/share/nvim/site/pack/packer/start/plenary.nvim/plugin/plenary.vim
099.916  000.919: loading packages
100.724  000.055  000.055: require('cmp_buffer.timer')
100.732  000.391  000.335: require('cmp_buffer.buffer')
100.736  000.561  000.170: require('cmp_buffer.source')
100.737  000.594  000.034: require('cmp_buffer')
100.767  000.639  000.044: sourcing /home/es/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/plugin/cmp_buffer.lua
101.015  000.174  000.174: require('cmp_cmdline')
101.030  000.211  000.037: sourcing /home/es/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/plugin/cmp_cmdline.lua
101.108  000.022  000.022: sourcing /home/es/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua
101.259  000.087  000.087: require('cmp_nvim_lua')
101.275  000.115  000.027: sourcing /home/es/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua
101.517  000.178  000.178: require('cmp_path')
101.530  000.202  000.023: sourcing /home/es/.local/share/nvim/site/pack/packer/start/cmp-path/after/plugin/cmp_path.lua
101.741  000.135  000.135: require('cmp_luasnip')
101.765  000.180  000.045: sourcing /home/es/.local/share/nvim/site/pack/packer/start/cmp_luasnip/after/plugin/cmp_luasnip.lua
101.767  000.484: loading after plugins
101.778  000.010: inits 3
103.087  001.309: reading ShaDa
103.274  000.133  000.133: require('luasnip.loaders.from_lua')
103.512  000.178  000.178: require('luasnip.loaders.from_snipmate')
103.713  000.183  000.183: require('luasnip.loaders.from_vscode')
103.727  000.147: opening buffers
103.750  000.023: BufEnter autocommands
103.753  000.002: editing files in windows
103.826  000.073: VimEnter autocommands
103.828  000.002: UIEnter autocommands
104.231  000.268  000.268: sourcing /usr/share/nvim/runtime/autoload/provider/clipboard.vim
104.237  000.140: before starting main loop
4138.722  4034.485: first screen update
4138.730  000.007: --- NVIM STARTED ---
