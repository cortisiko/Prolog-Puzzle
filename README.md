# Prolog-Puzzle

This is a zebra puzzle solved using SWI-prolog.



UFO Invasions or not? Last week, four UFO enthusiasts made sightings of unidentified flying objects in their neighborhood. Each of the four reported his or her sightings on a different day, and soon the neighborhood was abuzz with rumors of  little green men. By the weekend, though, the government stepped in and was able to give each person a different, plausible explanation of what he or she had "really" seen. Can you determine the day ( Tuesday through Friday ) each person sighted a UFO, as well as the object that it turned out to be?

1. Mr. Klein made his sighting at some point earlier in the week than the one who saw the balloon, but at some point later in the week, than the one who spotted the Frisbee ( who isn't Ms. Green ).
2. Friday's sighting was made by either Ms. Barnum or the one who saw a clothesline ( or both ).
3. Mr. Niven did not make his sighting on Tuesday.
4. Mr. Klein isn't the one whose object turned out to be a water tower.

The Solution:

I know there are four people (B,G,K,N), four objects sighted (balloon, frisbee, clothesline, water tower), and four days (Tuesday, Wednesday, Thursday, Friday). And we are provided with this information. 
1	K's day was earlier than balloon day.
2	K's day was later than frisbee day.
3	G didn't spot the frisbee.
4	Friday was either B's day or clothesline day (or both).
5	N's day wasn't Tuesday.
6	K didn't spot the water tower.
So the Solution would be
We know K didn't spot the balloon (1) or the frisbee (2) or the water tower (6), so K spotted the clothesline. Also, K's day can't be Friday (1), so Friday was B's day (4).
We know the frisbee wasn't spotted by K (2) or G (3). Nor was it spotted by B, since B's day was Friday and the frisbee can't have been spotted on Friday (2). So N spotted the frisbee. Also, we know frisbee day is two days before balloon day (1,2), so frisbee day must have been Tuesday or Wednesday; but N's day wasn't Tuesday (5), so frisbee day was Wednesday, which means K's day was Thursday (2) and balloon day was Friday (1).
And the rest we can get by elimination. Summing up:
•	G spotted a water tower on Tuesday.
•	N spotted a frisbee on Wednesday.
•	K spotted a clothesline on Thursday.
• B spotted a balloon on Friday.
  
