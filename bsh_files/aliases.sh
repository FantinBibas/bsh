alias lsf='(du -sh `ls -1Ap | grep / | sed "s/\\///"`; (ls -1shAp | tail -n +2 | grep -v /)) | sed "s/\t/ $(printf "\033")[36m/; s/\$/$(printf "\033")[39m/" | sort -h'
