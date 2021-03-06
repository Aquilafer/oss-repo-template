set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'commits_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Commits"
set xtics rotate
set bmargin 6
plot 'commits_by_author.dat' using 1:2 title "PatrickCelentano" w lines, 'commits_by_author.dat' using 1:3 title "Patrick Celentano" w lines, 'commits_by_author.dat' using 1:4 title "Jon Patsenker" w lines, 'commits_by_author.dat' using 1:5 title "Nicholas Curtis" w lines, 'commits_by_author.dat' using 1:6 title "Aaron Perl" w lines, 'commits_by_author.dat' using 1:7 title "Valerie Fix" w lines, 'commits_by_author.dat' using 1:8 title "NickCurtis" w lines
