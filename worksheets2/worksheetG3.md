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
### Start a new task 
Start a new task for this worksheet, using Task Builder 2. 

#### Add the stimuli
The stimuli for this worksheet are in the NeSST Lab OneDrive. Navigate to \nesstlab\experiments\standardGorilla\. Then navigate into the sound and picture stimuli folders. Upload the following files into the stimului page of Gorilla: 
* set_65dB
* sit_65dB
* sat_65dB
* suit_65dB
* F_alone
* J_alone

#### Set up the spreadsheet
There will be 2 blocks in this experiment: 1 block of "Trials" and 1 block of "Filler." 

The block of **trials** will have 10 total trials, and the choices will be "set" and "sat". There will be 5 repetitions of each possible word. 

The block of **filler** will have 10 trials, and the choices will be "suit" and "sit". There will be 5 repetitions of each possible word. 

There will be a break between each block of trials. You will need the following columns: 
* Stimulus (the name of the sound file that will be played)
* Answer (the correct answer)
* randomize_trials (a column to denote which groups of trials should be randomized) 

-------------

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

You will want to illustrate what they will see, so that they know what to expect. Because pictures take up some room, you may need to use multiple screens to convey this information without providing too much information at once (or possibly not being able to fit it all on the screen!). 

#### Practice
Because there are two different button configurations, you will have to **hard-code** this practice. Make four practice trials to present all four words one time. 

The practice will include the same screens as trial and filler, so you may want to build the trials first, and then copy and paste into practice. 

You can also copy the end of practice screen from NeSST Lab ornaments and edit it to suit this task. 

Additionally, add a final short instructions screen before the participant moves to the experimental task. Inform the participant that the task will take 5 minutes, there will be 2 blocks, there will be breaks, along with a progress bar letting them know how far they are in the task. 

#### Trials and Filler
The trials and filler displays will each have **2 screens**:

**Present stimulus:** This is the screen that displays the stimulus to the participant. This screen will include the following objects:

1. A progress bar
2. An early exit button.
3. A fixation cross with a 2000 ms display time and 100 ms post display time
4. An audio clip, which will play automatically after a 500 ms delay

> 💡 **Further consideration 1:** Why don't you want to play the soundfile immediately when the stimulus screen starts? (Hint: think about what triggers you to get to that screen)

**Respond:** This is the screen in which the participant completes the forced choice task (forced choice means they have to choose one of two options; they can't enter a free response). They can respond either by clicking or button or pressing a key on their keyboard. This screen will include the following objects:

1. A progress bar
2. An early exit button
3. 2 buttons, one for each possible word. Use the plain button for this worksheet. 
4. 2 Images (F and J)

#### Break and Finish
You can copy the break and end of task screen from NeSST Lab ornaments and edit as needed.  

---------------
### Setting up responses
Now, you will set up the buttons so that people will click on the word that they hear. First, you will have to use **manipulations** to determine which word goes in which button. You will learn how to give people multiple ways of responding to a two-way forced choice question with multiple response types. Some people like to respond with keypresses, and other people like to respond with the mouse. You can set up buttons so that they accept both of these types of responses. 

#### What should the buttons say? Using manipulations
Manipulations allow you to design settings that will change for each participant who is completing the experiment. You "manipulate" how the experiment is presented to each person by predetermining these settings in the task builder, which are ultimately controlled in the experiment builder. In this case, we will be manipulating the text of the button and binding the responses (click and keyboard) to these manipulations. There will be 4 manipulations total, one for each button.

**Create manipulations:**
* Click bind next to the textbox for the left button on the trials screen. Switch from the spreadsheet to manipulation tab. Create a new manipulation titled "buttonLeft."
* Repeat this process for each button, naming the buttons based on position on the screen. However, for the filler display, add "Fill" to the end of the name to identify the buttons easier. 
* Switch from the display page to the settings page :gear:
* Here you can see the manipulations and change various parameters. Make sure to set Label and Key to be the same thing, these both are for the name of the manipulation. Description allows you to describe what the manipulation does. Default is where you set what the manipulation will be automatically when someone goes to test the experiment. As a defaut, set these to match the stimulus word pairs "set and sat" and "suit" and sit." (The order is not important)

**Binding to Responses:**
* The main idea of this is to make sure that whatever response is submitted matches the text of the button. Since the text is determined by the manipulations, binding directly to the manipulations ensures that there is no room for errors.
* For every response (click and keyboard) bind to the corresponding button position.

> 💡 **Further Consideration 2**: What are the manipulations doing? Why might we want to change this for different participants? 

#### Using Multiple Triggers
Take a moment to search through the components that can be added onto the button or F/J image.

> 💡 **Further Consideration 3**: What kind of component should you add so that using the keyboard will produce a response in Gorilla? What kind of component should you add so that a mouse click will trigger a response?










> 💡 **Further Consideration 4**: What would happen if you did not add the click response component onto a button, but instead added it as a separate object?
-------------
### Progress Bar Component
The progress bar is helpful for long experiments in which a participant may get fatigued and wonder how far into the task they are. 

**On Screens 1 and 2**: Set the progress maximum to the amount of trials in your task. Choose whichever color you would like. Click "use custom field" and create a field titled "progress."

**On the 2nd Screen**: On the screen tab, add an "increase progress" component. Set the criteria to "any response," select "use custom field," bind to progress. 

> 💡 **Further Consideration 5**: On which screen will the participant see the progress bar change? Why does only one screen have an increase progress component?


------------
### Scoring and Storing 
Somtimes you may want to score a participant's answers and display them back to the participant. For example, as a part of our standard lab components, participants must undergo a series of audio equipment checks to make sure that their microphone and environment is ready. In the microphone quality check, the participant must correctly identify which audio clip contains their own speech. They have up to 5 chances to get 5/6 answers correct, if they do not then they are removed from the experiment. At the end of each attempt, they are informed of their score which can help them to improve the next time around. 

* Select the scoring component from the screen tab, and add it onto the screen(s) in which the participant must respond. Bind this to the answer column of the spreadsheet. Next add a "save accuracy" component. Set the criteria to "response accuracy" and select the include actions tab, set the accuracy to "correct" and the attribute to "total." Save this to a field titled "correct." This will save the total correct answers throughout the experiment to the **store.**
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
* randomizer creating two groups "setLeft" and "setRight" leading to each different forced choice manipulation.

#### Test the Experiment
* Follow the NeSST Lab Notion guidelines titled "How to test Gorilla experiments" to test the experimental flow. 

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#### Answers:

**FC 1**: The participant has just read the instructions, and might need some time to process them before they begin responding to the audio clip. 
<br>
**FC 2**:  1. Keyboard Response 2. Click Response
<br>
**FC 3**:  If you did not add the click response onto the button, then any click at all on the screen would result in a response, and would advance to the next trial. This is problematic because accidental clicks might lead to the participant providing incorrect responses. 
<br>
**FC 4**:  The manipulations change the position of the text on the buttons from appearing either on the left or the right button. If suit is on the left button, then sit will be on the right button and so on. Changing the text on the button between participants ensures that no bias is causing participants to respond in a particular position. 
**FC 5**: The participant will see an increase in progress on the screen that presents the stimulus. They should not see a change in the progress bar on the screen in which they respond. If there were multiple increase progress components, then the progress would increase on both screens and would not be accurate to how much progress the participant had actually made. 

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### You are now ready to proceed with Worksheet G4!
You can access these in the comppedagogy repo.
