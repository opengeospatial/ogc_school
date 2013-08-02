WEB Map Service (WMS)
==================================
(In process)
Introducción
------------
Este tutorial provee una introducción practica al OGC Web Map Service


Metas
-----
- Entender para que se utliza el WMS
- Entender las peticiones WMS y las mejores practicas 

Web Map Service (WMS)
----------------------
The latest version of WMS is 1.3.0 [#ogc-06-042].

A WMS Server:

- Provides information about what maps a service can produce
- Produces a Map
- Answers queries about content of a Map


WMS usage
----------------------

WMS Operations
----------------
- GetCapabilities
- GetMap
- GetFeatureInfo

WMS GetCapabilities
--------------------
Request example::

   http://metaspatial.net/cgi-bin/ogc-wms.xml?
      REQUEST=GetCapabilities&
      SERVICE=WMS&
      VERSION=1.3
      
`Link to getCapabilities <http://metaspatial.net/cgi-bin/ogc-wms.xml?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=1.3>`_

