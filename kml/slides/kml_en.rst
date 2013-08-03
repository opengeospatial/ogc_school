KML
====
This tutorial provides an introduction to KML

KML is used for
----------------

* Annotate the Earth 
* Specify icons and labels to identify locations on the surface of the planet 
* Create different camera positions to define unique views for KML features 
* Define image overlays to attach to the ground or screen 
* Define styles to specify KML feature appearance 

KML is used for
-----------------

* Write HTML descriptions of KML features, including hyperlinks and embedded images 
* Organize KML features into hierarchies 
* Locate and update retrieved KML documents from local or remote network locations 
* Define the location and orientation of textured 3D objects 


KML Example
-------------

.. code-block:: xml

    <kml xmlns="http://www.opengis.net/kml/2.2">
        <Document>
           <name>Document.kml</name> <open>1</open>
           <Style id="exampleStyleDocument">
               <LabelStyle>
               <color>ff0000cc</color>
               </LabelStyle>
             </Style>



KML Example
-------------
.. code-block:: xml
           
           <Placemark>
               <name>Document Feature 1</name> 
               <styleUrl>#exampleStyleDocument</styleUrl>
               <Point>
                  <coordinates>-122.371,37.816,0</coordinates>
               </Point>
           </Placemark>


KML Example
-------------
.. code-block:: xml
           
           <Placemark>
               <name>Document Feature 2</name>
               <styleUrl>#exampleStyleDocument</styleUrl>
               <Point>
                  <coordinates>-122.370,37.817,0</coordinates>
               </Point>
           </Placemark>
      </Document>
    </kml>