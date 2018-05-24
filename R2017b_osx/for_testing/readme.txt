mt_sat_batch MATLAB Python Package

1. Prerequisites for Deployment 

Verify that version 9.3 (R2017b) of the MATLAB Runtime is installed.   

If the MATLAB Runtime is not installed, you can run the MATLAB Runtime installer.
To find its location, enter
  
    >>mcrinstaller
      
at the MATLAB prompt.

Alternatively, download and install the Macintosh version of the MATLAB Runtime for R2017b 
from the following link on the MathWorks website:

    http://www.mathworks.com/products/compiler/mcr/index.html
   
For more information about the MATLAB Runtime and the MATLAB Runtime installer, see 
Package and Distribute in the MATLAB Compiler SDK documentation  
in the MathWorks Documentation Center.    

NOTE: You will need administrator rights to run the MATLAB Runtime installer. 


Verify that a Macintosh version of Python 2.7, 3.4, 3.5, and/or 3.6 is installed.

2. Installing the mt_sat_batch Package

A. Change to the directory that contains the file setup.py and the subdirectory 
mt_sat_batch. If you do not have write permissions, copy all its contents to a temporary 
location and change to that directory.

B. Execute the command:

    python setup.py install [options]
    
If you have full administrator privileges, and install to the default location, you do 
not need to specify any options. Otherwise, use --user to install to your home folder, or 
--prefix="installdir" to install to "installdir". In the latter case, add "installdir" to 
the PYTHONPATH environment variable. For details, refer to:

    https://docs.python.org/2/install/index.html

C. Set environment variables as follows:

In the following directions, replace MR by the directory where MATLAB or the MATLAB Runtime is installed on the target machine.

If the environment variable DYLD_LIBRARY_PATH is undefined, set it to the following string:

MR/v93/runtime/maci64:MR/v93/sys/os/maci64:MR/v93/bin/maci64

If it is defined, set it to the following:

${DYLD_LIBRARY_PATH}:MR/v93/runtime/maci64:MR/v93/sys/os/maci64:MR/v93/bin/maci64

3. Using the mt_sat_batch Package

On the Mac, you must use the mwpython script, found in the bin directory of your MATLAB 
Runtime, to start a session or script that imports your package. Execute:

    mwpython -help
    
for more details. 

NOTE: Ensure that you are using a 64-bit JVM.
The mt_sat_batch package is on your Python path. To import it into a Python script or 
session, execute:

    import mt_sat_batch

If a namespace must be specified for the package, modify the import statement accordingly.
