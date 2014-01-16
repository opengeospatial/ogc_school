TEAM Engine Tutorial
####################

.. image:: ../img/ogc1.jpg
     :width: 20in


:author: Luis Bermudez <lbermudez@opengeospatial.org>, Richard Martell
:version: 4.0.3
:date: January 16, 2014
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

The Test, Evaluation, And Measurement (TEAM) Engine is a test harness that executes
test suites written using the OGC CTL test grammar or the TestNG framework.
It is typically used to verify specification compliance and is the official test harness of
the OGC Compliance Testing Program (CITE), where it is used to certify implementations of
OGC and ISO geomatics standards.

OGC hosts an official stable deployment of TEAM Engine with the approved test suites at::

    http://cite.opengeospatial.org/teamengine/

OGC hosts a Beta TEAM Engine with the tests in Beta and with new TEAM Engine functionality::

    http://cite.opengeospatial.org/te2


Prerequisites and Needed Tools
******************************

To build TEAM Engine and the OGC tests you need the following:

    - JAVA 1.7
    - Apache Tomcat 7.0

And the following tools, that can either be downloaded separately or as plugins of an Integrated Development Environment (IDE), such as Eclipse.

    - MAVEN 3.0
    - An SVN client
    - A text editor to open configuration files in XML.

In this tutorial the Eclipse tool, and the MAVEN and SVN plugins will be used.

Download Java
=============
Download JAVA 1.7 JDK (Java Development Kit)::

    http://www.oracle.com/technetwork/java/javase/downloads/index.html

Set up variables and paths. For example for Windows:

    1. Add to the system variable: Path =  ..\...jdk1.7.0_45
    2. Create system variable: JAVA_HOME
    3. Create a system variable JRE_HOME


More details about configuring JAVA at the `Oracle Web Site <http://docs.oracle.com/cd/E19182-01/820-7851/inst_cli_jdk_javahome_t/index.html>`_. 


Download and Install Eclipse
============================

    1. Download Eclipse from to `download site <http://www.eclipse.org/downloads/>`_. This tutorial uses version 4.2 (Juno).
    2. Recommended version is `Eclipse IDE for Java EE Developers <http://www.eclipse.org/downloads/packages/eclipse-ide-java-ee-developers/junosr2>`_
    3. For windows 64 bit this is the `downloadable link <http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/juno/SR2/eclipse-jee-juno-SR2-win32-x86_64.zip>`_
    4. Unzip it put in program files or any other place of preference.
    5. In Windows it will not create shortcut in the menus. To start Eclipse you should go to where it was installed and look for the eclipse.exe.
    6. Eclipse will ask you to create a workspace, Use the defaults.

Configure Eclipse with JAVA
===========================

Make sure Eclipse knows about the JAVA version installed in the computer.

    1. Go to the preference menu
    2. Select JAVA/Installed JREs/Execution Environments
    3. Add JDK or other JAVA versions
    4. For example in Execution Environments select JAVA SE-1.7 and compatible JREs = jdk 1.7.0_45
    5. Be sure that a JDK is selected as a default
     
Install Eclipse SVN and Maven Plugins for Eclipse
=================================================
To allow Eclipse to checkout SVN projects and run MAVEN commands it is required to download Eclipse plugins. These are:

   - For SVN `Subersive <http://www.eclipse.org/subversive/installation-instructions.php>`_  
   - For maven `M2E <http://www.eclipse.org/m2e/>`_.

Process:

    1.  Run Eclipse and select **Help > Install New Software**... from the main menu.
        
        .. image:: ../img/installnewsoft.jpg
            :width: 10in
            :height: 5.4in
            
    2. Add a Repository by clicking on **add**
    
        - Name = Juno
        - Location = http://download.eclipse.org/releases/juno

    3. Click **OK**   
    
    4. Select Juno
        
        .. image:: ../img/junoinstallother.jpg
            :width: 10in
            :height: 5.4in

    5. In the **Collaboration** group  select plugins:

       * m2e - Maven integration in Eclipse
       * Subversion SVN Team Provider
       * Subversion SVN Team Provider Sources

    6. Verify that it looks like the following:

        .. image:: ../img/subersive.jpg
            :width: 10in
            :height: 5.4in

    7. Click **next** and accept license agreements. You will be prompted to restart Eclipse.

    8. When Eclipse is started the **Install Connectors** window will appear. Select SVN **Kit 1.7.8**

        .. image:: ../img/svnconnectors.jpg
                 :width: 10in
                 :height: 5.4in

    9. Install the connectors. Select

        * Subversive SVN Connectors 3.0.0.120130...
        * SVNKit 1.7.8 Implementation (Optional) 3.0.0.120130...

    10. Click **next** and accept license agreements. 

    11. Sometime security warnings will prompt because the jars are not signed. Click on OK.

    12. You will be prompted to restart Eclipse.


Downloading TEAM Engine Source code
***********************************

Install the Maven SVN connector
===============================

    1. Try checking out as Maven from SCM
    
        .. image:: ../img/checkout.jpg
             :width: 10in
    
        The first time you checkout a MAVEN project from SVN you will be prompted to get a connector.
    
    .. image:: ../img/mvnconnector.jpg
         :width: 10in
            
    2. Click on **m2e Marketplace**, select **m2e-subversive**  and click **Finish**.
    3. Confirm **Maven SCM Handler for Suberversive**
    4. Click next and accept license agreements. 
    5. You will be prompted to restart Eclipse.
    6. If you get any security warning click OK confirm.


Connect to the SVN Repository
=============================

    1. In the Eclipse Main Menu go to the **Window** Menu and select **Show View** and then **Other**. 
    2. Expand *SVN* and select **SVN Repositories**

        .. image:: ../img/viewrep.jpg
             :width: 10in
             
        .. image:: ../img/newreploc.jpg
             :width: 10in   
     3. Select the branch you want to check out          
     
        TEAMEngine is at the sourceforge repository::
        
           https://svn.code.sf.net/p/teamengine/code
           
        The repository contains three main folders:

            - **branches** used for special development tasks, fix bugs, test new features, etc.
            - **tags** used to register releases, alpha, beta, and production. The production releases don't say "beta" nor "alpha"
            - **trunk** is where the unstable development occurs.
        
        To connect to the header, where you can see all branches type::
         
           https://svn.code.sf.net/p/teamengine/code
        
        To connect to a particular tag (revision) type::
        
            https://svn.code.sf.net/p/teamengine/code/tags/4.0.3

       4. A Secure Storage prompt might appear asking for password recovery. Select **No**.


Checkout a specific TEAM Engine version as Maven project
----------------------------------------------------------

Process is as follows:

Copy the URL of the tag. For example:

https://svn.code.sf.net/p/teamengine/code/tags/4.0.3
                  
.. image:: ../img/copyurl.jpg
             :width: 10in
             
Go to **New** / **Other** / **Checkout MAVEN projects from SVN**

.. image:: ../img/checkout.jpg
             :width: 10in 
     
Paste the URL that you previously selected. For example:
 
https://svn.code.sf.net/p/teamengine/code/tags/4.0.3

.. image:: ../img/scmurl.jpg
             :width: 10in   
     
An "Import Maven Projects"  windows may appeared to select the MAVEN projects you want to checkout. Select all of them and click next

If the checkout is not successful then: 

    1. check it out as a normal project. 
    2. right click and select: `configure / convert to maven`. 
    3. wait until all the maven dependencies are downloaded   

Open the explorer window in Eclipse if it is not opened.   
        
Go to "Window" tab, select "show view" and select "project explorer". 

Folders (modules) should appear on the window.       
     
Understanding the source
========================

When checking out, Eclipse creates 7 projects. Every module is presented as a project. The TEAM Engine project
contains the 6 other modules.
There is an extra folder **src** where basic documentation is available.


.. image:: ../img/folder.jpg
     :width: 10in     

Each module is composed of the following:

- **teamengine-core**: Main CTL script processor
- **teamengine-resources**: Includes shared resources such as stylesheets and schemas
- **teamengine-spi**: Provides an extensibility framework and a REST-like API for test execution
- **teamengine-realm**: A custom Tomcat user realm
- **teamengine-web**: A web application for executing test suites and browsing test results
- **teamengine-console**: A console application that provides a command-line interface for executing test suites in Unix and Windows environments.


Building TEAM Engine Source Code
********************************

Build the code with MAVEN
=========================
Execute maven clean install by doing Right click on the pom.xml, which is the main pom on the main folder ``teamengine``.

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
=================================

After building MAVEN, artifacts are created in the target folders. 
     
The main build artifacts are listed below.

**teamengine-console/target/teamengine-console-4.0.3-bin.[zip|tar.gz]**
   Archive containing the console application (command-line usage)

**teamengine-console/target/teamengine-console-4.0.3-base.[zip|tar.gz]**
   Archive containing the initial contents of the main configuration directory (TE_BASE)

**teamengine-web/target/teamengine.war**
   The JEE (Servlet) web application

**teamengine-web/target/teamengine-common-libs.[zip|tar.gz]**
   Archive containing common runtime dependencies (e.g. JAX-RS 1.1, Apache Derby)
   
**teamengine-core/target/teamengine-core.jar**
   Jar file that cotains the core TEAM engine libraries  needed to run as web application.

Setting up and Running TEAM Engine
**********************************

Prepare TE_BASE
===============

The TE_BASE contains the tests, users sessions and other configuration files.

The structure of the TE_BASE configuration directory was created in the **teamengine-console/targetteamengine-console-4.0.3-base.zip** when the code was built with MAVEN.

Copy the file and unzip it somewhere else.

In windows you need to create a parent folder to hold the content of the zip file.


Understand TE_BASE
==================
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
========================

TE_BASE comes with a simple ctl script, **note.ctl**. It is located under the scripts directory::
 
   |-- scripts/ 
      note.ctl 
 
        
Prepare TEAM Engine console
===========================

When running **MAVEN install** the file ``teamengine-console-4.0.3-bin.zip`` was created under the **teamengine-console/target**.

Copy the file and uzip it in another place

.. image:: ../img/teconsoletarget.jpg
   :width: 10in 

In windows create a parent directory "teamengine-console-4.0.3-bin".

After unzipping the directory it should look like the following::

   teamengine-console-4.0.3-bin
     |-- bin/  # shell scripts (windows, unix)
       |-- unix
       |-- windows
     |-- lib/   # supporting libraries
     |-- resources/ # classpath resources (stylesheets, schemas, etc.)
     
Configure PATHS in setenv
=========================

The **teamengine-console-4.0.3-base.zip** can be unzipped anywhere, however it is important to setup the system property or environment variable.

The value of the TE_BASE system property or environment variable specifies the location of the main configuration directory that contains several essential sub-directories.

For MAC/UNIX go to the **bin** folder under **teamengine-console-4.0.3-bin/unix** and edit
 the setenv.sh, by providing the value to TE_BASE directory. For example:::
   export TE_BASE=/Users/lbermudez/Documents/test/teamengine-console-4.0.3-base

For Windows go to **teamengine-console-4.0.3-bin/windows** and edit **setenv.bat**::
   set TE_BASE=path_to_teamgine-folder
   
You can also setup other variables, such as JAVA_HOME if the variables are not setup as systems variables before.  
 
Run TEAM Engine via command line
================================

Go the bin folder and select either unix or windows  to run test command: ``bin/unix/test.sh`` or ``bin/windows/test.bat``.

To run the command it is necessary to provide a parameter ``-source``. For example::
  
   ./test.sh -source=note.ctl
        
If the TEAM Engine has properly being installed a pop-up window should appear with information about the test. Clicking on **Start** will start the test. The test should failed and the terminal should provide the following:

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


Building OGC Tests Scripts
**************************


Understanding  OGC Tests Structure
==================================

OGC Tests can be written either in CTL (Compliance Test Language) or TestNG. Tests are located at the public OGC SVN Repository:

CTL tests are located at:: 
   https://svn.opengeospatial.org/ogc-projects/cite/scripts/
   
TestNG test are located at:: 
   https://svn.opengeospatial.org/ogc-projects/cite/ets

To view the stucture you need an SVN client or continue using the Eclipse IDE which was allready being configured to interact with the SVN repositories.

Checking out CTL scripts form the OGC SVN
-----------------------------------------

In Eclipse do the following: 

    1.  **Window / Show View / SVN Repository**
    2. Type the following in the URL::

        https://svn.opengeospatial.org/ogc-projects/cite/scripts/
    
    3. If authentication request is prompt, hit *Cancel*.
    4. Checkout the project. Leave "scripts" as the name of the project.
    5. Then the project can be seen in the project explorer view

Understanding the CTL tests structure
-------------------------------------

The CTL tests are structured as follows:

.. image:: ../img/structuretest.jpg
     :width: 10in   

The **trunk** contains the latest version. The folder **tags** contains the revisions deployed in the testing web sites.

Copying the CTL test in TE_BASE
-------------------------------
1. Go to the scripts project and select a version of a test that you want to make avialable in your local TEAM Engine. 
2. Make note of the abbreviation and the version. For example if you select scripts/wfs/1.1.0/tags/r16, the test_abbreviation = wfs and the test_version = 1.1.0.
3. Go to the TE_BASE/scripts folder.
4. Create a directory (if it doesn't exist) with the *test_abbreviation*
5. Under the previous created directory, create a subdirectory with the name *test_version*.
6. Copy the content of the folder (e.g. r16) and paste it in the subdirectory that has the test_version. For example if you selected scripts/wfs/1.1.0/tags/r16 and poperly copied in TE_BASE the content of the r16 tag folder should be available at TE_BASE/scripts/wfs/1.1.0/. See for example:

.. image:: ../img/tebaseafterdown.jpg
     :width: 10in  

Understanding config.xml
------------------------

The ``TE_BASE/config.xml`` is used as the "registry" to let know TEAM Engine what are the test that are available.
This file should be placed (or it is found) under the TE_BASE folder.

Each test has its own config.xml. For example for SOS test the **config.xml** contains the organization that owns the standard, name of the test (sos), the revision (r9) and paths to source of the tests (sos/1.0.0/ctl) and other artifacts

.. code-block:: XML

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
      
.. _updating_main_config:

Updating main config.xml
------------------------

For each test in TE_BASE/scripts you need to copy the content of the config.xml to the main config.xml (TE_BASE/config.xml). So if all the test are developed by the organization "OGC", copy everything inside the <standard> tag elements of the config.xml of the test to the <organization> element in the main confog.xml.

.. code-block:: XML

     <organization>
        <name>OGC</name>
        <standard>
          ...
        </standard>
      </organization>
     

      
Running a test
--------------

The local path can be used to exercise the test via command line::

   ./test.sh -source=sos/1.0.0/ctl or
   ./test.sh -source=wfs/1.1.0/src
   
   or
   
   ./test.bat -source=sos/1.0.0/ctl or
   ./test.bat -source=wfs/1.1.0/src
   
An applet window will appear asking for information about location of files or end point of the server.

Reference implementations can be found in the `CITE wiki <http://cite.opengeospatial.org/reference>`_. Here you can copy the URL for the implementation that you want to test.  

Once the test started the applet closes and interim information about the status of the test is shown in the terminal.
 


Building and Copying TestNG Tests in TE_BASE and TEAM Engine
============================================================

Access the code repository
--------------------------

#. Go to: Window / Show View / Other.
#. Expand SVN
#. Select **SVN Repositories**
#. In the SVN Repositories View, right click and select New / Repository Location
#. Write the following location in the URL::
    https://svn.opengeospatial.org/ogc-projects/cite/ets
#. Do not need to write user and password. If the authentication window appears. Select cancel.
#. Three main folders should be available: **ets-resources**, **testng** and **utils**

The SVN Repositories view should look as follows

.. image:: ../img/etsrep.jpg
     :width: 10in  

Understanding TestNG tests structure
------------------------------------
The TestNG tests are structured as follows:

.. image:: ../img/structureets.jpg
     :width: 10in   

The **trunk** contains the latest version. The folder **tags** contains the revisions deployed in the testing web sites.

The TestNG tests also follows a MAVEN structure.


Checkout a TestNG test from the  code repository
------------------------------------------------

- Select a test revision (a tag or trunk) to build.
- Right click and Checkout as Maven project. For example if selecting revision r12 **SVN Repositories** window and menu should like like the following:

.. image:: ../img/rightclicktag.jpg
         :width: 10in

- After the checkout is succesfull the **Project Explorer** window should show the different tests as projects.
- You may need to rename the project name if you are downloading more than one revision.

.. image:: ../img/projectwfs.jpg
         :width: 10in

The project name was **ets-wfs** and it was rename to **ets-wfs-r12**.

Build and install the Tests with MAVEN
--------------------------------------

Note: Make sure JDK is checked in Preferences menu: Java/Installed JREs/Execution Environment.


- Right click on the project folder (e.g. **ets-wfs-r12**)
-  Select **Run As** / **Maven Install**. The MAVEN run will create a target folder with the builds.
- Unzip the file that has the libraries (.jar) and dependencies. The file name ends with **...deps.zip**. For example for KML2.2 the file created is **ets-kml22-2.2-r6-deps**.
- Copy the libraries under TE_BASE/resources/lib directory. 

.. image:: ../img/mvntestng.jpg
         :width: 10in

- Unzip the file which name ends with **ctl-scripts.zip**
- Copy the directory under the TE_BASE/scripts.

.. image:: ../img/mvnetsctl.jpg
         :width: 10in

- The tests under scripts should look like
.. image:: ../img/tebaseafterdown.jpg
     :width: 10in           
         
- Update the main config.xml as explained before. See :ref:`_updating_main_config`.   

.. image:: ../img/tebaseafterdown.jpg
     :width: 10in       


Automating the configuration of Tests in TEAM Engine
====================================================

To make available the OGC CTL Tests in TEAM Engine, the tests need to be placed at the TE_BASE/scripts and the TE_BASE/config.xml file needs to be updated accordingly.

As a convenience, the shell script ``export-ctl`` may be run to export CTL test suites from the official OGC repository.

To run the script you need an SVN client that you can run via command line. A list is available at `apache <http://subversion.apache.org/packages.html>`_. For example, for windows the complete version of `slik <http://www.sliksvn.com/en/download>`_ was sucesfully tested after restarting the computer.

The location of a CSV file is passed as the first argument to the script.
Each record in the file should contain two fields: a Subversion URL, and a local path name relative to TE_BASE/scripts.

- Download the ``ctl-scripts-release.csv`` file::
   https://svn.opengeospatial.org/ogc-projects/cite/ets/ets-resources/tags/13.11.14/src/main/config/ctl-scripts-release.csv
- Copy it to **TE_BASE/bin/unix** or **TE_BASE/bin/windows**
- Open a terminal window
- Setup or Export the environment variable TE_BASE. For example in UNIX::
     
      $ export TE_BASE=/some/path

- Run the following command to populate the ``TE_BASE/scripts`` directory with these test suites::
      $ ./export-ctl.sh ctl-suites-dev.csv

After running the command the TE_BASE should look like the following:

.. image:: ../img/tebaseafterdown.jpg
     :width: 10in  
     

Note: that the folder of the test structure looks like the trunk structure.

The config file for TE release 4.0.3 for the approved tests can be found `here <https://svn.opengeospatial.org/ogc-projects/cite/ets/ets-resources/tags/13.11.14/src/main/config/teamengine/config-approved.xml>`_

The config file for TE release 4.0.3 for all the tests, including the ones in beta can be found `here <https://svn.opengeospatial.org/ogc-projects/cite/ets/ets-resources/tags/13.11.14/src/main/config/teamengine/config.xml>`_


Once the tests are properly installed in the TE_BASE, it is possible to run OGC test suites. For example::

   ./test.sh -source=csw/2.0.2/src/main.xml 
   
     
Configure EPSG geodetic parameters database
*******************************************

Some OGC test suites (WFS 2.0 and GML 3.1)  make use of an embedded Apache Derby database containing the `EPSG geodetic parameters <http://www.epsg.org/Geodetic.html>`_.

Do the following:

1. Create a Derby system directory by creating a folder inside TE_BASE named derby_data
2. Download the ftp://ftp.galdosinc.com/pub/delivery/cite/EPSG-7.09.tgz
3. Copy EPSG folder inside the TE_BASE 

TE_BASE should look like the following::

   TE_BASE
      |_ derby_data
            |_ EPSG

Building a web application with OGC tests
*****************************************

Download Tomcat
===============

1. Go to Tomcat Download page::
 
   http://tomcat.apache.org/download-70.cgi
   
2. For windows you need to install the ".zip" but not the installer.

   - Download the Core 7.0.47 64-bit Windows.zip from 
   - Copy it in top level C directory
   - Go to the bin directory and do a startup.bat
   - If problems with the JRE_HOME go to Catalina.bat and declare the JRE_HOME variable.

3. Open localhost:8080 and you should be able to see ApacheTomcat/7.0.47 Welcome page.

Install war
===========

When building TEAM Engine (running mvn install), a .war file was created under ``teamengine-web/target``

.. image:: ../img/teweb.jpg
     :width: 10in     

Copy the war file under the ``webapps`` folder in tomcat.

Install Common Libs
===================

Unpack the contents of the **teamengine-web/teamengine-common-libs** archive into the **lib** directory under tomcat.

Check the web installation
=============================

When tomcat is started it will expand the war file as a folder. It should look like the following:

.. image:: ../img/tomcat-tewar.jpg
     :width: 10in   
     

Configure Tomcat
================

Open **bin/startup.sh** or **bin/startup.bat** and add information about JAVA and TE_BASE.

Just before calling the executable add the following:

For example in Unix::

   # Setup JAVA
   export JRE_HOME=PathToJava\jre7

   # define CATALINA_OPTS for TEAM Engine
   export CATALINA_OPTS="-server -Xmx1024m -XX:MaxPermSize=128m" 

or in windows::

    # Setup JAVA
   set JRE_HOME=PathToJava\jre7

   # define CATALINA_OPTS for TEAM Engine
   set CATALINA_OPTS=-server -Xmx1024m -XX:MaxPermSize=128m 

Configure TEAM Engine
=====================

Under resources - change footer etc..
   
   
Configure TE_BASE scripts
=========================
Register the tests that will appear in the web interface in ``TE_BASE/config.xml``. For example add the following inside <scripts></scripts>::

    <organization>
     <name>OGC</name>
     <standard>
       <name>OGC KML</name>
       <version>
         <name>2.2</name>
         <suite>
           <namespace-uri>http://www.opengis.net/cite/kml22</namespace-uri>
           <prefix>tns</prefix>
           <local-name>ets-kml22-2.2-r1</local-name>
           <title>KML 2.2 Validator</title>
           <description>Verifies the structure and content of KML 2.2 documents.</description>
         </suite>
         <revision>
           <name>2.2-r1</name>
           <status>Alpha</status>
           <sources>
             <source>kml22/2.2-r1/kml22-suite.ctl</source>
           </sources>
           <webdir>kml22/2.2-r1/web</webdir>
         </revision>
       </version>
     </standard>
   </organization>



Add the test libraries to teamengine webapp
===========================================

For TestNG tests copy the dependency jars under **tomcat/weapps/teamengine/WEB-INF/lib**


Start Tomcat
============

Gp to where tomcat is install and navigate to the in folder. An executable startup file should be available.

For example in UNIX::

   $ cd /Applications/apache-tomcat-7.0.37
   $ cd bin
   $ ./startup.sh
   

When typing: http://localhost:8080/teamengine/

The TEAM Engine Web Inerface should appear like the following:

.. image:: ../img/te-tomcat.jpg
     :width: 10in      
     
     
Building for Tomcat 6
=====================

The TEAM Engine application can work in Tomcat 6 by mapping the aliases to contexts::

      $ cd $CATALINA_HOME # Tomcat instance for teamengine
      $ echo '<Context docBase="${TE_BASE}/resources/docs"></Context>'
       > ./conf/Catalina/localhost/teamengine#docs.xml
      $ echo '<Context docBase="${TE_BASE}/scripts"></Context>'
       > ./conf/Catalina/localhost/teamengine#about.xml
      $ echo '<Context docBase="${TE_BASE}/users"></Context>'
       > ./conf/Catalina/localhost/teamengine#reports.xml
      $ echo '<Context docBase="${TE_BASE}/resources/site"></Context>'
       > ./conf/Catalina/localhost/teamengine#site.xml


Problem Solving
***************
 
Error not finding a session
===============================

If Error loks like the following::

   java.io.FileNotFoundException: /Users/lbermudez/Documents/te
   /TE_BASE/users/ogcogc/undefined/session.xml 
   (No such file or directory)

Solution:
- Close the browser and open it again



 
 
   