let g:quickrun_config = {}

let g:watchdogs_check_BufWritePost_enable = 1
let g:quickrun_config["watchdogs_checker/mf-perl"] = {
\   "command"     : './script/dev_env.sh',
\   "exec"        : "%c perl -wc %s:p",
\   "errorformat" : '%m\ at\ %f\ line\ %l%.%#',
\}
let g:quickrun_config["perl/watchdogs_checker"] = {
\   "type" : "watchdogs_checker/mf-perl",
\}
