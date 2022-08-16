let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Code/typing-meetup
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +44 typing_meetup/api_final.py
badd +24 setup.py
badd +49 term://~/Code/typing-meetup//585084:fish
badd +9 slides/001_aboutme.md
badd +1 slides/002_types.md
badd +1 term://~/Code/typing-meetup//589449:fish
badd +19 term://~/Code/typing-meetup//589623:fish
badd +8 typing_meetup/slide_002.py
badd +1 slides/003_annotations.md
badd +1 term://~/Code/typing-meetup//593352:ipython
badd +1 typing_meetup/slide_001.py
badd +1 slides/003_types.md
badd +21 typing_meetup/slide_003.py
badd +22 slides/004_annotations.md
badd +1 slides/002_motivation.md
badd +15 typing_meetup/slide_004.py
badd +1 slides/005_library_functions.py
badd +20 slides/005_library_functions.md
badd +21 typing_meetup/slide_005.py
badd +14 term://~/Code/typing-meetup//600107:fish
badd +8 typing_meetup/slide_005_2.py
badd +23 term://~/Code/typing-meetup//603480:fish
badd +8 slides/006_json_api.md
badd +3 typing_meetup/slide_006.py
badd +19 slides/007_typed_dict.md
badd +32 typing_meetup/slide_007.py
badd +1 term://~/Code/typing-meetup//608380:fish
badd +16 slides/008_lessons.md
badd +14 typing_meetup/slide_008.py
badd +35 ../tralis/tralis-core/tralis_core/api_models.py
badd +1 ../tralis/tralis-worker/tralis_worker/views/livemap.py
badd +4 /tmp/t.py
badd +29 ../tralis/tralis-worker/tralis_worker/trains/train.py
badd +1 ../tralis/tralis-api/tralis_api/tracker_rest_api.py
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit slides/001_aboutme.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 32 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 90 + 79) / 158)
exe '2resize ' . ((&lines * 32 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 67 + 79) / 158)
argglobal
balt typing_meetup/slide_001.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 16 - ((15 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 16
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("typing_meetup/slide_001.py", ":p")) | buffer typing_meetup/slide_001.py | else | edit typing_meetup/slide_001.py | endif
if &buftype ==# 'terminal'
  silent file typing_meetup/slide_001.py
endif
balt slides/001_aboutme.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 020|
wincmd w
exe '1resize ' . ((&lines * 32 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 90 + 79) / 158)
exe '2resize ' . ((&lines * 32 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 67 + 79) / 158)
tabnext
edit slides/002_motivation.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 68 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 89 + 79) / 158)
argglobal
balt typing_meetup/slide_002.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 07|
wincmd w
argglobal
if bufexists(fnamemodify("typing_meetup/slide_002.py", ":p")) | buffer typing_meetup/slide_002.py | else | edit typing_meetup/slide_002.py | endif
if &buftype ==# 'terminal'
  silent file typing_meetup/slide_002.py
endif
balt slides/002_motivation.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 8 - ((7 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 026|
wincmd w
exe 'vert 1resize ' . ((&columns * 68 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 89 + 79) / 158)
tabnext
edit slides/003_types.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 32 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 90 + 79) / 158)
exe '2resize ' . ((&lines * 32 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 67 + 79) / 158)
argglobal
balt slides/002_types.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("typing_meetup/slide_003.py", ":p")) | buffer typing_meetup/slide_003.py | else | edit typing_meetup/slide_003.py | endif
if &buftype ==# 'terminal'
  silent file typing_meetup/slide_003.py
endif
balt typing_meetup/slide_002.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 10 - ((9 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 0
wincmd w
exe '1resize ' . ((&lines * 32 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 90 + 79) / 158)
exe '2resize ' . ((&lines * 32 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 67 + 79) / 158)
tabnext
edit slides/004_annotations.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 78 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 79 + 79) / 158)
argglobal
balt typing_meetup/slide_004.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 22 - ((21 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 22
normal! 018|
wincmd w
argglobal
if bufexists(fnamemodify("typing_meetup/slide_004.py", ":p")) | buffer typing_meetup/slide_004.py | else | edit typing_meetup/slide_004.py | endif
if &buftype ==# 'terminal'
  silent file typing_meetup/slide_004.py
endif
balt typing_meetup/slide_003.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 20 - ((19 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 20
normal! 018|
wincmd w
exe 'vert 1resize ' . ((&columns * 78 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 79 + 79) / 158)
tabnext
edit slides/005_library_functions.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 33 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 79 + 79) / 158)
exe '2resize ' . ((&lines * 7 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 79 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 78 + 79) / 158)
argglobal
balt term://~/Code/typing-meetup//600107:fish
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 25 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 25
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Code/typing-meetup//600107:fish", ":p")) | buffer term://~/Code/typing-meetup//600107:fish | else | edit term://~/Code/typing-meetup//600107:fish | endif
if &buftype ==# 'terminal'
  silent file term://~/Code/typing-meetup//600107:fish
endif
balt slides/005_library_functions.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 6 - ((0 * winheight(0) + 3) / 7)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("typing_meetup/slide_005.py", ":p")) | buffer typing_meetup/slide_005.py | else | edit typing_meetup/slide_005.py | endif
if &buftype ==# 'terminal'
  silent file typing_meetup/slide_005.py
endif
balt term://~/Code/typing-meetup//600107:fish
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 18 - ((17 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 18
normal! 0
wincmd w
exe '1resize ' . ((&lines * 33 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 79 + 79) / 158)
exe '2resize ' . ((&lines * 7 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 79 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 78 + 79) / 158)
tabnext
edit slides/005_library_functions.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 31 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 79 + 79) / 158)
exe '2resize ' . ((&lines * 9 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 79 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 78 + 79) / 158)
argglobal
balt typing_meetup/slide_005_2.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 20 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 20
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Code/typing-meetup//603480:fish", ":p")) | buffer term://~/Code/typing-meetup//603480:fish | else | edit term://~/Code/typing-meetup//603480:fish | endif
if &buftype ==# 'terminal'
  silent file term://~/Code/typing-meetup//603480:fish
endif
balt slides/005_library_functions.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 6 - ((0 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("typing_meetup/slide_005_2.py", ":p")) | buffer typing_meetup/slide_005_2.py | else | edit typing_meetup/slide_005_2.py | endif
if &buftype ==# 'terminal'
  silent file typing_meetup/slide_005_2.py
endif
balt typing_meetup/slide_005.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 032|
wincmd w
exe '1resize ' . ((&lines * 31 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 79 + 79) / 158)
exe '2resize ' . ((&lines * 9 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 79 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 78 + 79) / 158)
tabnext
edit slides/006_json_api.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 79 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 78 + 79) / 158)
argglobal
balt typing_meetup/slide_006.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 18 - ((17 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 18
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("typing_meetup/slide_006.py", ":p")) | buffer typing_meetup/slide_006.py | else | edit typing_meetup/slide_006.py | endif
if &buftype ==# 'terminal'
  silent file typing_meetup/slide_006.py
endif
balt slides/006_json_api.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 21 - ((20 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 21
normal! 09|
wincmd w
exe 'vert 1resize ' . ((&columns * 79 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 78 + 79) / 158)
tabnext
edit slides/007_typed_dict.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 26 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 79 + 79) / 158)
exe '2resize ' . ((&lines * 14 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 79 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 78 + 79) / 158)
argglobal
balt term://~/Code/typing-meetup//608380:fish
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 19 - ((18 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 19
normal! 060|
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Code/typing-meetup//608380:fish", ":p")) | buffer term://~/Code/typing-meetup//608380:fish | else | edit term://~/Code/typing-meetup//608380:fish | endif
if &buftype ==# 'terminal'
  silent file term://~/Code/typing-meetup//608380:fish
endif
balt slides/007_typed_dict.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 14 - ((13 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("../tralis/tralis-worker/tralis_worker/views/livemap.py", ":p")) | buffer ../tralis/tralis-worker/tralis_worker/views/livemap.py | else | edit ../tralis/tralis-worker/tralis_worker/views/livemap.py | endif
if &buftype ==# 'terminal'
  silent file ../tralis/tralis-worker/tralis_worker/views/livemap.py
endif
balt typing_meetup/slide_007.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 587 - ((23 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 587
normal! 041|
wincmd w
exe '1resize ' . ((&lines * 26 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 79 + 79) / 158)
exe '2resize ' . ((&lines * 14 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 79 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 78 + 79) / 158)
tabnext
edit slides/008_lessons.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 79 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 78 + 79) / 158)
argglobal
balt /tmp/t.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 16 - ((15 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 16
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("../tralis/tralis-api/tralis_api/tracker_rest_api.py", ":p")) | buffer ../tralis/tralis-api/tralis_api/tracker_rest_api.py | else | edit ../tralis/tralis-api/tralis_api/tracker_rest_api.py | endif
if &buftype ==# 'terminal'
  silent file ../tralis/tralis-api/tralis_api/tracker_rest_api.py
endif
balt ../tralis/tralis-core/tralis_core/api_models.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 208 - ((23 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 208
normal! 022|
wincmd w
exe 'vert 1resize ' . ((&columns * 79 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 78 + 79) / 158)
tabnext 4
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
