.. sectnum::

.. footer::

  .. class:: right

    Page ###Page### 

********************
TEAM Engine Tutorial
********************

.. image:: ../img/ogc1.jpg
     :width: 10in


.. contents::

Introduction
============

The Test, Evaluation, And Measurement (TEAM) Engine is a test harness that executes 
test suites written using the OGC CTL test grammar or the TestNG framework. 
It is typically used to verify specification compliance and is the official test harness of 
the OGC Compliance Testing Program (CITE), where it is used to certify implementations of 
OGC and ISO geomatics standards.

OGC hosts an official stable deployment of TEAM Engine with the approved test suites:
http://cite.opengeospatial.org/teamengine/

OGC also hosts a Beta TEAM Engine with the tests in Beta and  with new TEAM Engine functionality:
http://cite.opengeospatial.org/te2


Prerequisites and Needed Tools
==============================

To Build TEAM Engine and the OGC Tests you need the following:

- JAVA 1.7 or later http://www.java.com/en/
- MAVEN 3.0  http://maven.apache.org
- An SVN client 
- Tomcat 7.0 http://tomcat.apache.org
- A text editor to open configuration files in XML.

In this tutorial the Eclipse tool will be used to checkout the code and build the maven project.

Java
----
Download JAVA 1.7 JDK (Java Development Kit) from the `Oracle Web site <http://www.java.com>`_

Download and Install Eclipse
----------------------------
Download Eclipse from to `download site <http://www.eclipse.org/downloads/>`_. This tutorial uses version 4.2 (Juno). 

.. image:: ../img/eclipse.jpg
     :width: 10in
     
     
Install Elcipse  SVN and Maven Plugins for Eclipse
--------------------------------------------------
To allow Eclipse to checkout SVN projects and run MAVEN commands it is required to download Eclipse plugins. For 
SVN `Subersive <http://www.eclipse.org/subversive/installation-instructions.php>`_  will be
 downloaded and for maven `M2E <http://www.eclipse.org/m2e/>`_.

Run Eclipse and select **Help > Install New Software**... from the main menu.

.. image:: ../img/installnewsoft.jpg
     :width: 10in
     
Select **"Juno - http://download.eclipse.org/releases/juno"** and expand the **Collaboration** group.

.. image:: ../img/junoinstallother.jpg
     :width: 10in
     
In the **Collaboration** group  select:
   * m2e - Maven integration in Eclipse
   * Subversion SVN Team Provider   
   * Subversion SVN Team Provider Sources  
 
.. image:: ../img/subersive.jpg
     :width: 10in     

Click next and accept license agreements. You will be prompted to restart Eclipse.

When Eclipse is started the **Install Connectors** window will appear. Select SVN **Kit 1.7.8**

.. image:: ../img/svnconnectors.jpg
     :width: 10in
 
Install the connectors 
 
.. image:: ../img/installconn.jpg
     :width: 10in
     
Click next and accept license agreements. You will be prompted to restart Eclipse.    
     

Download TEAM Engine Source code
================================

Connect to Repository
---------------------

In the Eclipse Main Menu go to the **Window** Menu and select **Show View** and then **Other**. Expand *SVN* and select **SVN Repositories**

.. image:: ../img/viewrep.jpg
     :width: 10in
     
TEAMEngine is at the sourceforge repository:

https://svn.code.sf.net/p/teamengine/code

To download a particular tag type: https://svn.code.sf.net/p/teamengine/code/tags/4.0.3


.. image:: ../img/newreploc.jpg
     :width: 10in



Repository Structure
--------------------

The repository contains three main folders::
   
   branches
   tags
   trunk

branches
^^^^^^^^

Branches are used for developers to make a copy, fix bugs, test new features, etc.

tags
^^^^

Tags are where all the releases are found, alpha, beta, and production.
The production releases don't say "beta" nor "alpha"

trunk
^^^^^

Is where the latest development occurs. 

Checkout as a Maven project
---------------------------

Select the version you want to download
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

- Select the revision you want to download. 
- Copy the URL of that branch, For example::
 
   https://svn.code.sf.net/p/teamengine/code/tags/4.0.3

.. image:: ../img/copyurl.jpg
     :width: 10in


     
Installing the Maven SVN connector
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Try checking out as Maven from SCM

.. image:: ../img/checkout.jpg
     :width: 10in

The first time you checkout a MAVEN project from SVN you will be prompted to get a connector     

.. image:: ../img/mvnconnector.jpg
     :width: 10in
        
* Click on **m2e Marketplace**, select **m2e-subversive**  and click **Finish**.
* The select **Maven SCM Handler for Suberversive**
* Click next and accept license agreements. You will be prompted to restart Eclipse.   


Checkout as Maven project
^^^^^^^^^^^^^^^^^^^^^^^^^

Go to **New** / **Other** / **Checkout MAVEN projects from SVN** 

.. image:: ../img/checkout.jpg
     :width: 10in 
     
Paste the URL that you previously selected 

.. image:: ../img/scmurl.jpg
     :width: 10in     
     
Understanding the source
------------------------

When checking out, Eclipse creates 7 projects. Every module is presented as a project. The TEAM Engine project 
contains the 6 other modules. 
There is an extra folder **src** where basic documentation is available.


.. image:: ../img/folder.jpg
     :width: 10in     

Echa module is composed of the following:
     
* teamengine-core: Main CTL script processor
• teamengine-resources: Includes shared resources such as stylesheets and schemas
• teamengine-spi: Provides an extensibility framework and a REST-like API for test execution
• teamengine-realm: A custom Tomcat user realm
• teamengine-web: A web application for executing test suites and browsing test results
• teamengine-console: A console application that provides a command-line interface for executing test suites in Unix and Windows environments.
     

Build
=====

Build the code with MAVEN
-------------------------
Execute maven build command from the root of the source code::

   cd .../teamengine 
   mvn clean install
   
Can also build via Eclipse, doing right click on the main pom, or the main folder ``teamengine``.
   
.. image:: ../img/mvninstall.jpg
     :width: 10in
     
A successful build should have a **BUILD SUCCESS** message, similar to the following::

   [INFO] Relativizing decoration links with respect to project URL: http://sourceforge.net/projects/teamengine/
   [INFO] Rendering site with org.apache.maven.skins:maven-fluido-skin:jar:1.3.0 skin.
   [INFO] 
   [INFO] --- maven-pdf-plugin:1.2:pdf (pdf) @ teamengine-web ---
   [INFO] Skipped report generation.
   [INFO] ------------------------------------------------------------------------
   [INFO] Reactor Summary:
   [INFO] 
   [INFO] TEAM Engine ....................................... SUCCESS [15.912s]
   [INFO] TEAM Engine - Tomcat Realm ........................ SUCCESS [0.617s]
   [INFO] TEAM Engine - Shared Resources .................... SUCCESS [0.317s]
   [INFO] TEAM Engine - Service Providers ................... SUCCESS [0.901s]
   [INFO] TEAM Engine - Core Module ......................... SUCCESS [0.666s]
   [INFO] TEAM Engine - Web Module .......................... SUCCESS [0.731s]
   [INFO] ------------------------------------------------------------------------
   [INFO] BUILD SUCCESS
   [INFO] ------------------------------------------------------------------------
   [INFO] Total time: 20.151s
   [INFO] Finished at: Wed Apr 17 06:42:15 EDT 2013
   [INFO] Final Memory: 20M/81M
   [INFO] ------------------------------------------------------------------------
     

Discovering the created artifacts
---------------------------------

After building MAVEN, artifacts are created in the target folders. The zip files
created under ``teamengine-core`` will be used to setup and configure TEAM Engine.

.. image:: ../img/aftermvnbuild.jpg
     :width: 10in   
     
The main build artifacts are listed below.

**teamengine-console-4.0.3-bin.[zip|tar.gz]**
   Archive containing the console application (command-line usage)

**teamengine-console-4.0.3-base.[zip|tar.gz]**
   Archive containing the initial contents of the main configuration directory (TE_BASE)

**teamengine.war**
   The JEE (Servlet) web application

**teamengine-common-libs.[zip|tar.gz]**
   Archive containing common runtime dependencies (e.g. JAX-RS 1.1, Apache Derby)     

Setup and run TEAM Engine
=========================

Configure TE_BASE
-----------------

The value of the TE_BASE system property or environment variable 
specifies the location of the main configuration directory that 
contains several essential sub-directories. 

The structure of the TE_BASE configuration directory was created in the **teamengine-console-4.0.3-base.zip**  
when the code was built with MAVEN. 
It can be found under the **teamengine-console/target** directory.

Understand TE_BASE
------------------
TE_Base structure is as follows:: 

   TE_BASE
     |-- config.xml   # main configuration file
     |-- resources/   # shared test suite resources
     |-- scripts/     # CTL test scripts
     |-- work/        # teamengine work directory 
     +-- users/       # user account details and test run outputs
        |-- {user1}/
        |-- {user2}/
        +-- ...
        
Locate a simple ctl Test
------------------------

TE_BASE comes with a simple ctl script, **note.ctl**. It is located under the scripts directory::
 
   |-- scripts/ 
      note.ctl 
 
        
Prepare TEAM Engine console
---------------------------

When running **MAVEN install** the file ``teamengine-console-4.0.3-bin.zip`` was created under the **teamengine-console/target**. 

Copy the file and uzip it in another place

.. image:: ../img/teconsoletarget.jpg
     :width: 10in 


 After unzipping the directory should look like the following::

   teamengine-console-4.0.3-bin
     |-- bin/  # shell scripts (windows, unix)
       |-- unix
       |-- windows
     |-- lib/   # supporting libraries
     |-- resources/ # classpath resources (stylesheets, schemas, etc.)
     
Configure PATHS in setenv
-------------------------


The **teamengine-console-4.0.3-base.zip** can be unzipped anywhere, however it is important to setup the system property or
 environment variable.
 
For MAC/UNIX go to the **bin** folder under **teamengine-console-4.0.3-bin** and edit
 the setenv.sh, by providing the value to TE_BASE directory. For example:::
   export TE_BASE=/Users/lbermudez/Documents/test/teamengine-console-4.0.3-base

For Windows go to **windows** and edit **setenv.bat**::
   set TE_BASE=%USERPROFILE%\teamengine
 
Run TEAM Engine via command line
--------------------------------
     
Go the bin folder and select either unix or windows  to run test command: ``unix/test.sh`` or ``windows/test.bat``.

To run the command it is necessary to provide a parameter ``-source``. For example::
  
   ./test.sh -source=note.ctl
        
If the TEAM Engine has properly being installed a pop-up window should appear with information about the test. 
Clicking on **Start** will start the test. The test should failed and the terminal should provide the following::

.. image:: ../img/xmlnotepopup.jpg
     :width: 10in   

 The command prompt should show a message like the following::
  
Testing note:main type Mandatory in Test Mode with defaultResult Pass (s0003)...
      Assertion: The note is valid.
Testing note:check-heading type Mandatory in Test Mode with defaultResult Pass (s0003/d1e97_1)...
         Assertion: The heading contains more than whitespace.
      Test note:check-heading Passed
Testing note:check-user type Mandatory in Test Mode with defaultResult Pass (s0003/d1e102_1)...
         Assertion: The 'to' user is valid.
      Test note:check-user Passed
Testing note:check-user type Mandatory in Test Mode with defaultResult Pass (s0003/d1e107_1)...
         Assertion: The 'from' user is valid.
      Test note:check-user Failed
   Test note:main Failed


OGC Tests Scripts
=================


Understanding  OGC Tests Structure
----------------------------------

OGC Tests can be written either in  CTL (Compliance Test Language) or TestNG. Tests are located at the 
public OGC SVN Repository:

CTL tests are located at https://svn.opengeospatial.org/ogc-projects/cite/scripts/
TestNG test are located at https://svn.opengeospatial.org/ogc-projects/cite/ets


CTL tests structure
^^^^^^^^^^^^^^^^^^^

The CTL tests are structured as follows:

.. image:: ../img/structuretest.jpg
     :width: 10in   

The **trunk** contains the latest version. The folder **tags** contains the revisions deployed in the testing web sites.

TestNG tests structure
^^^^^^^^^^^^^^^^^^^^^^
The TestNG tests are structured as follows:

.. image:: ../img/structureets.jpg
     :width: 10in   

The **trunk** contains the latest version. The folder **tags** contains the revisions deployed in the testing web sites.
The TestNG tests also follows a MAVEN structure.

Configuring  CTL test in TEAM Engine
------------------------------------


To make available the OGC CTL Tests in TEAM Engine, the following needs to be done:
- The tests need to be placed at the TE_BASE/scripts 
- TE_BASE/config.xml file needs to be updated accordingly.

Copying CTL Tests in TE_BASE/scripts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

As a convenience, the shell script ``export-ctl`` may be run to export CTL test suites from the official OGC repository. 
The location of a CSV file is passed as the first argument to the script.  
Each record in the file should contain two fields: a Subversion URL, and a local path name relative to TE_BASE/scripts.

The CTL test scripts can be copied manually or using a script.

**Manually via script**

- Download the ``ctl-scripts-release.csv`` file::
   https://svn.opengeospatial.org/ogc-projects/cite/ets/ets-resources/tags/13.11.14/src/main/config/ctl-scripts-release.csv
- Copy it to **TE_BASE/bin/unix** or **TE_BASE/bin/windows**
- Open a terminal window
- Setup or Export the environment variable TE_BASE
   - UNIX:: 
      $ export TE_BASE=/some/path
      
   - Windows:: 
      ...   
- Run the following command to populate the ``TE_BASE/scripts`` directory with these test suites::
      $ ./export-ctl.sh ctl-suites-dev.csv

After running the command the TE_BASE should look like the following:

.. image:: ../img/tebaseafterdown.jpg
     :width: 10in  
     

Note: that the folder of the test structure looks like the trunk structure.   

Once the tests are properly installed in the TE_BASE, it is possible to run OGC test suites. For example::

   ./test.sh -source=csw/2.0.2/src/main.xml 
   

Updating config.xml
^^^^^^^^^^^^^^^^^^^

The ``TE_BASE/config.xml`` is used as the "registry" to let know TEAM Engine what are the test that are available. 
This file should be placed under the TE_BASE folder.

config.xml contains the name of the test (sos), the revision (r9) and the local path to the source of the tests (sos/1.0.0/ctl)::

      <organization>
        <name>OGC</name>
        <standard>
          <name>Sensor Observation Service (SOS)</name>
          <version>
            <name>1.0.0</name>
            <suite>
              <namespace-uri>http://www.opengis.net/sos/1.0</namespace-uri>
              <prefix>sos</prefix>
              <local-name>suite</local-name>
              <title>SOS 1.0 Conformance Test Suite</title>
              <description>Checks service implementations for conformance to OGC 06-009r6.</description>
            </suite>
            <revision>
              <name>r9</name>
              <sources>
                <source>sos/1.0.0/ctl</source>
              </sources>
              <resources>sos/1.0.0/resources</resources>
              <webdir>sos/1.0.0/web</webdir>
            </revision>
          </version>
        </standard>
      </organization>
      
The config file for TE release 4.0.3 for the approved tests can be found here::
   https://svn.opengeospatial.org/ogc-projects/cite/ets/ets-resources/tags/13.11.14/src/main/config/teamengine/config-approved.xml      
 
The config file for TE release 4.0.3 for all the tests, including the ones in beta can be found here::  
   https://svn.opengeospatial.org/ogc-projects/cite/ets/ets-resources/tags/13.11.14/src/main/config/teamengine/config.xml

The local path can be used to exercise the test via command line::

   ./test.sh -source=sos/1.0.0/ctl
   
Process:
- download the preferred config file
- copy it under TE_BASE