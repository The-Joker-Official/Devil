# Devil
This is the official GitHub for Devil.

Devil is a simple 1 KB batch file that is designed to block the computer, showing an unescapable VBScript dialog box, with a cheeky message in it.

**Note: I lazilly fixed the Windows XP compatibility issue.**

Command line parameters
-
Most of the time, these parameters are not useful, as Devil automatically checks if the virtual machine is on Collab VM or the Virus Farm. But, if you want to switch between Collab VM mode and Virus Farm mode, you can:

To switch to Collab VM mode, type `collabvm`, `collab`, `cvm`, or `c`. For example:

`%0 collabvm`

To switch to Virus Farm mode, type `virusfarm`, `virus`, or `v`. For example:

`%0 virusfarm`

Notes
-
As you may have noticed, I was going to say "Features", but then I realized that it sounds more like notes rather than features.
* **The batch file successfully runs on both Collab VM and the Virus Farm\*, in all Windows versions available there.**
  * \*For some reason, on the Virus Farm, the virtual machines will reset if you log off or shut down/restart. To compensate for that, the batch file checks if a registry key called "Virus Farm Loader" exists. If it does, the virtual machine won't reboot, instead, it will simply block logonui.exe (responsible for the Ctrl+Alt+Delete menu) and taskmgr.exe (invoked by pressing Ctrl+Shift+Esc) with the Debugger key in Image File Execution options. Unfortunately, it will display a message rather than simply ignoring Ctrl+Alt+Delete (I wanted the Devil message to appear at all times), but it is better than nothing (you have to reboot for scancode maps to take effect). Also, it will try to kill all common processes, so your computer will be stuck with that message (unless there is a process that is not defined in/by the batch file, of course). Again, it is better than nothing.
* **Because there is an 18-second window (you only have 18 seconds to control the virtual machine in one turn), you probably want to open the batch file quicker.**
  * To do that, you probably should create an executable file (for example, exe) that runs the batch file (you can use the ancient iexpress.exe (it creates a self-packaging executable), you can use the several "BAT to EXE" tools, etc.). There are several advantages over this:
      * If you have the part of the manifest on the executable that lets Windows automatically run the executable as an administrator (administrator/admin manifest), you can quickly run the executable straight from the web browser's download page, rather than going to Windows Explorer to find the executable, *then* right-clicking on the executable, *then* clicking on the "Run as administrator" button. These cumbersome steps are so cumbersome, you will most likely take more than 18 seconds to do so, ending your turn, and having that stupid CHOCOLATEMAN guy (or whoever that person is) winning over you. This step only applies to the Windows 10 virtual machine, because that is the only virtual machine that Dartz did not (intentionally, for several reasons) disable UAC (**U**ser **A**ccount **C**ontrol) on.
      * When uploading the raw batch file to reich.io, d.collabvm.com, a.collabvm.org, et cetra, for some reason, it will most likely not download the file (what I mean is that the file does not show up in the web browser's download page). That means you have to select all of the text (code), *then* open Notepad, *then* paste all of the text (code), *then* save the document as a batch file. Again, these cumbersome steps are so cumbersome, you will most likely take more than 18 seconds to do so, ending your turn, and having that stupid CHOCOLATEMAN guy (or whoever that person is) winning over you. So, use an executable file instead, as it will actually download the file, saving a lot of precious seconds.
      * I doubt anyone will change the file association of exe files, as that will prevent a lot of applications from running, making the virtual machine (sorta!) unusable, unless someone changes the file association back.
      * And lastly (I think), so people won't edit the code that easily.
