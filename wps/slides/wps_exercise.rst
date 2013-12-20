WPS Exercise
============

1. Go to this service:
    http://demo.opengeo.org/geoserver/wps?SERVICE=WPS&REQUEST=GetCapabilities

2. Inspect the process that are supported by this service.

3. Find a buffer operation:

    <wps:Process wps:processVersion="1.0.0">
    <ows:Identifier>gs:PointBuffers</ows:Identifier>
    <ows:Title>Point Buffers</ows:Title>
    <ows:Abstract>
    Returns a collection of circular buffer polygons with specified radii centered on a given point
    </ows:Abstract>

4. Inspect Buffer Operation. What are the inputs and outputs?
    Use DescribeProcess.
    http://demo.opengeo.org/geoserver/wps?SERVICE=WPS&REQUEST=DescribeProcess&Identifier=gs:PointBuffers

.. You did not provide the detail input and output of the process. For example:
http://demo.opengeo.org/geoserver/wps?SERVICE=WPS&REQUEST=DescribeProcess&Identifier=gs:PointBuffers
Input = point in GML, a CRS and quadrantSegments

.. Output = is a wfs collection representing the buffers

5. Inspect the following procedure. What are the inputs and outputs?
    http://demo.opengeo.org/geoserver/wps?SERVICE=WPS&REQUEST=DescribeProcess&Identifier=JTS:buffer&version=1.0.0

6. Calculate a buffer around a feature collection, using the demo geoserver page:
