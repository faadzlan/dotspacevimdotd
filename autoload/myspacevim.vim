function! myspacevim#before() abort

    " Search current directory recursively
    set path+=**

    " Remap semicolon to colon, and vice versa.
    nnoremap ; :
    nnoremap : ;
    vnoremap ; :
    vnoremap : ;

    " Remap window navigation keys-chords
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

    " Remap navigation keybindings and key-chords
    " nnoremap 0 g0
    " nnoremap $ g$
    " nnoremap j gj
    " nnoremap k gk
    " vnoremap j gj
    " vnoremap k gk


    " Use "," (comma) as the leader key.
    let g:mapleader = ','

    " Use DirectX renderer, an option only available for gVim on MSWindows 7
    " and newer
    " set rop=type:directx,level:0.75,gamma:1.25,contrast:0.25,geom:2,renmode:5,taamode:1

    " Set path to python executables.
    let g:python_host_prog='C:\Python27\python.exe'
    let g:python3_host_prog='C:\Users\alan_\AppData\Local\Programs\Python\Python39\python.exe'

    " Set conceal level to "" (none) for TeX files.
    let g:tex_conceal = ""

    " Do not show any lines above one with cursor during "zt" operation.
    set scrolloff=0
endfunction

function! myspacevim#after() abort

    " Use more sensible split defaults.
    set splitbelow splitright

    " I want these to be executed for LaTeX/text files.
    augroup myLaTeX
      autocmd!
      autocmd BufRead,BufNewFile *.tex nnoremap <space>l :normal ,ll<CR>
      autocmd BufRead,BufNewFile *.tex set wrap
      autocmd InsertLeave,TextChanged *.tex write | echo "File saved :)"
      autocmd BufRead,BufNewFile *.tex iabbrev vv VIV
      autocmd BufRead,BufNewFile *.tex iabbrev kv KVIV
      autocmd BufRead,BufNewFile *.tex iabbrev sv SVIV

      autocmd BufRead,BufNewFile *.tex iabbrev auron 2.3
      autocmd BufRead,BufNewFile *.tex iabbrev aurtw 4.5
      autocmd BufRead,BufNewFile *.tex iabbrev aurth 6.8
      autocmd BufRead,BufNewFile *.tex iabbrev aurfo 9.1
      autocmd BufRead,BufNewFile *.tex iabbrev aurfi 11.4
      autocmd BufRead,BufNewFile *.tex iabbrev aursi 13.6
      autocmd BufRead,BufNewFile *.tex iabbrev aurse 15.9
      autocmd BufRead,BufNewFile *.tex iabbrev aurei 18.2
      autocmd BufRead,BufNewFile *.tex iabbrev aurni 20.5
      autocmd BufRead,BufNewFile *.tex iabbrev aurte 22.7
      autocmd BufRead,BufNewFile *.tex iabbrev aurel 25.0
      autocmd BufRead,BufNewFile *.tex iabbrev aurtv 27.3
      autocmd BufRead,BufNewFile *.tex iabbrev aurtt 29.5

      autocmd BufRead,BufNewFile *.tex iabbrev dgr \si{\degree}

      autocmd BufRead,BufNewFile *.tex iabbrev svx streamwise vortex
      autocmd BufRead,BufNewFile *.tex iabbrev svs streamwise vortices
      autocmd BufRead,BufNewFile *.tex iabbrev kvx Karman vortex
      autocmd BufRead,BufNewFile *.tex iabbrev kvs Karman vortices
      autocmd BufRead,BufNewFile *.tex iabbrev vst vortical structure

      autocmd BufRead,BufNewFile *.tex iabbrev ccsp circular cylinder-strip plate
      autocmd BufRead,BufNewFile *.tex iabbrev sp strip plate
      autocmd BufRead,BufNewFile *.tex iabbrev cccc two-circular cylinder cruciform
      autocmd BufRead,BufNewFile *.tex iabbrev cc circular cylinder

      autocmd BufRead,BufNewFile *.tex iabbrev twd two-dimensional
      autocmd BufRead,BufNewFile *.tex iabbrev thd three-dimensional
      autocmd BufRead,BufNewFile *.tex iabbrev roms root-mean-square


      autocmd BufRead,BufNewFile *.tex inoremap <Leader>ta \SI{}{\degree}<++><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
      autocmd BufRead,BufNewFile *.tex inoremap <Leader>si \SI{}{<++>}<++><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
      autocmd BufRead,BufNewFile *.tex inoremap <Leader>tx \text{}<++><Left><Left><Left><Left><Left>

      autocmd BufRead,BufNewFile *.tex nnoremap <Leader>rng a<CR><Esc>k:read ~\OneDriveUnimas\snippets\quantityRange.tex<CR>kJ.F$;/<++><CR>"_ca>

      autocmd BufRead,BufNewFile *.tex nnoremap <Leader>ua o<Esc>:TMacro UTM-abbrevs<CR>a
      autocmd BufRead,BufNewFile *.tex nnoremap <Leader>us o<Esc>:TMacro UTM-symbols<CR>a
    augroup END

    " Settings for thesaurus_query.vim plugin
    let g:tq_openoffice_en_file='C:\Users\alan_\.SpaceVim.d\thesaurus\MyThes-1.0\th_en_US_new'
    let g:tq_mthesaur_file='C:\Users\alan_\.SpaceVim.d\thesaurus\mthesaur.txt'
    nnoremap <Leader>cs :ThesaurusQueryReplaceCurrentWord<CR>
    vnoremap <Leader>cs y:ThesaurusQueryReplace <C-r>"<CR>

endfunction