# Analysis of Open Source

### Thomas Beitel

## Part 1

Note: I used the FireFox web browser which did not include the extention used 
to get the size of the repo. Therefore, I used gitstats instead to get the line 
numbers for the "Project Size" box.

### Nyx

https://nyx.torproject.org/ <br/>
https://gitweb.torproject.org/nyx.git/

| Category               | Score | Explanation                                                                                                                                                                                                                                                                                                                                                        |
|------------------------|-------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Licensing              | 2     | Nyx uses the GPLv3 open source license (OSI approved).                                                                                                                                                                                                                                                                                                                            |
| Language               | 2     | Nyx is mostly written in Python with which I have much experience.                                                                                                                                                                                                                                                                                                 |
| Level of Activity      | 2     | There have been commits in all of the past four quarters, though activity varies greatly per month. Commits from most to least recent quarters: 1, 18, 12, 2                                                                                                                                                                                                      |
| Number of Contributors | 2     | Nyx has 13 total contributors.                                                                                                                                                                                                                                                                                                                                   |
| Project Size           | 1     | Nyx has 16654 lines of code according to gitstats.                                                                                                                                                                                                                                                                                                                 |
| Issue Tracker          | 1     | Because Nyx is not on github, there was no easy way for me to track the issues. I scored based from what I could find from a bug tracker for the project [1] and the developer's blog [2]. The bug tracker has 9 listed bugs, but none have yet been closed. The third one is about a crash on the FreeBSD OS when the user uses the "m" hotkey to open the menu. |
| New Contributor        | 2     | Nyx has a website [3] and an active dev blog [2] with a FAQ  including steps on how to get involved. The most recent developer joined in 2018.                                                                                                                                                                                                                    |
| User Base              | 2     | Nyx seems to have a decent user base with many unaffiliated blogs talking about its use found after a quick Google.                                                                                                                                                                                                                                               |

[1] https://trac.torproject.org/projects/tor/query?status=accepted&status=assigned&status=needs_review&status=new&status=reopened&component=Core+Tor%2FNyx&order=priority <br/>
[2] https://blog.atagar.com/ <br/>
[3] https://nyx.torproject.org/

### Clickbait Chrome Extension (CCE)

https://github.com/kool814/ClickbaitChromeExtension

| Category               | Score | Explanation                                                                                                                                                                                                                         |
|------------------------|-------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Licensing              | 2     | CCE uses an MIT open source license (OSI approved).                                                                                                                                                                                                |
| Language               | 2     | CCE is mostly (81%) written in python.                                                                                                                                                                                              |
| Level of Activity      | 2     | CCE has been active in the past two quarters since it was made.                                                                                                                                                                     |
| Number of Contributors | 0     | There are only two contributors.                                                                                                                                                                                                    |
| Project Size           | 2     | Although gitstats claims that CCE has over 42000 lines of code, a quick appraisal of the commits shows that almost all of that is probably a library or something while the actual user line count is almost certainly less than 1000.|
| Issue Tracker          | 1     | There is only one listed issue and it is a question on how to install. It has been promptly answered which suggests that the lack of issues is due to the low user count.                                                           |
| New Contributor        | 0     | There is no website or any kind of text showing how to join the project. It seems like the duo is comfortable doing this alone.                                                                                                    |
| User Base              | 1     | Like I mentioned earlier, some people seem to be using it, and there are installation instructions, but the user base is obviously very small and the instructions amount to "download our code and manually run the python file". |


### Music Ex Machina (MxM)

https://github.com/MusicExMachina/MxM

| Category               | Score | Explanation                                                                                                                                                                        |
|------------------------|-------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Licensing              | 2     | MxM uses an MIT open source license (OSI approved).                                                                                                                                               |
| Language               | 0     | MxM mostly uses a language called LilyPond with which I have no experience and will have to learn from scratch. The second most-commonly used is Java, my mortal enemy.           |
| Level of Activity      | 0     | There have been no contributions to MxM in the past year                                                                                                                           |
| Number of Contributors | 1     | MxM has 5 contributors                                                                                                                                                             |
| Project Size           | 1     | MxM has 38610 lines of code.                                                                                                                                                       |
| Issue Tracker          | 0     | Although the issue tracker for MxM isn't empty, none of it looks like bugs and it is all submitted by one of the developers.                                                      |
| New Contributor        | 1     | MxM lacks a website, though does have a description on the github page. When the project was still active, new users joined up until the project's effective abandonment.         |
| User Base              | 0     | I had signifigant trouble finding any substantial user base besides the developers. The only evidence of outside interest were from the watch and star counts on the github page. |

## Part 2

https://git.torproject.org/nyx.git

Despite being the only project which I investigated that was not on github,
Nyx by far was the most interesting and the most thourough in terms of support.
Nys is an open source branch to the Tor Project with an OSI approved GNU
General Public License Version 3 [1]
This license is likely inherited from the Tor Project itself and ensures
that any new things that branch from Nyx will inherit the GPLv3 license.
Nyx is a command-line monitor for Tor from which one can get detailed data
about one's relay such as bandwidth usage, connections, and event log [2]
This project caught my eye as I actively use the Tor Browser and have long
been interested in internet privacy. Nyx is specifically built for the plethora
of vollunteers who keep the Tor network moving by hosting relays for the
network. This tool helps relay operators monitor their connections giving
the operator necessary data to ensure proper relay activity. Tools like these
make it easier and therefore more viable for people to set up relay stations
for the Tor network. 

Tor, also known as The Onion Router, uses layers of encryption (like an onion)
combined with a relay network to give the closest thing to true annonymity
on the internet. The relays bounce the users signals between several relay
points which obscures the location of the users, while a layered encryption
network obscures the data traveling between the users and the servers they
access. The signifigance of the Tor project itself is evident in its ability
to protect people whose freedom of speech puts them in danger such as political
activists, whistleblowers, and victims of violence. The Tor Project itself
is heavily dependent on relays which are either bought using donations or
set up by vollunteers. The Nyx tool makes it easier for relay hosts operate
relays making it more feasable for businesses and vollunteers to set up these
relays for the Tor network.

Nyx is mostly written in python with some HTML and javascript [3] which are
for the web elements. Python was probably choosen due to its ease to program
in and its open source license. I personally have a lot of experience in
Python and have been programming in it since Sophmore year of high school.
Nyx uses the "curses" Python library [4] which I don't have experience in, but
feel wouldn't be too hard to learn on my own.

Nyx's level of activity varied kind of wildly with most activity comming
in bursts of a few days [5]. I found this mildly unusual, but the bursts
happened often enough to get the full score.

Nyx technically has 13 contributors, though most of the work (>90%) is done
by the developer. A closer inspection suggests that the main developer does
the majority of the work and new contributors jump in for a few days (no more
than a few months) to push some new updates before abandoning the project
[6]. This would explain the disparity in workload though does not say great
things for anyone trying to make a more permenant position for themselves
here.



[1] https://gitweb.torproject.org/nyx.git/tree/LICENSE

[2] https://nyx.torproject.org/#home

[3] ![](gitstats_files.png)

[4] https://2019.www.torproject.org/getinvolved/volunteer.html.en#project-nyx

[5] ![](gitstats_activity.png)

[6] ![](gitstats_authors.png)

