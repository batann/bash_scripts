#!/bin/bash
#############################################################
clear
OPTIONS=( "abc/" "best_of_the_left" "aristotelian_society/" "lse/" "lse_public/" "partiallyexemindlife/" "philosophy_now/" "philosophy_of_our_time/" "the_guardian/")
select dir in ${OPTIONS[@]};
do
	abc=$(ls ~/mashpodder/podcasts/$dir|wc -l)
	resize -s $abc 190 >>/dev/null
	OPTIONS2=$(ls ~/mashpodder/podcasts/$dir)
	ls $OPTIONS2;
done


