OGC WMS 1.3 Demo Server 
===========================
This server is a demo and reference metaspatial 


End Point
----------

The end point to access this service is: http://metaspatial.net/cgi-bin/ogc-wms.xml. 

**Note:** This call causes the MapServer software used on this server to resturn a document 
with a raw text saying: 

::

   'No query information to decode. QUERY_STRING is set, but empty.' 

The server did not get any instructions what to do and therefore only informs us that 
it has nothing to do. 

**Note:** different implementations will have different behavior. 

In order to be able to use the server we have to first make a 
`getCapabilities <http://metaspatial.net/cgi-bin/ogc-wms.xml?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=1.3>`_ 
request to get the full Capabilities document. 


This document contains all the information needed to create 
a correct OGC WMS
`GetMap <http://metaspatial.net/cgi-bin/ogc-wms.xml?VERSION=1.3.0&REQUEST=GetMap&SERVICE=WMS&LAYERS=DTM,Overview,Raster_250K,Topography,nationalparks,Infrastructure,Places&STYLES=,,,,,,&CRS=EPSG:27700&BBOX=424735.97883597884,96026.98412698413,467064.02116402116,127773.01587301587&WIDTH=400&HEIGHT=300&FORMAT=image/png&BGCOLOR=0xffffff&TRANSPARENT=TRUE&EXCEPTIONS=XML>`_
request. 


More information about this server can be found `here <http://arnulf.us/OGC_WMS_Demo_and_Reference_Server>`_.


Description
------------

This server uses Ordnance Survey OpenData and contains several raster and
vector data for the whole country.

The bottom layer is the DTM of the UK from black (elevation 0 to white
(something around 1400 meters). Then follow two different regular TIFF
data files with maps of scales around 1:2 million down to 1:250.000. The
top layers are based on the Ordnance Survey "Vector Map District"
product. 

20 layers have been published  so that everything can be
turned on and off individually. To make things easier (and show the
group-functionality) some of them are grouped into the sub layers
"Infrastructure" (with roads and building and such) and "Topography"
(with woodland, water, contour lines, etc.). And a separate layer for
Place Names so that we have them as a separate item for doing SLD stuff
too.

Below 1:25k is is included pubs form OpenStreetMap, just for the fun of it.
That layer is also queryable so that it can show how a FeatureInfo
request works.

The server comes with a good dozen EPSGs so that we can combine it with
other European services and show compatibility with INSPIRE etc.
