# slides-template Repo Description
 
This repository contains a template for LASER Institute branded slides using the Rmarkdown Xaringan Presentation format. 

# Directory Structure

## main directory (top level)

- The LASERInstitute_Presentation.Rproj contains the R project information for loading the project in RStudio Cloud or Desktop
- The LASERslides.Rmd file contains the yaml for the slides as well as example slides to help with getting started

## css directory
 - The laser.css file contains all styling using the color from the LASER Institute logo and special slides.
 - The laser-fonts.css file pulls the 'Open Sans' and 'Roboto' sans-serif fonts for slide text and the 'Source Code Pro'monospace font for code from the Google fonts API

## img directory

- Contains all the logos and background images for the slides. This would be where to drop author photos for inclusion on the ending slide.

## libs directory 

- Contains the necessary javascript libraries that Rmarkdown pulls when knitting the slides and producing the resulting html. This includes things like xaringanExtra, panelset, and remark libraries for special functionality like tabbed content and copy/paste of code chunks.

