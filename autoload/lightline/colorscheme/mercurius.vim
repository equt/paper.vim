let s:s = &background

let s:fg = {}
let s:fg.primary    = {'dark': '#908f95', 'light': '#102C4E'}[s:s]
let s:fg.secondary  = {'dark': '#1d242d', 'light': '#F0F0F4'}[s:s]
let s:fg.contrast   = {'dark': '#6aa389', 'light': '#5e8d89'}[s:s]
let s:fg.warning    = {'dark': '#FFBD54', 'light': '#F2AE49'}[s:s]
let s:fg.error      = {'dark': '#FF3333', 'light': '#FFF333'}[s:s]
let s:fg.hint       = {'dark': '#353f4d', 'light': '#D2D2D9'}[s:s]

let s:bg = {}
let s:bg.primary    = {'dark': '#242B34', 'light': '#E4E4E8'}[s:s]
let s:bg.secondary  = {'dark': '#1D242D', 'light': '#F0F0F4'}[s:s]
let s:bg.contrast   = {'dark': '#7d7bad', 'light': '#7C758F'}[s:s]
let s:bg.normal     = {'dark': '#435c8a', 'light': '#3c5685'}[s:s]
let s:bg.insert     = {'dark': '#7d7bad', 'light': '#7C758F'}[s:s]
let s:bg.replace    = {'dark': '#634f4f', 'light': '#916e6e'}[s:s]
let s:bg.visual     = {'dark': '#68678a', 'light': '#565163'}[s:s]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [[s:fg.secondary, s:bg.normal], [s:fg.primary, s:bg.primary]]
let s:p.normal.right    = [[s:fg.primary, s:bg.primary], [s:fg.primary, s:bg.primary]]
let s:p.normal.middle   = [[s:bg.visual, s:bg.secondary]]
let s:p.normal.error    = [[s:fg.error, s:bg.primary]]
let s:p.normal.warning  = [[s:fg.warning, s:bg.primary]]
let s:p.inactive.left   = [[s:fg.hint, s:bg.secondary]]
let s:p.inactive.right  = [[s:fg.primary, s:bg.secondary]]
let s:p.inactive.middle = [[s:fg.primary, s:bg.secondary]]
let s:p.insert.left     = [[s:fg.secondary, s:bg.insert], [s:fg.primary, s:bg.primary]]
let s:p.replace.left    = [[s:fg.secondary, s:bg.replace], [s:fg.primary, s:bg.primary]]
let s:p.visual.left     = [[s:fg.secondary, s:bg.visual], [s:fg.primary, s:bg.primary]]
let s:p.tabline.left    = [[s:fg.primary, s:bg.primary]]
let s:p.tabline.tabsel  = [[s:fg.secondary, s:bg.contrast]]

let g:lightline#colorscheme#mercurius#palette = lightline#colorscheme#fill(s:p)
