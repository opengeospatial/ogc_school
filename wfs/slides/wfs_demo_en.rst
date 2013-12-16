Web Feature Service (WFS) Demo
==============================

GeoServer Demo
--------------

 - GeoServer is the reference implementation for WFS 1.1.0.
 - Open and free software
 - Java-based

GeoServer Demo
--------------

- http://localhost:8080/geoserver/web/
- click on Demos
- Explore Operations


Example GetCapabilities Request
-------------------------------

Request example::

   http://localhost:8080/geoserver/topp/ows?
   service=WFS&
   version=1.0.0&
   request=GetCapabilities
   

`Link to GetCapabilities <http://localhost:8080/geoserver/topp/ows?service=WFS&version=1.0.0&request=GetCapabilities>`_


Example DescribeFeature Request
-------------------------------

Request example::

   http://localhost:8080/geoserver/topp/ows?
    service=WFS&
    version=1.1.0&
    request=DescribeFeatureType&
    typeName=topp:tasmania_water_bodies


`Link to DescribeFeature <http://localhost:8080/geoserver/topp/ows?service=WFS&version=1.1.0&request=DescribeFeatureType&typeName=topp:tasmania_water_bodies>`_


Example GetFeature Request
--------------------------

Request example::

   http://localhost:8080/geoserver/topp/ows?
   service=WFS&version=1.1.0&request=getFeature&
   TypeName=topp:tasmania_water_bodies

`Link to getFeature request <http://localhost:8080/geoserver/topp/ows?service=WFS&version=1.1.0&request=getFeature&TypeName=topp:tasmania_water_bodies>`_

Query based on values of properties
-----------------------------------

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
--------------------
- Open uDIG
- Connect with geoserver:
   http://localhost:8080/geoserver/topp/ows


References
----------

OGC Standards
   http://www.opengeospatial.org/standards

GML Application Profiles
   http://www.ogcnetwork.net/gmlprofiles

GeoServer
   http://docs.geoserver.org/stable/en/user/data/vector/index.html

uDIG
   http://udig.refractions.net















