function! myspacevim#before() abort
   " Search current directory recursively
   set path+=**

   " Remap semicolon to colon, and vice versa.
   nnoremap ; :
   nnoremap : ;
   vnoremap ; :
   vnoremap : ;

   "Use comma as leader key.
   let g:mapleader = ','
endfunction

function! myspacevim#after() abort
    " Use more sensible split defaults.
    set splitbelow splitright

    " Settings for thesaurus_query.vim plugin
    let g:tq_openoffice_en_file='~/.SpaceVim.d/thesaurus/MyThes-1.0/th_en_US_new'
    let g:tq_mthesaur_file='~/.SpaceVim.d/thesaurus/mthesaur.txt'
    nnoremap <Leader>cs :ThesaurusQueryReplaceCurrentWord<CR>
    vnoremap <Leader>cs y:ThesaurusQueryReplace <C-r>"<CR>
endfunction
