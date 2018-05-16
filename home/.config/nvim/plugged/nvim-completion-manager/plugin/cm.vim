if get(s:,'init','0')
    finish
endif
let s:init = 1

if !has('nvim') && v:version<800
    finish
endif

let g:cm_buffer_size_limit = get(g:, 'cm_buffer_size_limit', 1000000)

" multithreadig, saves more memory, enabled by default
if !exists('g:cm_multi_threading')
    if $NVIM_NCM_MULTI_THREAD == ''
        let g:cm_multi_threading = 1
    else
        let g:cm_multi_threading = $NVIM_NCM_MULTI_THREAD
    endif
endif

let g:cm_matcher = get(g:,'cm_matcher',{'module': 'cm_matchers.prefix_matcher', 'case': 'smartcase'})

if !exists('g:cm_completekeys')
    if g:cm_matcher['module'] == 'cm_matchers.prefix_matcher'
        " <Plug>(cm_complete) has no flickering issue with prefix_matcher. But
        " it has terrible popup flickering issue with fuzzy_matcher.
        let g:cm_completekeys = "\<Plug>(cm_complete)"
    else
        " <Plug>(cm_completefunc) has no popup flickering with fuzzy matcher.
        " But it has cursor flickering issue
        let g:cm_completekeys = "\<Plug>(cm_completefunc)"
    endif
endif

let g:cm_auto_popup = get(g:,'cm_auto_popup',1)

let g:cm_complete_start_delay = get(g:,'cm_complete_start_delay', 0)

let g:cm_complete_popup_delay = get(g:, 'cm_complete_popup_delay', get(g:, 'cm_complete_delay', 50))

let g:cm_sources_enable = get(g:,'cm_sources_enable',1)

let g:cm_sources_override = get(g:,'cm_sources_override',{})

let g:cm_refresh_length = get(g:, 'cm_refresh_length', get(g:, 'cm_refresh_default_min_word_len', [[1, 4], [7, 3]]))

let g:cm_completeopt=get(g:,'cm_completeopt','menu,menuone,noinsert,noselect')

au User CmSetup if exists('g:did_plugin_ultisnips') | call cm#sources#ultisnips#init() | endif
au User CmSetup if exists('g:loaded_neosnippet') | call cm#sources#neosnippet#init() | endif
au User CmSetup if exists('g:snipMateSources') | call cm#sources#snipmate#init() | endif
au User CmSetup call cm#sources#css#init()

func! s:startup(...)
    if get(g:,'cm_smart_enable',1)
        call cm#_auto_enable_check()
        augroup cm_smart_enable
            au!
            au BufEnter * call cm#_auto_enable_check()
            au OptionSet buftype call cm#_auto_enable_check()
        augroup end
    endif
endfunc

call timer_start(get(g:, 'cm_startup_delay', 100), function('s:startup'))
