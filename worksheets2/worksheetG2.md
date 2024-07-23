## NeSST's INC (Intro to NeSST Computing) series
### Worksheet G2: Adding Practice for Gorilla Experiments

#### Skills introduced: 
* Learn how to create practice trials and set up the spreadsheet
* Copying screens
* Adding buttons to set up different conditions
* Using the "Jump to Row" screen component
* Using conditional branching within display

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

You'll need one display for this type of practice. You can call it "hardCodePractice". It will need several screens: 

1. **Instructions**. Make sure the instructions are informative but not too wordy. The participant has already seen the instructions for the entire experiment, so the function of these instructions is to signpost that they are about to start the practice.
2. **Displays for two practice trials**. Each trial will include the same trial structure as the actual task, which you have already created:
  a. A fixation cross for 800 ms
  b. The stimulus word + audio recording
  c. a buffer (blank screen of 1.2 seconds)
However, you will need enough screens to make two trials, rather than just one trial sequence that repeats according to the spreadsheet. The fastest way to create this is by copying screens from previous displays. Click the drop down arrow of a screen by the screen's name, then select "copy screen." Repeat this process to paste the screen by selecting "paste screen" on the dropdown arrow of the desired empty screen. Make sure to rename the screens so you know what they are.
3. **A landing screen where they can pick if they want to repeat the practice, or move onto the task**

#### Set up the trials
You will use the same stimulus words from worksheet G1. The best words to use are those that represent the full complexity of the experimental task. This means including some words that are more difficult for the participant and some that are easier. Pick two stimuli that you think satisfy this requirement. Then, change the stimulus text object in your trial screens so that they are **hard-coded** to display the trials you selected. 


=============================================================
*************************************** TKTKTKTK

#### Practice type 2: Randomized Practice Trials

#### Make the display 🛠️

Randomized trials are very similar to what they sound like. Each participant will recieve different stimulus words based upon a randomizer that Gorilla does automatically. 

#### Randomized Practice Post
This display will include two buttons: 
1. A button that will send the participant back to the beginning to redo the task
2. Another button that will allow them to continue to the actual experimental task

* Give each button a name that tells you what it's purpose is (ex: "try again") and a label that tells the participant what it does (ex: "I want to practice again")
* Add the component of a click response to the button. In the box labeled response type "redo" for the first button and "continue" for the second button.
* Go to screen, and add the component of "Jump To Row." Add two destination boxes, one for each button. Set the criteria for both to "response value." Type in the response for each corresponding button. hint: this will be what you wrote in the click response component 
* For the row index, you will put the corresponding row # of the spreadsheet that either goes back to the practice instructions or to the break before the experimental trials. 

#### Edit the spreadsheet
Set up the spreadsheet to have a logical flow of displays so that the instructions are first, then six randomized practice trials, and lastly the post practice display. Make sure that the instructions for the practice come after the instructions for the whole experiment.

#### Preview the experiment and commit the changes

**Further Consideration 3**: If a participant wants to redo the practice trials, would the stimulus words on the second practice be new randomized words? 








---------------------------------------------------
Answers:

FC 1:  Many people expect some delay between clicking a button and having to speak, so it is good to warn people that they will have to start speaking right away.
<br><br> 
FC 2: 
FC 3: No, the stimulus words will be the same as they were the first time that the participant did the practice. This is because the randomization that we added in the previous worksheet randomizes the trials by block only once. It has not been set to randomize multiple times. 




---------------------------------------------------
### You are now ready to proceed with Worksheet G3!
You can access these in the comppedagogy repo.
