Web Feature Service (WFS) Tutorial
======================================

This tutorial provides an introduction to WFS.


Feature
--------------
.. image:: ../img/feature.jpg
      :height: 654
      :width: 1049 
      

Feature has Properties
------------------------
.. image:: ../img/geo-feature.jpg
      :height: 654
      :width: 1049    

Geospatial Feature
---------------------
.. image:: ../img/geo-feature.jpg
      :height: 654
      :width: 1049 
      
 
         
Generalization
---------------------
Class = Feature Type = Tree

Properties of Tree:

- Height
- Location

All my Trees will have a height and location.

Feature Instance
-----------------
| My favorite tree in Cartagena is the one in front of the hotel Colombia.
| Height = 5 mt
| Location: Latitude, Longitude
| 10.407793,-75.551262

Features Modeling  
------------------
.. image:: ../img/modeling.jpg
      :height: 654
      :width: 1600 
      
      
      



Geographic Markup Language (GML)
---------------------------------

.. code-block:: xml

    <Bridge>
      <span>100</span>
      <height>200</height>
      <gml:centerLineOf>
        <gml:LineString>
           <gml:pos>100 200</gml:pos>
           <gml:pos>200 200</gml:pos>
        </gml:LineString>
      </gml:centerLineOf>
    </Bridge>


Feature Instance of Type Bridge
---------------------------------

.. code-block:: xml

    <Bridge>
      <span>100</span>
      <height>200</height>
      <gml:centerLineOf>
        <gml:LineString>
           <gml:pos>100 200</gml:pos>
           <gml:pos>200 200</gml:pos>
        </gml:LineString>
      </gml:centerLineOf>
    </Bridge>

Feature Types are defined in GML
---------------------------------

.. code-block:: xml

    <xs:complexType name="BridgeType">
         <xs:complexContent>
              <xs:extension base="gml:AbstractFeatureType">
                  <xs:sequence>
                  <xs:element name="span"  type="xs:integer"/>
                  <xs:element name="height" type="xs:integer"/> 
                     <xs:element ref="gml:centerLineOf"/>
                   </xs:sequence>
                </xs:extension>
         </xs:complexContent>
     </xs:complexType>


GML Provides
-------------
- Defines an abstract feature model
- Provides XML Schemas
- Provides primitives:
  
   - Geometry
   - Feature Types
   - Coordinate Reference Systems


GML Geometries
---------------
.. image:: ../img/geometries.jpg
      :height: 654
      :width: 1049 

How can radio station be modeled?
---------------------------------

- Point - when looking at a country map
- Polygon - location of the building
- Multipolygon - Area of Transmition


Communities develop their own Application Schemas
---------------------------------------------------
- AIXM – Aviation 
- CAAML – Canadian avalanches 
- CityGML – 3D city models 
- CSML –  Climate Science Modelling
- DAFIF – Defense aviation
- GeoSciML -  Geoscience 
- ...



      

Web Feature Service (WFS)
--------------------------
- Service (Protocol)
- Do the following with Geographic Features:

   •  publish 
   •  access
   •  manipulate

WFS Operations
----------------

- *getCapabilities* - summary of the service
- *DescribeFeatureType* - structure of the feature types
- *GetFeature* - get the feature instance
- *Transaction* - create, update and delete geographic features
- *Lock Feature* - Protects feature record when updating it.
 

GeoServer Demo
---------------

 - GeoServer is the reference implementation for WFS 1.1.0.
 - Open and free software
 - Java-based
 
GeoServer Demo
---------------

- http://localhost:8080/geoserver/web/
- click on Demos
- Explore Operations


Example GetCapabilities Request
--------------------------------

Request example::

   http://localhost:8080/geoserver/topp/ows?
   service=WFS&
   version=1.0.0&
   request=GetCapabilities
   

`Link to GetCapabilities <http://localhost:8080/geoserver/topp/ows?service=WFS&version=1.0.0&request=GetCapabilities>`_


Example DescribeFeature Request
--------------------------------

Request example::

   http://localhost:8080/geoserver/topp/ows?
    service=WFS&
    version=1.1.0&
    request=DescribeFeatureType&
    typeName=topp:tasmania_water_bodies


`Link to DescribeFeature <http://localhost:8080/geoserver/topp/ows?service=WFS&version=1.1.0&request=DescribeFeatureType&typeName=topp:tasmania_water_bodies>`_


Example GetFeature Request
---------------------------

Request example::

   http://localhost:8080/geoserver/topp/ows?
   service=WFS&version=1.1.0&request=getFeature&
   TypeName=topp:tasmania_water_bodies

`Link to getFeature request <http://localhost:8080/geoserver/topp/ows?service=WFS&version=1.1.0&request=getFeature&TypeName=topp:tasmania_water_bodies>`_

Query based on values of properties  
------------------------------------

 Lakes with area > 1067000000 cm. 
 
.. code-block:: xml
 
    http://localhost:8080/geoserver/topp/ows?
      service=WFS&version=1.1.0&request=getFeature&
      TypeName=topp:tasmania_water_bodies&
      FILTER=
         <Filter xmlns="http://www.opengis.net/ogc">
           <PropertyIsGreaterThan>
             <PropertyName>AREA</PropertyName>
             <Literal>1067000000</Literal>
           </PropertyIsGreaterThan>
         </Filter>
 
 
`Link to GetFeature with filter <http://localhost:8080/geoserver/topp/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=topp:tasmania_water_bodies&maxFeatures=50&outputFormat=GML2&&FILTER=%3CFilter%20xmlns=%22http://www.opengis.net/ogc%22%3E%3CPropertyIsGreaterThan%3E%3CPropertyName%3EAREA%3C/PropertyName%3E%3CLiteral%3E1067000000%3C/Literal%3E%3C/PropertyIsGreaterThan%3E%3C/Filter%3E>`_
 
 
Client - Server Demo
----------------------
- Open uDIG
- Connect with geoserver: 
   http://localhost:8080/geoserver/topp/ows
   

References
------------

OGC Standards
   http://www.opengeospatial.org/standards

GML Application Profiles
   http://www.ogcnetwork.net/gmlprofiles
      
GeoServer
   http://docs.geoserver.org/stable/en/user/data/vector/index.html
         
uDIG
   http://udig.refractions.net   
   

         

 




 
 
   
    


