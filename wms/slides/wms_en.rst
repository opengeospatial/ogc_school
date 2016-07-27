WEB Map Service (WMS)
=====================

This tutorial provides a practical introduction to OGC Web Map Service (WMS) 
Interface standard.

Goals
-----
- Understand what WMS can be used for
- Understand WMS requests and best practices

Web Map Service (WMS)
---------------------
The latest version of WMS is 1.3.0 [#ogc-06-042].

A WMS Server:

- Provides information about what maps a service can produce
- Produces a Map
- Answers queries about content of a Map


WMS Usage
---------
-  Produce a Map
-  Answer queries about content of the map


WMS Operations
--------------
- GetCapabilities
- GetMap
- GetFeatureInfo

WMS Examples
------------
The examples are based on a local installation of GeoServer
http://geoserver.org/



WMS GetCapabilities
-------------------

Request example::

   http://localhost:8080/geoserver/topp/wms?
   service=WMS&
   version=1.3.0&
   request=GetCapabilities


`Link <http://localhost:8080/geoserver/topp/wms?service=WMS&version=1.3.0&request=GetCapabilities>`_

 
WMS GetCapabilities Response
----------------------------
Provides information about:
 
-  How to invoke GetMap 
-  Types of exceptions
-  List of layers

WMS GetMap
----------

Request example::

   http://localhost:8080/geoserver/wms?
   bbox=-130,24,-66,50&
   styles=population&
   Format=image/png&
   request=GetMap&
   layers=topp:states&
   width=550&height=250&
   srs=EPSG:4326



`Link <http://localhost:8080/geoserver/wms?bbox=-130,24,-66,50&styles=population&Format=image/png&request=GetMap&layers=topp:states&width=550&height=250&srs=EPSG:4326
>`_


WMS GetFeatureInfo
------------------

Request example::

   http://localhost:8080/geoserver/wms?
   bbox=-130,24,-66,50&
   styles=population&
   format=jpeg&
   info_format=text/plain&
   request=GetFeatureInfo&
   layers=topp:states&
   query_layers=topp:states&
   width=550&height=250&x=170&y=160


`Link <http://localhost:8080/geoserver/wms?bbox=-130,24,-66,50&styles=population&format=jpeg&info_format=text/plain&request=GetFeatureInfo&layers=topp:states&query_layers=topp:states&width=550&height=250&x=170&y=160>`_

 
WMS GetLegendGraphic
--------------------
Optional request, provided by WMSs that support SLD

Request example::

   http://localhost:8080/geoserver/topp/ows?
   service=WMS&
   request=GetLegendGraphic&
   format=image%2Fpng&width=20&height=20&layer=states


`Link <http://localhost:8080/geoserver/topp/ows?service=WMS&request=GetLegendGraphic&format=image%2Fpng&width=20&height=20&layer=states>`_

