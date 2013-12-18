Geographic Modeling Language (GML)
==================================

Feature
-------
.. image:: ../img/geo-feature.jpg
      :height: 654
      :width: 1049 
      

Feature has Properties
----------------------
.. image:: ../img/feature.jpg
      :height: 654
      :width: 1049    

Geospatial Feature
------------------
.. image:: ../img/feature-property.jpg
      :height: 654
      :width: 1049 
      
 
         
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
      
 

Geographic Markup Language (GML)
--------------------------------

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
-------------------------------

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
--------------------------------

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
------------
- Defines an abstract feature model
- Provides XML Schemas
- Provides primitives:

   - Geometry
   - Feature Types
   - Coordinate Reference Systems


GML Geometries
--------------
.. image:: ../img/geometries.jpg
      :height: 654
      :width: 1049 

How can radio station be modeled?
---------------------------------

- Point - when looking at a country map
- Polygon - location of the building
- Multipolygon - Area of Transmition


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


