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
plot 'commits_by_author.dat' using 1:2 title "Damian Johnson" w lines, 'commits_by_author.dat' using 1:3 title "Kamran Riaz Khan" w lines, 'commits_by_author.dat' using 1:4 title "Sambuddha Basu" w lines, 'commits_by_author.dat' using 1:5 title "patacca" w lines, 'commits_by_author.dat' using 1:6 title "Sathyanarayanan Gunasekaran" w lines, 'commits_by_author.dat' using 1:7 title "Rémi Oudin" w lines, 'commits_by_author.dat' using 1:8 title "Tom Lowenthal" w lines, 'commits_by_author.dat' using 1:9 title "Tim Wilde" w lines, 'commits_by_author.dat' using 1:10 title "Sebastian Hahn" w lines, 'commits_by_author.dat' using 1:11 title "Roger Dingledine" w lines, 'commits_by_author.dat' using 1:12 title "Patrick Mezard" w lines, 'commits_by_author.dat' using 1:13 title "Fabian Keil" w lines, 'commits_by_author.dat' using 1:14 title "Andrew Lewman" w lines
