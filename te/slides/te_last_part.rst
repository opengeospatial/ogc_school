Building and Copying TestNG Tests in TE_BASE and TEAM Engine
------------------------------------------------------------

Accessing the code repository
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

- Go to: Window / Show View / Other.
- Expand SVN
- Select **SVN Repositories**
- In the SVN Repositories View, right click and select New / Repository Location
- Write the following location in the URL: https://svn.opengeospatial.org/ogc-projects/cite/ets
- Do not need to write user and password. If the authentication window appears. Select cancel.
- Three main folders should be available: **ets-resources**, **testng** and **utils**

The SVN Repositories view should look as follows
 
.. image:: ../img/etsrep.jpg
     :width: 10in  


Checking a test from the  code repository
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

- Select a test revision (a tag or trunk) to build.
- Right click and Checkout as Maven project. For example if selecting revision r12 **SVN Repositories** window
 and menu should like like the following:
.. image:: ../img/rightclicktag.jpg
     :width: 10in  
- After the checkout is succesfull the **Project Explorer** window should show the different tests as projects. 
- You may need to rename the project name if you are downloading more than one revision. The project name was **ets-wfs**
and it was rename to **ets-wfs-r12**
.. image:: ../img/rightclicktag.jpg
     :width: 10in  


Buils the test
^^^^^^^^^^^^^^
- Right click on the project folder (e.g. **ets-wfs-r12**)
- Select **Run As** / **Maven Install**
- The MAVEN run will create a target folder with the builds. Unzip the zip files with the test binaries. The binaries and dependencies are 
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
   