OGC School
===========

This is a public repository for OGC training material that can be improved by anyone. If you are a geo developer or an instructor of a Geospatial Web Course this repository is for you.

Folder Organization
====================

- Each standard has its own Folder
- Each folder for each standard contains two folders: **slides** and **img**
- The slides will be build as PDF under the folder **build**
- The **custom** folder contains additional custom information. For example the cover of the presentation. You should customize this to fit your needs.

Files
======

- Each file is written in rst.
- Each file extension is .rst
- Each file should contain language code at the end of the file name. For example for wms in protugese *wms_pt.rst*. 
- ISO 2 letter language codes should be used: http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes

Images References
===================

- The reference location of the images is relative to the slides folder. So to insert an image from the cat/img the following must be done::
   .. image:: ../img/metadataaboutdata.jpg

Configuring the Content
======================

- Edit in the **custom** folder the slides and images to be included in the beginning and end of the presentation
- Edit the **list_of_slides_to_build.txt**. Provide the link to the file you want to include in the presentation.
- Only include the file name and not the fie type .rst. for example:
   - wms/slides/wms_en.rst


Building the Slides
====================
- To build the slides, Shpinx needs to be installed.
   - Geoserver provides `good documentation <http://docs.geoserver.org/latest/en/docguide/install.html>`_ about how to proceed.
   - Then install `rst2pdf <http://rst2pdf.ralsina.com.ar>`_ 
- Run *build.sh* (Currently, only based unix systems are supported)
- The script will:
   - Remove all the pdfs under the **build** root folder
   - Read the  list_of_slides_to_build.txt
   - Under each **standard/slides** folder will remove a **build** folder
   - Under each **standard/slides** folder it will create a **build** folder
   - Temporary store the pdf file under **standard/slides/build**
   - Copy in the root **build** folder the pdfs created locally in each standard folder. They will be numbered following the order in the list_of_slides_to_build.txt.
   - Merge all the pdfs files under **build** as ogc-tutorial.pdf
- The PDF will be created under the **build** folder and will appear as tutorial.pdf



