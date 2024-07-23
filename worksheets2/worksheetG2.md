## NeSST's INC (Intro to NeSST Computing) series
### Worksheet G2: Adding Practice for Gorilla Experiments

#### Skills introduced: 
* Learn how to create practice trials and set up the spreadsheet
* Copying screens
* Adding buttons to set up different conditions
* Using conditional branching within display
* Using the "Jump to Row" screen component
  
Initiated by Maggie Ribaudo June 2024

-----------------------------------------------------------------------------------------------
#### Before going through this worksheet, you should:
* Have completed worksheet G1 and created the Speech Stroop Task.
-----------------------------------------------------------------------------------------------
## UNDER CONSTRUCTION! :construction_worker_woman:
### Adding practice
In most of our experiments, we have a practice run of the experimental task before we start the actual experiment. When we are in person, this helps us determine if someone has understood the experiment, or if they need clarification on some of the instructions. Obviously we can't do that for online studies. However, practice runs also help the participant learn what to expect, so that they can get used to the pace and demands of the experiment before it actually starts. 

**Further Consideration 1**: Why would you tell a participant that practice will start right away?

-----------------------------------------------------------------------------------------------
### Practice type 1: Hard-coded practice trials

#### Make the display 🔨

"Hard-coded" means that you are definitively deciding how the practice will go every time, for every participant. That is, you pick a certain set of stimuli that you want every person to do in that order. 

**Further consideration 2**: In what types of situations might you use this type of practice? 

You'll need **one display** for this type of practice. You can call it "hardCodePractice". It will need several **screens**: 

1. **Instructions**. Make sure the instructions are informative but not too wordy. The participant has already seen the instructions for the entire experiment, so the function of these instructions is to signpost that they are about to start the practice.
2. **Screens for two practice trials**. Each trial will include the same trial structure as the actual task, which you have already created:
  a. A fixation cross for 800 ms
<br>
  b. The stimulus word + audio recording
<br>
  c. a buffer (blank screen of 1.2 seconds)

However, you will need enough screens to make two trials, rather than just one trial sequence that repeats according to the spreadsheet. The fastest way to create this is by copying screens from previous displays. Click the drop down arrow of a screen by the screen's name, then select "copy screen." Repeat this process to paste the screen by selecting "paste screen" on the dropdown arrow of the desired empty screen. Make sure to rename the screens so you know what they are.

4. **A landing screen where they can pick if they want to repeat the practice, or move onto the task**

#### Set up the trials
You will use the same stimulus words from worksheet G1. The best words to use are those that represent the full complexity of the experimental task. This means including some words that are more difficult for the participant and some that are easier. Pick two stimuli that you think satisfy this requirement. Then, change the stimulus text object in your trial screens so that they are **hard-coded** to display the trials you selected. 

#### Set up the landing screen and use Conditional Branching 
The easiest way to move between screens for a hard coded practice is using buttons and conditional branching. **Conditional Branching** means that you will use the branching component to control the order of the screens based on a certain response. 

Add two buttons:
* As you have probably learned, there are many kinds of buttons just a regular "button" will do or a "text button response"
* Give each button a name that tells you what it's purpose is (ex: "try again") and a label that tells the participant what it does (ex: "I want to practice again")
* Add the component of a click response to the button (if necessary). In the box labeled response type "redo" for the first button and "continue" for the second button.
* Switch from the objects tab to the screen tab and add the "branch" component. Add two destinations, one for each button. Set the criteria for both to response value. Type in each respective response (continue/redo) set accuracy to any and for screen select the appropriate screen in which you want to move to. 


=============================================================
*************************************** TKTKTKTK

#### Practice type 2: Randomized Practice Trials

Randomized trials are very similar to what they sound like. Each participant will recieve 6 different trials (each with a different stimulus) based upon a randomizer that Gorilla completes automatically. 

#### Make the displays 🛠️

You'll need three displays for this practice. 

1. **Instructions** You can name this display "practiceRandInstructions." Follow the same guidelines for the instructions used for the hard-coded practice. (hint: copy screens!) 
2. **Trial Display** You can name this display "practiceRand." The trials will have the same setup as the hard-coded practice, except there will only be 3 screens. The spreadsheet will control how many trials are presented to the participant. 
3. **Post Display** You can name this display "practiceRandPost." This will be the same layout as the landing screen from the hard-coded practice. However, buttons will be controlled using jump to row components instead of conditional branching. 

#### Edit the spreadsheet
Set up the spreadsheet to have a logical flow of displays so that the instructions are first, then six randomized practice trials, and lastly the post practice display. Make sure that the instructions for the practice come after the instructions for the whole experiment.

**Add the Randomizer and Preview Randomization** hint(look up documentation on randomizing if needed) 

**Further Consideration 3**: What happened to the spreadsheet when you previewed the randomization?

#### Jump to Row

* Copy and paste the buttons from the previous landing screen onto the post display screen. 
* Go to the screen tab, and add the component of "Jump To Row." Add two destination boxes, one for each button. Set the criteria for both to "response value." Type in the response for each corresponding button. For the accuracy, select any. 
* For the row index, you will put the corresponding row # of the spreadsheet that either goes back to the practice instructions or to the break before the experimental trials. 

#### Preview the experiment and commit the changes

**Further Consideration 4**: If a participant wants to redo the practice trials, would the stimulus words on the second practice be new randomized words? 








---------------------------------------------------
Answers:

FC 1:  Many people expect some delay between clicking a button and having to speak, so it is good to warn people that they will have to start speaking right away.
<br><br> 
FC 2: 
FC 3: The trials were randomized by block so that the words for the practice and in each block are presented differently to each participant. 
FC 4: No, the stimulus words will be the same as they were the first time that the participant did the practice. This is because the randomization that we added in the previous worksheet randomizes the trials by block only once. It has not been set to randomize multiple times. 




---------------------------------------------------
### You are now ready to proceed with Worksheet G3!
You can access these in the comppedagogy repo.
