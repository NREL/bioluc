#NEW BIOLUC USERS, PLEASE READ
==============================
##Development

####Project Team (alphabetical order): 
Daniel Inman ([National Renewable Energy Laboratory](http://www.nrel.gov/) [NREL]), Brian Bush (NREL), Steve Peterson (The Peterson Group), Laura Vimmerstedt (NREL), Ethan Warner (NREL)

####Special Thanks (alphabetical order):
Eric Bryant (NREL), Virginia Dale ([Oak Ridge National Laboratory](http://www.ornl.gov/) [ORNL]), Keith Kline (ORNL), Ben Kuntsman (NREL), Jordan Macknick (NREL)
Gbadebo Oladosu (ORNL), John Sheehan ([University of Minnesota](http://www1.umn.edu/twincities/index.html)), Campbell Skinner ([Bangor University](http://www.bangor.ac.uk/)), Trisha Troop ([Aberystwyth University](http://www.aber.ac.uk/en/)) 

####Project Location and Funding
Built in Golden, CO within NREL's [Strategic Energy Analysis Center](http://www.nrel.gov/analysis/about_office.html).
This work was funded by the [United States Department of Energy’s](http://energy.gov/) [Bioenergy Technologies Office](http://www1.eere.energy.gov/bioenergy/) under agreement #: DE-AC36-08GO28308

##Licensing

Summary: You are free to copy, adapt, distribute, and transmit the work provided you attribute. You must attribute the work in the manner specified by the author or licensor (but not in any way that suggests that they endorse you or your use of the work).

Please go [here](http://creativecommons.org/licenses/by-sa/3.0/) for details
##User Guidance

####Github
For directions on using Github, please see the Github guide available on the front page of your user profile.

####Software
Running simulations requires [STELLA 10.0.3](http://www.iseesystems.com/softwares/Education/StellaSoftware.aspx).
See [ISEE Systems] (http://www.iseesystems.com) for documentation and training related to the STELLA (TM) model.

#####Trial Version Will Allow:
-	Running the BioLUC model
-	Changing assumptions in the user interface

#####Trial Version Will Not Allow:
-	Importing data
-	Saving  changes to the model 

#####Full Version Will Allow:
-	Allow access to all the features of the BioLUC model.

####Wiki and Frequently Asked Questions (FAQ)
The wiki and FAQ are under development [here](https://github.com/NREL/bioluc/wiki).

The wiki will include an overview of the BioLUC model, additional guidance for using the BioLUC model, documentation of know modeling limitations and data issues, and a FAQ.
The wiki and FAQ are works in-progress for 2013/2014. 

####Interacting with the BioLUC Development Team
We are open to questions unrelated to troubleshooting Github and Stella, the raising of theoritical land use issues associated with the model or the general topic of land use change, and documenting model bugs.

Options for interactions with the project team:

1.	Our prefered method is submission of an issue [ticket](https://github.com/NREL/bioluc/issues?direction=desc&sort=updated&state=open) to Ethan Warner [here]( https://github.com/NREL/bioluc/issues?direction=desc&sort=updated&state=open). The use of tickets will prevent duplicatation of issues being raised for the project team and will allow for public tracking or the project teams response.

2.	Email ethan.warner@nrel.gov or daniel.inman@nrel.gov directly.

Ethan can direct questions and issues to the appropriate project team member.

##File Structure and Description

####Downloading
Users can download a zip file of all the folders by going here: https://github.com/NREL/bioluc/releases

####Models and Data
Located within [this](https://github.com/NREL/bioluc/tree/master/Model%20and%20Data) folder are versions of the BioLUC model. The latest version of the BioLUC model is [here]( https://github.com/NREL/bioluc/tree/master/Model%20and%20Data/19-Region%20Model).

Two data files associated with latest version of model are located [here]( https://github.com/NREL/bioluc/tree/master/Model%20and%20Data/19-Region%20Model/data). 

The first file is “Outputs Visualizations.xlsx” which automatically visualizes results exported from BioLUC using the tables in the interface. When exporting data from BioLUC using the interface, the Excel file should already be open. See the “readme” spreadsheet in the “Outputs Visualizations.xlsx” file and directions in the user interface of the BioLUC model for additional directions.

The second file is “BioLUC Data Processing and Model Inputs_2013-10-01.xlsx“ which includes data, data processing, and data documentation associated with BioLUC. This file can be used to understand the sources of data, how data was proceed, and multiple alternative scenarios that can be used as input into BIOLUC. See the “readme” spreadsheet for details.

An older 2-region version of the model is available [here]( https://github.com/NREL/bioluc/tree/master/Model%20and%20Data/Old%202-Region%20Model). The 2-region version of the model corresponds to our concept paper in [Environmental Research Letters](http://iopscience.iop.org/1748-9326/8/1/015003). The 2-region version of the model is only available in version 9.1.4 of Stella.

####Model Testing
[This](https://github.com/NREL/bioluc/tree/master/Model%20Testing) folder includes a presentation documenting the general testing the BioLUC model underwent prior to release. Please note that the presentation is not completely current as it was created prior to testing over the summer 2013.
The [Sensitivity Analysis](https://github.com/NREL/bioluc/tree/master/Model%20Testing/Senstivity%20Analysis) folder includes a report and sensitivity analysis completed by Eric Bryant using a semi-final version of the model.

####Workshop at Oak Ridge National Laboratory (ORNL) May 7-8th
[This](https://github.com/NREL/bioluc/tree/master/Workshop%20at%20ORNL%20May%207-8th) folder contains documents and presentations used in the land use workshop at ORNL on May 7-8th.
Please note that these documents may not be up to-date.
