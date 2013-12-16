TEAM Engine Tutorial
####################


:author: Luis Bermudez <lbermudez@opengeospatial.org>, Richard Martell
:version: 4.0.3
:date: December 10, 2013
:questions: http://cite.opengeospatial.org/forum


.. contents::

.. footer::

  .. class:: right

    Page ###Page###

.. section-numbering::

.. raw:: pdf
   
   PageBreak oneColumn
   
Introduction
************
This document provides instructions about hot to use the pre build TEAM Engine release.


Building the pre-build TEAM Engine
**********************************
The latest build is available at Sourceforge.

The release 4.0.3 is available at:

https://sourceforge.net/projects/teamengine/files/Team%20Engine/4.0.3/

The folder provides two files which provide all the tests that were deployed in the OGC Production Website

      - **TE_BASE.zip** - contains a pre-packed TE_BASE
      - **teamengine-console-bin.zip** - contains a built console-bin TEAM Engine to run via command line

Process
=======


Unzip files
-----------
Unzip files in your preferred local directory.

Setup TE_BASE
-------------
TE_BASE variable needs to be created or updated properly.

For MAC/UNIX go to the **bin** folder and edit the setenv.sh, by providing the value to TE_BASE directory. For example::

            export TE_BASE=/Users/lbermudez/Documents/test/TE_BASE
         
For Windows go to **windows** and edit **setenv.bat**. For example::

            set TE_BASE=%USERPROFILE%\test\TE_BASE
            
Run a test
----------

   #. Identify the path of the test you want to test under the TE_BASE/scripts directory:

      - For example for WFS 1.1.0 is ``wfs/1.1.0/src``
      - For example for WMS 1.3.0 is ``wms/1.3.0/ctl``

   #. Go to the ``teamengine/console-bin/bin`` directory.

   #. For MAC/UNIX go to ``unix`` directory and run **./test.sh -source=thePathToTheTest**. For Example::
      
            ./test.sh -source=wfs/1.1.0/src   
                    
   #. For Windows go to ``windows`` directory and run **./test.bat -source=thePathToTheTest**. For Example::
      
            ./test.bat -source=wfs/1.1.0/src

                        
   
