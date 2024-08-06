## NeSST's INC (Intro to NeSST Computing) series
### Worksheet G2: Adding Practice for Gorilla Experiments

#### Skills introduced: 
* Learn how to create practice trials and set up the spreadsheet
* Copying screens
* Adding buttons to set up different conditions
* Using conditional branching within display
* Using the "Jump to Row" screen component
* Using the "Select Randomized Subset" randomizer

Initiated by Maggie Ribaudo June 2024

-----------------------------------------------------------------------------------------------
#### Before going through this worksheet, you should:
* Have completed worksheet G1 and created the Speech Stroop Task.
-----------------------------------------------------------------------------------------------
## UNDER CONSTRUCTION! :construction_worker_woman:
### Adding practice
In most of our experiments, we have a practice run of the experimental task before we start the actual experiment. When we are in person, this helps us determine if someone has understood the experiment, or if they need clarification on some of the instructions. Obviously we can't do that for online studies. However, practice runs also help the participant learn what to expect, so that they can get used to the pace and demands of the experiment before it actually starts. 



-----------------------------------------------------------------------------------------------
### Practice type 1: Hard-coded Practice Trials with Conditional Branching

#### Make the practice display 🔨

"Hard-coded" means that you are definitively deciding how the practice will go every time, for every participant. That is, you pick a certain set of stimuli that you want every person to do in that order. 

You'll need **one display** for this type of practice. You can call it "hardCodePractice". It will need several **screens**: 

1. **Instructions**. Make sure the instructions are informative but not too wordy. The participant has already seen the instructions for the entire experiment, so the function of these instructions is to signpost that they are about to start the practice.

2. **Screens for two practice trials**. Each trial will include the same trial structure as the actual task, which you have already created:
    1. A fixation cross for 800 ms
    2. The stimulus word + audio recording
    3. An interstimulus interval (ISI) slide (blank screen of 1.2 seconds)

You will need enough screens to make two trials, rather than just one trial sequence that repeats according to the spreadsheet. The fastest way to create this is by making one set of screens as intended, and then copying those screens to new blank screens. To do this, first add as many new screens as you will need. Then, click the drop down arrow next to the name of the screen that you want to copy, then select "copy screen." Then, on the screen that you want to paste the copied information to, click the dropdown arrow and then "paste screen". Make sure to rename the screens so you know what they are.

3. **A landing screen where they can pick if they want to repeat the practice, or move onto the task**

#### Set up the trials
You will use the same stimulus words from worksheet G1. The best words to use are those that represent the full complexity of the experimental task. This means including some words that are more difficult for the participant and some that are easier. Pick two stimuli that you think satisfy this requirement. Then, change the stimulus text object in each instance of your screens so that they are **hard-coded** to display the trials you selected. 

> 💡 **Further Consideration 1**: Why would you tell a participant that practice will start right away?

> 💡 **Further consideration 2**: In what types of situations might you use this type of practice? 

#### Set up the landing screen and use Conditional Branching 
The easiest way to move between screens for a hard coded practice is using buttons and conditional branching. **Conditional Branching** means that you will use the branching component to control the flow of screens based on responses from the participant. To do this, you will first have to add two different buttons that participants can click on: 
* As you have probably learned, there are many kinds of buttons available on Gorilla. Use a "text button response" for these buttons. 
* Give each button a **name** that tells you as the programmer what its purpose is (ex: "tryAgain") and a **label** that tells the participant what it does (ex: "I want to practice again")
    * One button should be a button to go through the practice again
    * The other button should be a button to continue to the main task

Next, you will want to set the response that is sent to Gorilla when a participant clicks on either button. 
* Text button response objects come with a "Click response" component.
    * One button should have something like "redo" in the response field of the click response component.
    * The other button should have something like "continue" in the response field.

Then, you will need to add a component to the Screen tab that references what response the participant gave. 
* Switch from the objects tab to the screen tab. Click Add component, then look for a "branch" component.
* Add two destinations, one for each possible response value (from your two buttons).
    * Set the criteria to response value.
    * Type in each respective response (continue/redo)
    * Set accuracy to "any" (there is no correct response!)
    * For screen select the appropriate screen in which you want to move to.

> 💡 **Further consideration 3**: What screen do you think you should move to if someone wants to redo the practice? How about if they want to continue to the main task? (Remember the difference between screens and displays!)  

-----------------------------------------------------------------------------------------------
### Practice type 2: Randomized subset of trials with "jump to row" for continuing or redoing

For this type of practice, we will be using a new method of randomization called **"select randomized subset."** This method allows there to be many trial options on the spreadsheet, but only a select few will be randomly selected for each participant. 

#### Make the displays 🛠️

You'll need three displays for this practice. 

1. **Instructions** You can name this display "practiceRandInstructions." Follow the same guidelines for the instructions used for the hard-coded practice. (hint: copy screens!) 
2. **Trial Display** You can name this display "practiceRand." The trials will have the same setup as the hard-coded practice, except there will only be **one** set of screens, which will repeat for every trial. The spreadsheet will control how many trials are presented to the participant. 
3. **Post Display** You can name this display "practiceRandPost." This will be the same layout as the landing screen from the hard-coded practice. However, buttons will be controlled using jump to row components instead of conditional branching. 

#### Edit the spreadsheet
* Set up the spreadsheet to have a logical flow of displays so that the instructions are first, then six practice trials, and lastly the post practice display. Make sure that the instructions for the practice come after the instructions for the whole experiment.
* Add a column to the spreadsheet and name it "select_subset." For each trial, type the name of the color in this column (e.x "red.")

#### **Add the Randomizer and Preview Randomization** 
* Add the randomizer: "select randomized subset"
* Add three subsets: For column, select **select subset.** For value type in one of the color names. For number, select 1. 
* Keep the randomizer from G1

> 💡 **Further Consideration 4**: What happened to the spreadsheet when you previewed the randomization? Try randomizing the spreadsheet multiple times and note what happens. When would you use this kind of randomization?

> 💡 **Further Consideration 5**: What do you think would happen if you changed the number from 1 to 2?

#### Add the jump to row screen component

* Copy and paste the buttons from the previous landing screen onto the post display screen. 
* Go to the screen tab, and add the component of "Jump To Row."
    * Add two destination boxes, one for each button.
    * Set the criteria for each to "response value."
    * Type in the response for each corresponding button.
    * For the accuracy, select any. 
    * For the row index, you will put the corresponding row number of the spreadsheet that corresponds to the practice instructions, or to the break before the experimental trials. 

#### Preview the experiment and commit the changes

Is this producing the behavior you expected? Try each button to make sure! 

> 💡 **Further Consideration 6**: If a participant were to redo the practice trials, would the stimulus words on the second practice be new randomized words? 



*
*
*
*
*





---------------------------------------------------
**Answers:**

**FC 1:**  Many people expect some delay between clicking a button and having to speak, so it is good to warn people that they will have to start speaking right away.
<br><br> 
**FC 2:** It would be good to use hard coded practice when you want every participant to recieve the same trials and/or in the same order so that the difference between trials is easier for participants to percieve. 
<br> <br>
**FC 3:** If they choose "redo", they should move to the first practice trial screen (or practice instructions, to give them a reminder). If they choose "continue", you should *end display* 
<br><br>
**FC 4:** The number of practice trial repetitions should have been reduced from 6 to 3 (one per color). There should be one trial for each different color. When you randomize it multiple times, there should be a different color order each time. This randomization would be good for when you have multiple different practice trials on the spreadsheet but only want each participant to be presented with a few at a time, and it doesn't particularly matter which stimuli they get.   
<br><br>
**FC 5:** You would get all six trials again (since you are choosing a random two out of the two available for each color). 
<br><br>
**FC 6:** This may be a tricky question! They are the same words. Spreadsheets are only randomized **once per experiment** unless you code otherwise. 

---------------------------------------------------
### You are now ready to proceed with Worksheet G3!
You can access these in the comppedagogy repo.
