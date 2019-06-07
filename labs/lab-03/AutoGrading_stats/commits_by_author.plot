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
plot 'commits_by_author.dat' using 1:2 title "Hubert51" w lines, 'commits_by_author.dat' using 1:3 title "Ruijie Geng" w lines, 'commits_by_author.dat' using 1:4 title "HuimingCheng" w lines, 'commits_by_author.dat' using 1:5 title "chry04" w lines, 'commits_by_author.dat' using 1:6 title "zhangcheng li" w lines, 'commits_by_author.dat' using 1:7 title "Misaosama" w lines, 'commits_by_author.dat' using 1:8 title "crtp05" w lines, 'commits_by_author.dat' using 1:9 title "Random-W" w lines, 'commits_by_author.dat' using 1:10 title "alexZrAl" w lines, 'commits_by_author.dat' using 1:11 title "Tong Wu" w lines, 'commits_by_author.dat' using 1:12 title "zhud4" w lines, 'commits_by_author.dat' using 1:13 title "HaotianWuz" w lines, 'commits_by_author.dat' using 1:14 title "Minecraft" w lines, 'commits_by_author.dat' using 1:15 title "Lizhangcheng" w lines, 'commits_by_author.dat' using 1:16 title "Huiming Cheng" w lines, 'commits_by_author.dat' using 1:17 title "Ziting Wang" w lines, 'commits_by_author.dat' using 1:18 title "Zhepeng Luo" w lines, 'commits_by_author.dat' using 1:19 title "Zhepeng" w lines
