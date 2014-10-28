. 

Metaspatial WMS 1.3 Server 
===========================


About this Page
---------------

This page has been compiled as a quick reference and introduction to the OGC WMS interface and service standard. All map images on this page are dynamically requested by standard OGC WMS queries and rendered by the live OGC Demo Server operated by `metaspatial.net <http://metaspatial.net>`_. This page does **not** describe all the features and options the standard offers. Please find the full technical description of the OGC WMS standard on the web sites of the Open Geospatial Consortium at: http://www.opengeospatial.org/standards/wms 

End Point
----------

The end point to access this service is: http://metaspatial.net/cgi-bin/ogc-wms.xml. The OGC WMS Capabilities document contains all information required to make an educated request. It can be retrieved by sending a `getCapabilities <http://metaspatial.net/cgi-bin/ogc-wms.xml?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=1.3>`_ request to the server. 

Current information about the status of this server can be found at the `metaspatial wiki <http://arnulf.us/OGC_WMS_Demo_and_Reference_Server>`_.


Note
~~~~
If this endpoint is called without any additional parameters the software running on this server (`MapServer <http://mapserver.org>`_) will return the following text: 

``No query information to decode. QUERY_STRING is set, but empty.``

This is documented and expected behavior. The server did not get any instructions what to do and therefore only informs us that it has nothing to do. Other software may return different or even no information at all.

In order to query maps from this server we have to first get the metadata. This metadata is contained in the ''OGC WMS Capabilities Document'' and comes in XML format. It is requested by calling: 

``http://metaspatial.net/cgi-bin/ogc-wms.xml?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=1.3``

This document contains all the information needed to make a valid OGC WMS GetMap request.

Getting a Map Image
-------------------
The ``GetMap`` request queries the server with a set of parameters describing the map image. The values of the parameters are taken from the Capabilities document (see above). A correctly formulated ``GetMap`` request will create the image shown below. 

*The URL of this link has been trunkated for better readability.*::

	http://metaspatial.net/cgi-bin/ogc-wms.xml?
	VERSION=1.3.0&
	REQUEST=GetMap&
	SERVICE=WMS&
	LAYERS=DTM,Overview,Raster_250K,Topography,nationalparks,Infrastructure,Places&
	STYLES=,,,,,,&
	CRS=EPSG:27700&
	BBOX=424735.97883597884,96026.98412698413,467064.02116402116,127773.01587301587&
	WIDTH=400&
	HEIGHT=300&
	FORMAT=image/png&
	BGCOLOR=0xffffff&
	TRANSPARENT=TRUE&
	EXCEPTIONS=XML

Use the link: `GetMap <http://metaspatial.net/cgi-bin/ogc-wms.xml?VERSION=1.3.0&REQUEST=GetMap&SERVICE=WMS&LAYERS=DTM,Overview,Raster_250K,Topography,nationalparks,Infrastructure,Places&STYLES=,,,,,,&CRS=EPSG:27700&BBOX=424735.97883597884,96026.98412698413,467064.02116402116,127773.01587301587&WIDTH=400&HEIGHT=300&FORMAT=image/png&BGCOLOR=0xffffff&TRANSPARENT=TRUE&EXCEPTIONS=XML>`_ to retrieve the map image form the OGC Demo and Reference Server. It will be rendered dynamically each time you request the image (given that no proxy interferes and delivers an earlier graphic rendition of the map data).

	.. image:: images/metaspatial.net_cgi-bin_ogc-wms.xml+VERSION=1.3.0+REQUEST=GetMap_1.png
		:width: 400
		:height: 300
		:scale: 100
		:alt: Map image returned by the OGC WMS server

Layers
------

WMS can be structured into layers. Each layer can be queried individually or in combination with another layer. Layers will be drawn in the order requested, the first at the bottom of the image and eacht layer stacked on top. If an opaque layer is rendered at the top of the image it may cover all the other layers. 

Every server has one root layer which contains the name of the server, here it is: ``OGC WMS Reference Server``. This server has seven map layers:

1. DTM (Digital Terrain Model)
2. Overview (Overview 1:1m)
3. Raster_250K (Raster 1:250k)
4. Topography (selection of topographical data derived from OS VectorMap District 1:50k)
5. National Parks (The national parks of Great Britain)
6. Infrastructure (selection of topographical data derived from OS VectorMap District 1:50k)
7. Named Places (selection of topographical data derived from OS VectorMap District 1:50k)

In the following request the layer "Overview" has been taken out of the request but otherwise the request is unchanged. It reveals the digital terrain model (DTM), a layer that was previously invisible.

	.. image:: images/metaspatial.net_GetMap_opaque.png
		:width: 400
		:height: 300
		:scale: 100
		:alt: Map with translucent overlay

Transparency / Translucency
---------------------------

The image can be overlayed over maps from another server. In those cases it may be helpful to make the image transparent such that the background color becomes the aplha channel and we can see what is below it.

The following examples show how each layer can be transparent and reveal what is underneath.

	.. image:: images/GetMap_opaque.png
		:width: 400
		:height: 300
		:scale: 100
		:alt: Map with translucent overlay

This request additionally requests the DTM layer which adds the black to grey shading:

	.. image:: images/GetMap_translucent.png
		:width: 400
		:height: 300
		:scale: 100
		:alt: Map with translucent overlay

If we look at the examples in the section above we can see a green shade, this is the layer "National Parks". It is translucent. This means that it just adds a shade of green to the image - or rather all the layers "below" the "National Parks". This is a setting of the server which we cannot change. But many clients can change this setting in the image that they have received from the server on their own. This can be done with PNG but not with the JPEG format.

Scale Limits
------------

It is important to understand that every layer can have scale limits when it is not displayed. For example it would not make sense to display the "Overview" and "Raster_250K" at the same time because they contain the same data but with different levels of generalization. So instead they have mutually exclusive scale limits so that they will never be returned in one image. The scale limits are set by the server and do not have to be configured by the client.

All this information is contained in the Capabilities document.

Zooming In and Out
------------------

The client can "zoom in" and "zoom out" of the map by calculating new values for the BBOX (bounding box) parameter. The same applies to all map navigation functions like panning or selecting a completely new area.

It is important to note that the server only returns an image to the client, but no additional information about the size, coordinate system, scale, etc. Therefore the server must make sure that it also returns images which may look "wrong" because the client has requested a 'squashed' image (for example with a width to height ratio other than 1:1). If the server would return anything other than exactly what was requested then the client will base its next request on wrong parameters. 

The following image shows the same area as above but with the different parameters for the WIDTH which has been changed from 400 pixels in the example above to 200 pixels here. ::

	...
	WIDTH=200&
	HEIGHT=300&
	...

The resulting image covers the same area as defined by the bounding box coordinates of the request but the image geometry is out of proportion. 

	.. image:: images/GetMap_squashed.png
		:width: 200
		:height: 300
		:scale: 100
		:alt: Map image with changed width-to-height ratio

Error Messages
--------------

In case the client causes an error by formulating a wrong request the server will return an error message. To demonstrate this we will request for a map with a layer named "Underview" (which does not exist on the server).

Typically the server will return an error message like this: ::

	<?xml version='1.0' encoding="ISO-8859-1" standalone="no" ?>
		<ServiceExceptionReport version="1.3.0" xmlns="http://www.opengis.net/ogc" 
		xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
		xsi:schemaLocation="http://www.opengis.net/ogc
		http://schemas.opengis.net//wms/1.3.0/exceptions_1_3_0.xsd">
		<ServiceException code="LayerNotDefined">
			msWMSLoadGetMapParams(): WMS server error. 
			Invalid layer(s) given in the LAYERS parameter. 
			A layer might be disabled for this request. 
			Check wms/ows_enable_request settings.
		</ServiceException>
	</ServiceExceptionReport>

`Note that differrent software may return different text messages along the ``ServiceException code``. `

One problem may be that the client cannot display this message in the image display element. An HTML client in a browser would simply show the above message as a broken image, something like this:

	.. image:: images/broken-image.png
		:width: 23
		:height: 27
		:scale: 100
		:alt: Crossed out image: This is a typical symbol displayed by browsers for content that cannot be rendered as a graphic image. 

To prevent this from happening we can change the format of the error message (the EXCEPTIONS parameter) to INIMAGE. In that case we can see the error message printed into an image:

	.. image:: images/ogc-wms_in-image_error.png
		:width: 500
		:height: 300
		:scale: 100
		:alt: Error message printed into an image file

Note that the image will have exactly the pixel size that was requested by the client. 

Description
------------

This server uses Opern Data publiched by the Ordnance Survey Great Britain and contains several raster and
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

Below the scale limit of 1:25k pub symbols have been included form the OpenStreetMap project, 
just for the fun of it. This  layer is also queryable so that it can show how a FeatureInfo
request works.

The server comes with a good dozen EPSGs so that it can be combined with
other European services and show compatibility with INSPIRE etc.
