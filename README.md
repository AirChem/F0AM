![alt text](https://github.com/AirChem/F0AM/blob/master/Docs/F0AMLogo.png "F0AM Logo")

Framework for 0-D Atmospheric Modeling

Most recent public release: [**v4.3**](https://github.com/AirChem/F0AM/releases/latest)

[![DOI](https://zenodo.org/badge/163446406.svg)](https://zenodo.org/badge/latestdoi/163446406)

Contact: glenn.m.wolfe

Other part of contact: nasa.gov (sorry, spammers are smart)

Discussion Forum/Email List: https://groups.google.com/forum/#!forum/f0amusers

### Welcome!
F0AM is a MATLAB program for simulating atmospheric chemistry systems. It is user-friendly and adaptable to a variety of typical applications, including:
- Analysis of laboratory chamber experiments
- Interpretation of field observations from stationary and mobile platforms
- Process and parameter sensitivity studies 

If F0AM is used to support a scientific publication, please cite the following reference:

>*G. M. Wolfe, M. R. Marvin, S. J. Roberts, K. R. Travis, and J. Liao, The Framework for 0-D Atmospheric Modeling (F0AM) v3.1, Geoscientific Model Development, 9, 3309-3319, doi: 10.5194/gmd-9-3309-2016, 2016.*

In addition, we ask that you add the paper to our [List of Publications Using F0AM](https://docs.google.com/spreadsheets/d/1fd7mWTzMiWuuqRG9eI9g0iYyt7DymLIVpDv_rArt5Z8/edit#gid=0).

### Questions and Issues
It is preferred that all questions, suggestions, bug reports, insults, etc. be posted to the public [F0AM users group](https://groups.google.com/forum/#!forum/f0amusers). If your question is sensitive or you prefer to remain anonymous, you can alternatively email the contact listed above. NASA currently prohibits bilateral communication with designated countries, including China, so Glenn may not be allowed to converse with you via email. But anyone can use the forum!

### New Users
To get started, download the most recent public release of the model (link at top of this document). In the main directory of F0AM you will find a file called "F0AM_GettingStarted.pdf" that will guide you through the intitial steps. Read the description paper, read the user manual, and peruse/run the example setup scripts. Remember that models are like any other research tool - they take time to learn, and they break often.

### Repository Structure
The "Master" branch contains the most recent public release of F0AM. Previous versions are also retained under [releases](https://github.com/AirChem/F0AM/releases).

F0AM is a community tool, and we encourage users to share new code/functionality with everyone. Additions or changes can be suggested by creating a new branch, committing your modifications, and issuing a pull request that will then be reviewed by a benevolent maintainer. If you are not comfortable with github lingo or tools, you can also email the contact listed above.

### Additional Notes

Heterogeneous (aerosol) chemistry is not rigorously supported. Despair not, for there is a gas-to-particle partitioning extension, the [Washington Aerosol Module (WAM)](https://www.atmos.washington.edu/~thornton/washington-aerosol-module). This module is a branch from F0AMv3.1 and will be merged with the master branch in a future release. Maybe.

Happy modeling!
