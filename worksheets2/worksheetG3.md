## NeSST's INC (Intro to NeSST Computing) series
### Worksheet G3: Creating a Forced Choice Task in Gorilla

#### Skills introduced: 
* Triggering buttons with a mouse click or F/J keys
* Setting text of buttons via manipulation and randomizing this in the experiment setup
* Creating a progress bar to display task progress to participants 
* Using the scorer component and storing variables to display participant's score

Initiated by Maggie Ribaudo July 2024 

---------------------------------------------------------------------------
#### Before going through this worksheet you should:
* Have completed worksheet G2.
---------------------------------------------------------------------------
#### Add the stimuli
The stimuli can be accessed through OneDrive. Navigate to C:\Users\(insert your pawprint here)\OneDrive - University of Missouri\nesstlab\experiments\standardGorilla\. Then navigate into the sound and picture stimuli folders. Upload the following files into the stimului page of Gorilla: set 65 dB, sit 65dB, sat 65dB, suit 65dB, F image and J image. 

#### Set up the spreadsheet
There will be 7 blocks in this experiment, consisting of 4 blocks of "Trials" and 3 blocks of "Filler." Each block of **trials** will have 26 total, while each block of **filler** will have 20 total. There will be a break between each block of trials. The entire spreadsheet should have 173 rows. You will need a column for the correct answers and a column for randomizing the trials within each block. 

### Make the displays
There will be **6 displays** for this experiment:
1. Instructions
2. Practice
3. Trials
4. Filler
5. Break
6. Finish

#### Instructions
The information that you need to convey to participants in this study:
* They will hear a sound clip
* Next they will see buttons corresponding to different words: set and sit or suit and suit
* They have the option to respond either by clicking the button or using their keyboard
* They should respond quickly and accurately
* Selecting a word will move them to the next trial

#### Practice
The practice will be hard-coded. The practice will include the same screens as trial and filler. You can copy the end of practice screen from NeSST Lab ornaments and edit it to suit this task. Additionally, add a final short instructions screen before the participant moves to the experimental task. Inform the participant that the task will take 5 minutes, there will be 7 blocks, there will be breaks, along with a progress bar letting them know how far they are in the task. 

### Trials and Filler
The trials and filler displays will each have **2 screens**:

**Present stimulus:** This is the screen that displays the stimulus to the participant. This screen will include the following objects:

1.) A progress bar
<br>
2.) an early exit button.
<br>
3.) A fixation cross with a 2000 ms display time and 100 ms post display time
<br>
4.) An audio clip

**Respond:** This is the screen in which the participant completes the "forced" choice by responding either by clicking or button or pressing a key on their keyboard. This screen will include the following objects:

1.) A progress bar
<br>
2.) An early exit button
<br>
3.) 2 buttons (copying from NeSST Lab ornaments and modifying can be helpful)
<br>
4.) 2 Images (F and J)

### Using Multiple Triggers
Take a moment to search through the components that can be added onto the button or F/J image.

**Further Consideration 1**: What kind of component should you add so that using the keyboard will produce a response in Gorilla? What kind of component should you add so that a mouse click will trigger a response?










**Further Consideration 2**: What would happen if you did not add the click response component onto a button and instead just as it's own separate object?

### Button Manipulations
Manipulations allow you to design settings that will change for each participant who is completing the experiment. In this case, we will be manipulating the text of the button and the corresponding responses. 

* On the trials display, bind the left button's text to a manipulation titled "buttonLeft" do the same for the right button, except title it "buttonRight."
* Do the same for the filler display, except name them "leftButtonFill" and "rightButtonFill"
* For each response (click or keyboard) bind this to the corresponding button.
* If you are having any troubles with this, make sure under settings that each manipulation has a proper key. The key is what is displayed on the object tab whenever you bind the manipulations. 

**Further Consideration 3**: What are the manipulations doing? 

### Progress Bar Component
The progress bar is helpful for long experiments in which a participant may get fatigued and wonder how far into the task they are. 

**On Screens 1 and 2**: Set the progress maximum to the amount of trials in your task. Choose whichever color you would like. Click "use custom field" and create a field titled "progress."

**On the 2nd Screen**: On the screen tab, add an "increase progress" component. Set the criteria to "any response," select "use custom field," bind to progress. 

**Further Consideration 4**: On which screen will the participant see the progress bar change? Why does only one screen have an increase progress component?

#### Break and Finish
You can copy the break and end of task screen from NeSST Lab ornaments and edit as needed.  

### Scoring and Storing 
Somtimes you may want to score a participant's answers and display them back to the participant. For example, as a part of our standard lab components, participants must undergo a series of audio equipment checks to make sure that their microphone and environment is ready. In the microphone quality check, the participant must correctly identify which audio clip contains their own speech. They have up to 5 chances to get 5/6 answers correct, if they do not then they are removed from the experiment. At the end of each attempt, they are informed of their score which can help them to improve the next time around. 

* Select the scoring component from the screen tab, and add it onto the screen(s) in which the participant must respond. Bind this to the answer column of the spreadsheet. Next add a "save accuracy" component. Set the criteria to "response accuracy" and select the include actions tab, set the accuracy to "correct" and the attribute to "total." Save this to a field titled "correct." This will save the total correct answers throughout the experiment to the store. 
* On the final screen, markdown text allows us to display participants score. ${store:correct} calls to the store and presents the variable "correct." Type a simple message such as "You scored ${store:correct} out of (total experiment trials.)

### Preview the Experiment and Commit the Changes
* Make sure that the scoring is working properly
* Make sure that the screens are advancing correctly
* Make sure that the correct buttons and stimulus words are being presented
* Check the progress bar display
* Check that both a click and keyboard response results in a response

### Set up the Experimental Flow
Go back into the folder you are working in and create a new experiment. This is where we will create the experimental design, which includes creating the order tasks will be presented to each participant and setting up any manipulations. We will also be randomizing the participants into groups. Always make sure that any tasks you use are up to date. 

**Include a**:
* start and finish node
* randomizer creating two groups "setLeft" and "setRight" leading to each different forced choice manipulation

#### Test the Experiment
* Follow the NeSST Lab Notion guidelines titled "How to test Gorilla experiments" to test the experimental flow. 

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#### Answers:

**FC 1**: 1. Keyboard Response 2. Click Response
<br>
**FC 2**: If you did not add the click response onto the button, then any click at all on the screen would result in a response, and would advance to the next trial. This is problematic because accidental clicks might lead to the participant providing incorrect responses. 
<br>
**FC 3**:  The manipulations are randomizing the text of buttons, and matching the responses to these buttons. The manipulations put participants into two different groups who each get a different left and a different right button.
<br>
**FC 4**: The participant will see an increase in progress on the screen that presents the stimulus. They should not see a change in the progress bar on the screen in which they respond. If there were multiple increase progress components, then the progress would increase on both screens and would not be accurate to how much progress the participant had actually made. 

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### You are now ready to proceed with Worksheet G4!
You can access these in the comppedagogy repo.
