#!/bin/bash -x
(
echo NICK NICKHERE
echo USER NICKHERE 8 * : Notifier
echo PASS NICKHERE:PASSWORDHERE
sleep 1
echo "PRIVMSG #channel Movie Added:" "$radarr_movie_title" " - IMDB: https://www.imdb.com/title/" "$radarr_movie_imdbid" " - Quality: " "$radarr_moviefile_quality"
echo QUIT
) | nc us.ircchatserver.org 667