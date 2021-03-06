complete -xc spark -d "Sparkline generator" -a "\t"
complete -c spark -s n -l line -d "Process each line as a record"
complete -c spark -s f -l field -d "=<format> Set field output format"
complete -c spark -s r -l record -d "=<format> Set record output format"
complete -c spark -s m -l min -d "=<number> Set minimum numeric value"
complete -c spark -s M -l max -d "=<number> Set maximum numeric value"
complete -c spark -s d -l delim -d "=<regex> Use <regex> as number separator"
complete -c spark -l null -d "=<string> Use <string> to display null values"
complete -c spark -s h -l help -d "Show usage help"
