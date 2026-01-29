1. Project Workspace Setup

Command Used: mkdir ~/documents  

Output Screenshot: ![Q2 Image1](images/q21.png)

Explanation: I used the "mkdir" command to create the documents directory. I used the path ~ to create it in the home directory.  

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

2. File Creation

Commands Used: cd ~/documents  
touch plan.txt  

Output Screenshot: ![Q2 Image2](images/q22.png)  

Explanation: I used "cd" with the path ~/documents to enter the directory. And the used "touch" with the file name to create the file.  

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

3. Content Addition

Commands Used: echo "This is a reminder to complete your assignment on time!" > plan.txt  

Output Screenshot: ![Q2 Image3](images/q23.png)   

Text File: ![Q2 File1](files/plan.txt)  

Explanation: I used the echo command to write the text of my choice, and used > symbol to write it into the file.  

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

4. File Metadata Verification

Command Used: ls -l plan.txt  

Output: -rw-r--r-- 1 coder coder 55 Dec 26 04:33 plan.txt  

Screenshot: ![Q2 Image4](images/q24.png)  

Explanation: I used the "ls" command to list the files in the directory, and further used the -l command to list it with information like ownership, owner and groups.  

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

5. File Duplication  

Command Used: cp plan.txt plan_copy.txt  

Ouput Screenshot: ![Q2 Image5](images/q25.png)  

Explanation: I used the cp command to copy the file - the first parameter - plan.txt was the input file and the seconf parameter - plan_copy.txt was the output file.  

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

6. Directory Renaming

Command used: mv ~/documents ~/project_documents  

Output Screenshot: ![Q2 Image6](images/q26.png)   

Explanation: I used the mv command which is used to move files, and so can also be used to move  the file with a new name, essentially renaming the file. The first parameter is the input file and the second parameter is the new file name.  

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

7. Archival Structure

Command Used: mkdir ~/project_documents/archive  

Output Screenshot: ![Q2 Image7](images/q27.png)    

Explanation: I went inside the project_documrnts directory and then used mkdir to create a new directory called acrhive.  

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

8. File Organization

Output: mv plan_copy.txt archive  

Output Screenshot: ![Q2 Image8](images/q28.png)   

Explanation: I used the mv commad to move the file to archive folder. The first parameter is the file name and the second parameter is the destination folder.  

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

9. Recursive Listing

Command Used: ls -R  

Output Screenshot: ![Q2 Image9](images/q29.png)  

Explanation: I used the ls command to list the files, but used -R to recursivel list all files within the subdirectories as well.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

10. Path Verification

Command Used: realpath plan_copy.txt  

Output: /home/coder/project_documents/archive/plan_copy.txt

Screenshot: ![Q2 Image10](images/q210.png)  

Explanation: I used the realpath command to get the absolute path of the plan_copt.txt present inside archive.
