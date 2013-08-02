WEB Map Service (WMS)
==================================

This tutorial provides a practical introduction to OGC Web Map Service (WMS) 
Interface standard.

Goals
-----
- Understand what WMS can be used for
- Understand WMS requests and best practices

Web Map Service (WMS)
----------------------
The latest version of WMS is 1.3.0 [#ogc-06-042].

A WMS Server:

- Provides information about what maps a service can produce
- Produces a Map
- Answers queries about content of a Map


WMS Usage
------------
-  Produce a Map
-  Answer queries about content of the map


WMS Operations
----------------
- GetCapabilities
- GetMap
- GetFeatureInfo

WMS GetCapabilities Request
----------------------------
Request example::

   http://ri.opengeospatial.org:8680/degree-wms-130/services?
   service=WMS&
   version=1.3.0&
   request=GetCapabilities
      
`Link to getCapabilities <http://ri.opengeospatial.org:8680/degree-wms-130/services?service=WMS&version=1.3.0&request=GetCapabilities>`_

WMS GetCapabilities Response
-----------------------------

-  How to invoke GetMap 
-  Types of exceptions
-  List of layers

WMS GetMap Request
-------------------

Request example::

   http://ri.opengeospatial.org:8680/degree-wms-130/services?
   service=WMS&
   version=1.3.0&
   request=GetMap&
   format=image/png&
   width=300&
   height=300&
   crs=EPSG:4326&
   layers=cite:BasicPolygons,cite:Forests&
   STYLES=default,default
   BBOX=-2,-1,2,6&

`Link to GetMap <http://ri.opengeospatial.org:8680/degree-wms-130/services?service=WMS&version=1.3.0&request=GetMap&format=image/png&width=300&height=300&crs=EPSG:4326&layers=cite:BasicPolygons,cite:Forests&BBOX=-2,-1,2,6&STYLES=default,default>`_

WMS GetFeatureInfo Request
---------------------------

Request example::

   http://ri.opengeospatial.org:8680/degree-wms-130/services?
   service=WMS&
   version=1.3.0&
   request=getfeatureinfo&
   format=text/html&
   crs=EPSG:4326&
   layers=cite:BasicPolygons&
   query_layers=cite:BasicPolygons&
   BBOX=-2,-1,2,6&
   width=300&
   height=300&
   i=1&
   j=1
   
`Link to GetFeatureInfo <http://ri.opengeospatial.org:8680/degree-wms-130/services?service=WMS&version=1.3.0&request=getfeatureinfo&format=text/html&crs=EPSG:4326&layers=cite:BasicPolygons&query_layers=cite:BasicPolygons&BBOX=-2,-1,2,6&width=300&height=300&i=1&j=1>`_
   

