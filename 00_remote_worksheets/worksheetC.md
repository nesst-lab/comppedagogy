## SMNG's BASIC (BLAB And SMAC Intro to Computing) series
### Worksheet C: practice with paths
 
#### Skills practiced: 
* Camel case
* Navigating complicated path directions
* Vi

#### Reminder to use good Gitiquette!! 
1. Pull before pushing
2. Don't delete anything that belongs to someone else. 

**Before starting this worksheet, use Terminal (/git bash) to create a new directory called Worksheet_1s in your personal directory inside comppedagogy. Use vi to create and edit your homework file, LASTNAME_worksheet1s.txt. **
 
-------------
### DIRECTIONS 
Navigate to the directory welcomeToTheLabyrinth, in 00_remote_worksheets. We're going to do some "traveling" thorugh directories. Whenever you see "travel to" or "go to" (or some other variant), that means you should change directory to the specified place. 

Some notes: 
* Cities that are in Germany are directories in the Germany directory, cities that are in Wisconsin are directories in the Wisconsin directory, and so on and so forth. 
* In the Wisconsin cities, streets may also have their own directories, using camelCase instead of spaces: e.g. Park St's directory will be called ParkSt; Grand Canyon Rd would be GrandCanyonRd. 
* Specific locations have text files---in some really small cities, you might just get a specific location with no street address! 
* If you don't know what exists in a city, remember to use `ls`. If you forget where you are, remember to use `pwd`! 
* At the end of every question, you'll open/preview a .txt file. Copy down the letter that appears in the last line---at the end of your travels you'll have a message! Put this message in your homework txt file. 
-------------

1. First, let's go to Germany. Most direct flights from O'Hare go to Frankfurt, so we'll land at the Frankfurt airport: airport.txt.  

2. We don't really want to visit Frankfurt, but luckily the train station is conveniently attached to the airport. Let's head to the Frankfurt train station: trainStation.txt

3. Let's take the train to Berlin. We arrive at Berlin's train station: trainStation.txt. 

4. After exploring Berlin, let's take the train to Leyden, in the Netherlands. We'll have a bite to eat at eethuisAkAlLeiden.txt

5. While here, you realize that your friend in WI is from a city with the same name (Leyden, WI). Let's pay them a visit on our way back to Madison: friendsHouse.txt

6. Okay, Leyden is kind of small, and your friend is tired of being cooped up at home and wants to head back to Madison. We head to the Ancora on King St: ancoraCoffee.txt. 

7. A second friend calls, and they want to get some coffee. They live near the hospital and don't have transportation, so you agree to meet them at the other Ancora, on University Ave: ancoraCoffee.txt. 

8. You guys are craving some disturbing but excellent Korean cinema, so you decide to go see Parasite. The only place that is still showing it is Silver Screen Cinema, on Odana Road: silverScreen.txt. 

9. Your second friend gets a call from her sister, who has broken down in Friesland, WI. You guys drive up there and meet her at the intersection of the railroad and Friesland Rd: stoppedOnTracks.txt

10. Her car won't start up at all, and gas is cheap because the world is crumbling, so you get her a tow and take her to her final destination, Berlin, WI. You drop her off at her house on Park Ave, near Nathan Strong Park: nathanStrong.txt

11. It's getting late and you and your friends are getting tired. You drive back to Madison and drop your first friend off at her house on Park St: friendsHouse.txt

12. Then you continue west and drop your second friend off at her house on Midvale Blvd: friendsHouse.txt

13. Since you've been traveling, you're pretty low on groceries. The Metcalfe's on Midvale is closed, but you think the one on Mineral Point Rd will be open: metcalfes.txt

14. You also need to pick up some food for your cat, so you go over to MadCat West, also on Mineral Point Rd: madcat.txt. 

15. By this time, you're out of gas, and you notice that one of your tires is low on air. Woodmans west has free air and cheap gas, and is nearby, so you head over to Gammon Rd: woodmansGas.txt

16. Finally, you get to go home. You live on Manitowoc Pkwy: home.txt

17. Check if there is a directory for the street of your Madison address. If there isn't, make one (remember to pull right before you do this step---someone else might have added it while you were traveling!). Inside this street directory, create a text file using vi that is called YOURNAME_home.txt. Put your initials inside, and save. In addition, put the full path to this text document inside your worksheet 1s answer file (so we can find your home document with initials). 

When you've finished this worksheet, push your worksheet and this new directory to the master repo. 

*Note: if you don't want people to know what street you live on in Madison, just use Highland Ave (the Waisman Center address).*

You are now ready to proceed with Worksheets 1-10! You will need Matlab to open them. 
