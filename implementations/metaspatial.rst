Metaspatial WMS 1.3 Server 
===========================

End Point
----------

The end point to access this service is:
`getCapabilities <http://metaspatial.net/cgi-bin/ogc-wms.xml?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=1.3>`_

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
