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
Download JAVA 1.7 JDK (Java Development Kit) from the `Oracle Website <http://www.java.com>`_

Download and Install Eclipse
----------------------------
Download Eclipse from to `download site <http://www.eclipse.org/downloads/>`_. This tutotial uses version 4.2 (Juno). 

.. image:: ../img/eclipse.jpg
     :width: 10in
     
     
Install Elcipse  SVN and Maven Plugins for Eclipse
--------------------------------------------------
To allow Eclipse to checkout SVN projects and run MAVEN commands it is required to download Eclipse plugins. For 
SVN `Subersive <http://www.eclipse.org/subversive/installation-instructions.php>`_  will be downloaded and for maven `M2E <http://www.eclipse.org/m2e/>`_.

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
 
.. image:: ../img/subversive.jpg
     :width: 10in     

Click next and accept license agreements. You will be promted to restart Eclipse.

When Elcipse is started the **Install Connectors** window will appear. Select SVN **Kit 1.7.8**

.. image:: ../img/svnconnectors.jpg
     :width: 10in
 
Instal the connectos 
 
.. image:: ../img/installconn.jpg
     :width: 10in
     
Click next and accept license agreements. You will be promted to restart Eclipse.    
     

Download TEAM Engine Source code
================================

Conect to Repository
--------------------

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

Branches
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

Select the revision you wnat to download. For example
https://svn.code.sf.net/p/teamengine/code/tags/4.0.3
or another version. When looking at the repository you copy the location (URL) of the branch

For example::
 
   https://svn.code.sf.net/p/teamengine/code/tags/4.0-beta2

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
* Click next and accept license agreements. You will be promted to restart Eclipse.   


Checkout as Maven from SCM
^^^^^^^^^^^^^^^^^^^^^^^^^^

Checkout as MVN:

.. image:: ../img/checkout.jpg
     :width: 10in 
     
Paste the URL that you previously selected 

.. image:: ../img/scmurl.jpg
     :width: 10in     
     
Understanding the source
------------------------

Eclipse creates 7 projects. Every module is presented as a project and all teamengine project contains the 6 other modules. 
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
     
A successful build should have a **BUILD SUCCESS** meesage, similar to the following::

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


Configure TE_BASE
-----------------

The value of the TE_BASE system property or environment variable 
specifies the location of the main configuration directory that 
contains several essential sub-directories. 

- Create a TE_BASE directory 
- Unpack the content of **teamengine-console-4.0.3-base.zip** into this location
- Check Permissions. Ensure that users (including the Tomcat user) have read and write access to this folder.
- Make ``TE_BASE`` and environmental variable. Information about setting up environmental variables
can be found here:
   - `For MAC <http://bitbybitblog.com/environment-variables-mac/>`_
   - `For Linux <http://www.cyberciti.biz/faq/set-environment-variable-linux/>`_
   - For Windows: `wikipedia <http://en.wikipedia.org/wiki/Environment_variable>`_
- Concretely for MAC::
   export TE_BASE=/Users/bermudez/Documents/Dropbox/software/te/TE_BASE

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
 
        
Simple Run  TEAM Engine
-----------------------

When running **MAVEN install** the file ``teamengine-console-4.0.3-bin.zip`` was created under the **teamengine-console**. 

Copy the file and uzip it in another place

.. image:: ../img/teconsoletarget.jpg
     :width: 10in 


 After unziping the directory should look like the following::

   teamengine-console-4.0.3-bin
     |-- bin/  # shell scripts (windows, unix)
       |-- unix
       |-- windows
     |-- lib/   # supporting libraries
     |-- resources/ # classpath resources (stylesheets, schemas, etc.)

Go the bin folder and select either unix or windows  to run test command: ``unix/test.sh`` or ``windows/test.bat``.

To run the command it is necessary to provide a parameter ``-source``. For example::
  
   ./test.sh -source=note.ctl
        
If the TEAM Engine has properly being installed, the command prompt should show a message like the following::
  
   Luiss-MacBook-Pro:unix lbermudez$ ./test.sh -source=note.ctl
   Testing suite note:note-test in Test Mode with defaultResult of Pass ...
   Testing note:main type Mandatory in Test Mode with defaultResult Pass (s0004)...
   Assertion: The note is valid.

 And a popup window should appear 

.. image:: ../img/xmlnotepopup.jpg
     :width: 10in   

The popup window contains a default link to note to be tested located in this URL: http://www.w3schools.com/xml/note.xml. 
Clicking on Start will start the test. The test should failed and the terminal should provide the following::

   Testing suite note:note-test in Test Mode with defaultResult of Pass ...
   Testing note:main type Mandatory in Test Mode with defaultResult Pass (s0004)...
         Assertion: The note is valid.
   Testing note:check-heading type Mandatory in Test Mode with defaultResult Pass (s0004/d1e97_1)...
            Assertion: The heading contains more than whitespace.
         Test note:check-heading Passed
   Testing note:check-user type Mandatory in Test Mode with defaultResult Pass (s0004/d1e102_1)...
            Assertion: The 'to' user is valid.
         Test note:check-user Passed
   Testing note:check-user type Mandatory in Test Mode with defaultResult Pass (s0004/d1e107_1)...
            Assertion: The 'from' user is valid.
         Test note:check-user Failed
      Test note:main Failed - Inherited)
   Suite note:note-test Failed

OGC tests scripts
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

The trunk contains the latest version and versions are tagged for deployment in teamengine OGC web site.

TestNG test structure
^^^^^^^^^^^^^^^^^^^^^
The TestNG tests are structured as follows:

.. image:: ../img/structureets.jpg
     :width: 10in   

The trunk contains the latest version and versions are tagged for deployment in teamengine OGC web site. 
The TestNG tests also follows a MAVEN structure and have a pom with the main configuration.

Configuring  CTL test in TEAM Engine
------------------------------------
To make available the OGC tests in TEAM Engine the tests need to be placed at the TE_BASE/scripts 
directory and the TE_BASE/config.xml file is needs to be updated accordingly.

Copying CTL Tests in TEAM Engine
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The tests can be copied manually or using a script.

As a convenience, the shell script ``export-ctl`` may be run to export CTL test suites from the official OGC repository. 
The location of a CSV file is passed as the first argument to the script.  
Each record in the file should contain two fields: a Subversion URL, and a local path name relative to TE_BASE/scripts.
For example one row of the file might be as follows::

   https://svn.opengeospatial.org/ogc-projects/cite/scripts/sensorml/1.0.1/trunk,sensorml/1.0.1

The ``ctl-suites-dev.csv`` file can be found in the same directory as the shell scripts; it includes entries for the latest development versions of several OGC test suites. 
Running the following command will populate the ``TE_BASE/scripts`` directory with these test suites::

   $ export TE_BASE=/some/path
   $ ./export-ctl.sh ctl-suites-dev.csv


After running the command the TE_BASE should look like the following:

.. image:: ../img/tebaseafterdown.jpg
     :width: 10in   

Once the tests are properly installed in the local TEAM Engine, it is possible to run OGC test suites. For example::

  ./test.sh -source=csw/2.0.2/src/main.xml 
  

Building and Copying TestNG Tests in TEAM Engine
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

For TestNG Tests, go under the folder of the test and run:: 
   
   mvn install

For example to build 1.0-alpha1 version of ets-owc::
   $ cd ets-owc/tags/1.0-alpha1 
   $ mvn package
   
It will create a target folder with the builds. Unzip the zip files with the test binaries. The binaries and dependencies are 
found in the zip file that has the name of the test the version number and “-with-direct-depd”.
Place the jars under the teamengine core lib directory (e.g. ``teamengine-core-4.0-beta2-distribution``).

.. image:: ../img/mvntestng.jpg
     :width: 10in     


The target folder also created a *.ctl-scripts.zip file. Unzip the files and copy them under the TE_BASE/scripts.

.. image:: ../img/mvnetsctl.jpg
     :width: 10in   
     
Building a web application with OGC tests
=========================================

When builduing to code, this is running at the root level (teamengine)::

   mvn install
   
Install war
-----------
   
Various files under ``target`` were created. Under the folder ``teamengine-web/target`` a war file was created. 

.. image:: ../img/teweb.jpg
     :width: 10in     


Copy the war file under webapps in tomcat.

.. image:: ../img/tomcat-tewar.jpg
     :width: 10in   
     
Install Realm
-------------
           
Under the folder ``teamengine-realm/target`` a jar file was created. This jar manages a simple authentication and
management of users using TEAM Engine. Copy this file under ``lib`` in the web server.

.. image:: ../img/te-realm.jpg
     :width: 10in   


Configure Tomcat
----------------

Open bin/startup.sh (or startup.bat if running in windows). And before PRGDIR=`dirname "$PRG"` add the following two first lines::


   # define CATALINA_OPTS for TEAM Engine
   export CATALINA_OPTS="-server -Xmx1024m -XX:MaxPermSize=128m -DTE_BASE=$TE_BASE -Dderby.system.home=$DERBY_DATA"


   PRGDIR=`dirname "$PRG"`
   EXECUTABLE=catalina.sh
   
   
Configure TE_BASE scripts
-------------------------
Register the tests that will appear in the web interface in ``TE_BASE/config.xml``. For example add the following inside <stripts></scripts>::

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



Add the test libraries
----------------------

For TestNG tests copy the test jars under lib.


   
Start Tomcat
------------

For example::

   $ cd /Applications/apache-tomcat-7.0.37
   $ cd bin
   $ ./startup.sh
   

When typing: http://localhost:8080/teamengine/

The TEAM Engine Web Inerface should appear like the following:   

.. image:: ../img/te-tomcat.jpg
     :width: 10in       
   