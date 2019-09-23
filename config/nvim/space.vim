" vim-airline template by chartoin (http://github.com/chartoin)
" Base 16 Oceanic Next Scheme by Chris Kempson (http://chriskempson.com)
" Base 16 Oceanic Next Vim Airline Scheme
" (https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/base16_oceanicnext.vim)
let g:airline#themes#space#palette = {}
let s:gui00 = "#1b2b34"
let s:gui01 = "#343d46"
let s:gui02 = "#4f5b66"
let s:gui03 = "#65737e"
let s:gui04 = "#a7adba"
let s:gui05 = "#c0c5ce"
let s:gui06 = "#cdd3de"
let s:gui07 = "#d8dee9"
let s:gui08 = "#ec5f67"
let s:gui09 = "#f99157"
let s:gui0A = "#fac863"
let s:gui0B = "#99c794"
let s:gui0C = "#5fb3b3"
let s:gui0D = "#6699cc"
let s:gui0E = "#c594c5"
let s:gui0F = "#ab7967"

" Terminal color definitions
let s:cterm00 = 00
let s:cterm03 = 08
let s:cterm05 = 07
let s:cterm07 = 15
let s:cterm08 = 01
let s:cterm0A = 03
let s:cterm0B = 02
let s:cterm0C = 06
let s:cterm0D = 04
let s:cterm0E = 05
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = 18
  let s:cterm02 = 19
  let s:cterm04 = 20
  let s:cterm06 = 21
  let s:cterm09 = 16
  let s:cterm0F = 17
else
  let s:cterm01 = 10
  let s:cterm02 = 11
  let s:cterm04 = 12
  let s:cterm06 = 13
  let s:cterm09 = 09
  let s:cterm0F = 14
endif

let s:N1   = [ s:gui0B, s:gui00, s:cterm0B, s:cterm0B]
let s:N2   = [ s:gui0C, s:gui00, s:cterm02, s:cterm02]
let s:N3   = [ s:gui05, s:gui00, s:cterm01, s:cterm01]
let g:airline#themes#space#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ s:gui0D, s:gui00, s:cterm0D, 'NONE' ]
let s:I2   = [ s:gui0C, s:gui00, s:cterm02, 'NONE' ]
let s:I3   = [ s:gui05, s:gui00, s:cterm01, 'NONE' ]
let g:airline#themes#space#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ s:gui08, s:gui00, s:cterm08, 'NONE' ]
let s:R2   = [ s:gui0C, s:gui00, s:cterm02, 'NONE' ]
let s:R3   = [ s:gui05, s:gui00, s:cterm01, 'NONE' ]
let g:airline#themes#space#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ s:gui0E, s:gui00, s:cterm0E, 'NONE' ]
let s:V2   = [ s:gui0C, s:gui00, s:cterm02, 'NONE' ]
let s:V3   = [ s:gui05, s:gui00, s:cterm01, 'NONE' ]
let g:airline#themes#space#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1   = [ s:gui04, s:gui00, s:cterm01, 'NONE' ]
let s:IA2   = [ s:gui04, s:gui00, s:cterm01, 'NONE' ]
let s:IA3   = [ s:gui0D, s:gui00, s:cterm01, 'NONE' ]
let g:airline#themes#space#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" Warning Section
let g:airline#themes#space#palette.normal.airline_warning = [
     \ s:gui0A, s:gui00, s:cterm0A, 'NONE'
     \ ]

let g:airline#themes#space#palette.insert.airline_warning =
    \ g:airline#themes#space#palette.normal.airline_warning

let g:airline#themes#space#palette.visual.airline_warning =
    \ g:airline#themes#space#palette.normal.airline_warning

let g:airline#themes#space#palette.replace.airline_warning =
    \ g:airline#themes#space#palette.normal.airline_warning

" Error Section
let g:airline#themes#space#palette.normal.airline_error = [
     \ s:gui08, s:gui00, s:cterm08, 'NONE'
     \ ]

let g:airline#themes#space#palette.insert.airline_error =
    \ g:airline#themes#space#palette.normal.airline_error

let g:airline#themes#space#palette.visual.airline_error =
    \ g:airline#themes#space#palette.normal.airline_error

let g:airline#themes#space#palette.replace.airline_error =
    \ g:airline#themes#space#palette.normal.airline_error

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#base16_oceanicnext#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui07, s:gui02, s:cterm07, s:cterm02, '' ],
      \ [ s:gui07, s:gui04, s:cterm07, s:cterm04, '' ],
      \ [ s:gui05, s:gui01, s:cterm05, s:cterm01, 'bold' ])
