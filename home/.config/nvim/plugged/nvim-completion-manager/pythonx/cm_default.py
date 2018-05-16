
# sane default for programming languages


_patterns = {}
_patterns['*'] =   r'(-?\d*\.\d\w*)|([^\`\~\!\@\#\$\%\^\&\*\(\)\-\=\+\[\{\]\}\\\|\;\:\'\"\,\.\<\>\/\?\s]+)'
_patterns['css'] =   r'(-?\d*\.\d[\w-]*)|([^\`\~\!\@\#\$\%\^\&\*\(\)\=\+\[\{\]\}\\\|\;\:\'\"\,\.\<\>\/\?\s]+)'
_patterns['scss'] =   _patterns['css']
_patterns['php'] = r'(-?\d*\.\d\w*)|([^\-\`\~\!\@\#\%\^\&\*\(\)\=\+\[\{\]\}\\\|\;\:\'\"\,\.\<\>\/\?\s]+)'
_patterns['vim'] = r'(-?\d*\.\d\w*)|([^\-\`\~\!\@\%\^\&\*\(\)\=\+\[\{\]\}\\\|\;\'\"\,\.\<\>\/\?\s]+)'

def word_pattern(ctx):
    scope = ctx.get('scope',ctx.get('filetype','')).lower()
    return _patterns.get(scope, None) or _patterns['*']
