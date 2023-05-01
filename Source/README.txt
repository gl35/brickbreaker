The Source folder contains the asset, hardware, and software

asset: all the data files for the sound effect are here and already parsed.

	*You will need to use the audioblog.S file to upload all the sound files with the full directory.

hardware: only the dualCore_wrapper.xsa is needed to replicate the project.
	*to do this, simply create an application project in Vitis and ust the .xsa file.
	* I have also include the dualCore Vivado Project file, thought it might not work since I didn't include a lot of its dependency files.
	* I also include all the files for the custome core (RNG).
	* All the constrain files are here as well.

software: 
	videoMain:
		src: 
			main.c, this is the main file for all the other program.  
			*create an application project with empty C++, right click on the src folder and add all the main.cc and lscript files from this folder
			
	audio:	
		src: all the audio source files are here.  
		* In Vitis, once you have the application project created with the wrapper.xsa, create another application project with empty C, and right click on the src folder and all all the files in this folder.
		* audiomain.c is the main file what we will run on.  
		* use the lscript settings in this folder too.