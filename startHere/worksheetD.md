## SMNG's BASIC (BLAB And SMAC Intro to Computing) series
### Worksheet D: when we break git etiquette
 
#### Skills introduced: 
* Reading git error messages
* Merging commits
* Resolving conflicts

----------------------------------------------------------------------------------
#### Before going through this worksheet, you should:
* Be added to the comppedagogy repo by one of the BASIC leaders
* Have cloned the comppedagogy repo to your computer
----------------------------------------------------------------------------------
### Why git etiquette? 

Recall that in SMNG we keep all our experiment code in a git repo. In Worksheet B, we talked about an example where two people found typos independently, but only one person (Chris) followed good git etiquette: 

* I've written the function gen_ostUserEvents_timeAdapt, and pushed it to the master repo. Chris is using it and notices a bug: 

`expt.name = 'tmieAdapt'`; --> should be `expt.name = 'timeAdapt';` 

* He fixes it and saves it to his computer, and pushes the fixed version to the master. The next day, I come in and immediately start using the script, but without checking if there's a new version on the master repo. As I'm using the script, I notice another bug: 

`dummyWord = 'caper'`; ---> should be `dummyWord = 'capper'; `

* I fix this and save it to my computer. Then I try to push it to the master repo, but there's a problem! When Git compares the master version to my version, it notices that it is different in more places than what I just fixed. This is called a "conflict". 

What do we do now? Because there are potentially a lot of people working with the same functions and making edits, it is very important to follow good git etiquette to avoid problems. However, even if everybody perfectly follows git etiquette, you might just get "sniped" and have someone push a new commit as you're typing your final push command! In this worksheet we will deliberately break git etiquette by ourselves so that you can get acquainted with what happens when there are conflicts, and learn how to fix them. 

----------------------------
### Merging

You may have already come across a merge issue in your git travels. This is in fact something that can happen if you get "sniped"---you pull, someone else pushes while you're writing your push command, and then you push. To simulate this, 

#### 1. Open git bash (PC) or your command line (terminal program, mac). 

Navigate into your personal directory and use vim to create a new text file called something like "myLocalFile.txt". In the body of this document, put any sentence at all.  

#### 2. Using good git etiquette, push this file to the master repo. 

#### 3. Now use your browser to navigate to your personal directory. 

The link to the comppedagogy repo is http://github.com/blab-lab/comppedagogy. From there, you can click on the folder names just as you do in your file explorer to get to your personal directory. 

#### 4. You should see the file you just pushed in that directory (if you don't, make sure you actually added/committed/pushed in git bash). 

#### 5. In the upper right hand corner, you should see an option to add file. Click on this dropdown, and then select "Create new file". 

#### 6. Name your file something like "myMasterFile.txt" (make sure you include the .txt extension). You can put whatever words you like into the body of this file. 

#### 7. Scroll down to the bottom. There will be a dialog box to create a new commit. 

Enter a commit message (this is the browser equivalent of `git commit -m "message about this commit here"`). Make sure the radio button for "Commit directly to the master branch" is selected, then click "Commit new file". 

#### 8. Now go back to git bash. *WITHOUT pulling*, re-open your original text file from step 1, using vi. 

Change something about the body of the text file, e.g. add "baaaad to the bone" to the bottom. 

#### 9. Now try to add, commit, and push your new changes to your original text file. 

#### 10. Oh no, an error! What does this error tell you? Does it make sense with what you know has just happened? 

#### 11. Now do a `git fetch && git status`. Carefully read the message describing the status. 

What is the 1 commit on your branch and the 1 commit on the master branch? 

#### 12. Helpfully, in this message, git actually tells us what we should do. Perform the suggested action. 

#### 13. You should now be in a completely different looking screen. 

In many computers, you have gotten yourself into a vim screen; in others, it might be using Notepad or some other text editing program. Once again, this message also tells you what to do! Complete the suggested action, then exit the text editing program. 

#### 14. Now read the results of your action. 

Are we done? Have you pushed your latest commit? (How do you find out? If you haven't pushed, push now.) 
----------------------------
