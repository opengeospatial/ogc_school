WEB Map Service (WMS)
==================================
(In process)

Introdução
------------

This tutorial provides a practical introduction to OGC Web Map Service (WMS).

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

