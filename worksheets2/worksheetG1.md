## NeSST's INC (Intro to NeSST Computing) series
### Worksheet G1: Your first Gorilla experiment

#### Skills introduced: 
* Cloning material from Standard components
* Learn how to record speech data in Gorilla
* Best practices for online experiments

----------------------------------------------------------------------------------
#### Before going through this worksheet, you should:
* Have your own Gorilla account (using your MU email) 
* Have gone through the Gorilla tutorials (both the experiment builder tutorial and the task builder tutorial)
* Have the NeSST Lab "Standard components" folder shared with you (ask Robin or the lab manager if you don't have this yet) 
----------------------------------------------------------------------------------
### Why Gorilla?

Gorilla is an online platform designed specifically for behavioral experiments. There are several advantages of online experiments: <br>
1. You can reach a larger variety of people;
2. You can reach a larger number of people;
3. People with mobility issues (including people with ataxia!) don't have to spend extra effort making their way to and around the lab;
4. People with less flexible work or care hours can do studies on their own time, rather than having to work around the lab schedule.

However, there are also disadvantages to online studies, especially for the kinds of studies that we run. These include: <br>
1. Non-uniform equipment, such as different microphones, different headphones, different display sizes, etc.; 
2. Participants are more likely to get distracted in their home, compared to when they are in a sound booth in a lab; 
3. We can't monitor how the experiment is running and make adjustments if there are any issues, or if instructions are confusing

We can mitigate some of these factors with **experiment design** and by **vigorously testing** our experiments. In this worksheet, you will learn to make a very basic experiment with three modules: 
1. Consent form
2. Microphone check
3. Word production task (Stroop task with speaking)

In the spirit of INC Worksheets, the instructions will be fairly step-by-step, but you may need to do some independent exploring to totally figure things out. This exploration is what will give you confidence navigating Gorilla by yourself, and helps you learn the ins and outs of Gorilla more thoroughly. 

----------------------------
### Starting a new project

#### 1. In your Gorilla account, create a new project. 

Go to your Projects page, and then click Create New Project in the right hand corner. Name this project as you wish (e.g. "Practice lab stroops"). 

#### 2. Clone tasks from Standard components. 

For this project, you will need a consent form ("SAMPLE consent"), a way to check that the browser is giving proper permissions to the microphone ("Microphone permissions check"), and a way to check recording quality ("Microphone quality check"). 

On your projects page, look under "Projects I'm collaborating on" and find Standard components. Enter that project. Then, for each standard component that you need, clone a copy into your new project. 

#### 3. Set up the flow of components in a new experiment

Navigate back into your practice project and make a new experiment. Give it a name that has some information about the kind of experiment it will be, e.g. labStroops. 

Set up the experiment flow so that it goes through each of the Standard components you just cloned. Commit this version with an appropriate comment. 

**Further consideration 1**: what order should these components be in? Why? (Answer at end of worksheet) 

----------------------------
### Making a speech task 

#### 4. Setting up the instructions

The first display you will make will be for instructions. This is the basic information that you need to convey to your participants for this study: 
* They will see words on the screen
* Words will be in different colors
* They should say the color, not the word
* They should try to go as quickly as possible while still being accurate 
* It might be hard but they should do their best
* Provide an example

Writing instructions for participants can be challenging. This is particularly true for online studies, because you won't be there to clarify if they have any questions. 

Try to write a set of prose instructions that is clear and unambiguous without sounding condescending. You should aim for language that can be understood by a middle schoo

_Hint:_ you can use more than one screen to convey instructions! This can be helpful when there is a lot of information. 

#### 5. Make the spreadsheet for the task
Set up a spreadsheet that takes you through the experiment flow (detailed below). You can either do this right in Gorilla, or you can use Excel to set it up. If you use Excel, save the file as a **.csv** (Comma delimited) in the comppedagogy folder on your computer (or anywhere in your personal MU OneDrive if you don't have comppedagogy cloned on your computer). Then upload it to Gorilla. 

#### Blocks and trials
In this experiment, people will complete two blocks of trials. A **trial** is every time a new stimulus is presented; a block is a group of trials that occurs together in a sequence, without break.

In each block, the participant will repeat each unique stimulus twice. 

There will be a break after each block, where participants can take a little rest, and then continue when they are ready.

**Further consideration 2**: How will you set up the breaks? _Hint_: You might need another set of instructions for it. 

#### Stimuli
Words: rid, rad, grain, groan, blow, bleed\
Colors: red, green, blue

For simplicity, only "rid" and "rad" will be displayed in red font; only "grain" and "groan" will be displayed in green font, and only "blow" and "bleed" will be displayed in blue font. 

#### Randomization
Stimuli within a block should be randomized, i.e. displayed in a (different) random order for every block, so that each participant gets a (potentially) unique sequence of trials. _Hint:_ check out the documentation on randomizing rows. 

**Further consideration 3**: Why do we want trials to be randomized? 

#### 6. Make the trial display

The trial display should consist of the following screens: 
1. A fixation cross for 800 ms; 
2. The stimulus (word and font color should both be determined by the spreadsheet).
  a. This should display for 2 seconds before advancing, giving the participant plenty of time to react and say the word.
  b. This should be accompanied by an **Audio recording** component that starts when the stimulus appears, so that you can record what the participant says.
3. A blank screen that advances automatically after 1.2 seconds, so that people can take a little breather between trials

**Further consideration 4**: Why do you want to start recording as soon as you display the stimulus? 

----------------------------------
#### Answers: 

**FC 1**: The components should be 1. consent form (participants MUST consent before any data is collected); 2. microphone permissions check, and then 3. recording quality check. You have to check permissions before you check quality, because if permissions are not being given, there will be no recording to check the quality of! \

**FC 2**: You will need to set up another display for the break, and then include the break as a row in the spreadsheet. \

**FC 3**: If the order is the same for everybody, or for every block, people could memorize the order of responses and thus not actually have to complete the task as intended. Or, there could be order effects that we don't know about (e.g. saying "green" before saying "red" could have a specific effect on "red", so we want to make sure that we don't always do it in that order). \

**FC 4**: Some people may start talking very quickly, and you want to make sure you get their entire utterance. At the same time, you don't want to stop displaying the stimulus too fast, for people that may need it for longer. It is very tricky to "force" people to respond at exactly the time you want. 

----------------------------------
### You are now ready to proceed with [Worksheet G2](https://github.com/nesst-lab/comppedagogy/edit/main/worksheets2/worksheetG2.md)!
You can access these in the comppedagogy repo. 
