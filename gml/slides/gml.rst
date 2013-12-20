Geographic Modeling Language (GML)
==================================

GML
---

The Geography Markup Language  `GML <http://www.opengeospatial.org/standards/gml>`_ is an XML grammar for exchanging geographic data on the Internet. GML serves as a modeling language for communities dealing with geospatial features, GML also serves as an open interchange format for  transactions of geographic features between system.

GML is also an ISO standard [#ISO-19136:2007].  

The latest version of GML is 3.2.1.

GML
---
- Defines an abstract feature model
- Provides XML Schemas
- Provides primitives:

   - Geometry
   - Feature Types
   - Coordinate Reference Systems



Feature
-------
.. image:: ../img/feature.jpg
      :height: 654
      :width: 1049 
      
.. A feature is anything. What makes a feature a feature is?

Feature has Properties
----------------------
.. image:: ../img/feature-property.jpg
      :height: 654
      :width: 1049  
      
.. That a feature has properties.        

Geospatial Feature
------------------
.. image:: ../img/geo-feature.jpg
      :height: 654
      :width: 1049 
      
.. A geospatial fature has geoapstial properties. 
         
Generalization
--------------
Class = Feature Type = Tree

Properties of Tree:

- Height
- Location

All my Trees will have a height and location.

Feature Instance
----------------
| My favorite tree in Cartagena is the one in front of the hotel Colombia.
| Height = 5 mt
| Location: Latitude, Longitude
| 10.407793,-75.551262

Features Modeling
-----------------
.. image:: ../img/modeling.jpg
      :height: 654
      :width: 1600 
 

Feature Instance of Type Bridge in GML
--------------------------------------

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
    
GML provides an abstract feature model
--------------------------------------

 .. code-block:: xml
 
    <complexType name="AbstractFeatureType" abstract="true">
       …
        <complexContent>
              <extension base="gml:AbstractGMLType">
                  <sequence>
                      <element ref="gml:boundedBy" minOccurs="0"/>
                      <element ref="gml:location" minOccurs="0"/>
            <!-- additional properties must be specified
                in an application schema -->
                  </sequence>
              </extension>
          </complexContent>
    

Feature Model for the Bridge Example
------------------------------------
.. code-block:: xml
    
    <xs:schema targetNamespace="http://www.ibbb.org"
          xmlns=""
          xmlns:gml="http://www.opengis.net/gml"
          xmlns:xs="http://www.w3.org/2001/XMLSchema"
          elementFormDefault="qualified"
          attributeFormDefault="unqualified">
       ….
    </schema>

Feature Model for the Bridge Example
------------------------------------

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




GML Geometries
--------------
.. image:: ../img/geometries.jpg
      :height: 654
      :width: 1049 


   
GML Points
----------

.. code-block:: xml

   <gml:Point>
      <gml:pos>0 100</gml:pos>
   </gml:Point>
   
   <gml:Point>
      <gml:coordinates>0,100 </gml:coordinates>
   </gml:Point>
   
   <gml:Point>
      <gml:coord>0,100 </gml:coord>
   </gml:Point>
   
GML Lines
---------

.. code-block:: xml

    <gml:LineString gml:id="p21" 
           srsName="http://www.opengis.net/def/crs/EPSG/0/4326">
         <gml:posList dimension="2">
              45.67 88.56 55.56 89.44
          </gml:posList>
     </gml:LineString >
   
   
How can radio station be modeled?
---------------------------------

- Point - when looking at a country map
- Polygon - location of the building
- Multipolygon - Area of Transmition

GML Flavors
-----------
GML 2
   points, polygons and lineStrings
GML 3
   GML 2 +  Curves, surfaces, and coverages
GML 3 Simple Feature profiles
   GML 3 that looks like GML 2

Communities develop their own Application Schemas
-------------------------------------------------
CityGML
   Common information model for the representation of 3D urban objects. It defines the classes and relations for the most relevant topographic objects in cities and regional models with respect to their geometrical, topological, semantic and appearance properties. Included are generalization hierarchies between thematic classes, aggregations, relations between objects, and spatial properties.
   Major cities in Germany and other locations are being modeled in CityGML. For example, Stuttgart and Berlin city models.  
   
http://www.citygml.org
   
Communities develop their own Application Schemas
-------------------------------------------------
GeoSciML
   Accommodates the goal of representing geoscience information associated with geologic maps and observations, as well as being extensible in the long-term to other geoscience data.
   
   An approved standard in that community
   
http://www.opengis.net/GeoSciML/

Communities develop their own Application Schemas
-------------------------------------------------
 
AIXM
   The Aeronautical Information Exchange Model (AIXM) Specification supports the data-centric environment. It supports aeronautical information collection, dissemination and transformation throughout the data chain.
   
http://www.aixm.aero
    
Other Application Schemas
-------------------------
  
- ALKIS/ATKIS - German National Cadastre
- AgroXML - Used in Farm Management Information Systems
- CAAML - Canadian Avalanche Association Markup Language
- CleanSeaNet - Near real time oil spill monitoring
- CSML –  Climate Science Modelling
- CWWL - Cyclone Warning Markup Language 
- DAFIF – Defense aviation
- GML in JPEG2000
- Tiger/GML - US Census

http://www.ogcnetwork.net/gmlprofiles


