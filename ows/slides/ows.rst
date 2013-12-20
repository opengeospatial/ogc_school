OWS Common
==========

OGC Web Services Common Standard
--------------------------------

Specifies many of the aspects that are common to OGC Web Service (OWS) interface Implementation Standards. 

OWS Common Aspects
------------------

- GetCapabilities operation (request, parameters, response) 
- Exception reports
- Operations parameters

   - Bounding box
   - Coordinate reference systems 
   - Format parameters
   - Data descriptions
   - Multilingual text encoding
- Operation request (HTTP GET and HTTP POST)
- Guidance for OWS Implementation Specifications

Example in GetCapabilities
--------------------------

`GetCapabilities Request <http://cite.lat-lon.de/deegree-webservices-3.3.6/services/wfs200?service=WFS&version=2.0.0&request=GetCapabilities>`_


.. code-block:: xml
	
   <WFS_Capabilities version="2.0.0" 
      xmlns="http://www.opengis.net/wfs/2.0" 
      xmlns:wfs="http://www.opengis.net/wfs/2.0" 
      xmlns:ows="http://www.opengis.net/ows/   
      1.1" ...">
      <ows:ServiceIdentification>
       <ows:Title>WFS 2.0.0 CITE Setup</ows:Title>
       <ows:Abstract></ows:Abstract>
       ...
       <ows:ServiceTypeVersion>2.0.0</ows:ServiceTypeVersion>
      </ows:ServiceIdentification>
     <ows:ServiceProvider>

xml elements prefixed with *ows* are defined in ows common

Example in GetCapabilities (cont.)
----------------------------------

.. code-block:: xml

   <ows:OperationsMetadata>
       <ows:Operation name="GetCapabilities">
         <ows:DCP>
           <ows:HTTP>
             <ows:Get 
               xlink:href="http://cite.lat-lon.de/
                  deegree-webservices-3.3.6/
                  services/wfs200?"/>
             <ows:Post 
               xlink:href="http://cite.lat-lon.de/
                  deegree-webservices-3.3.6/
                  services/wfs200"/>
           </ows:HTTP>

Example in GetCapabilities (cont.)
----------------------------------
          
 .. code-block:: xml   
        
      <ows:WGS84BoundingBox>
        <ows:LowerCorner>
            4.486395 51.604992
         </ows:LowerCorner>
        <ows:UpperCorner>
            5.928631 51.680515
        </ows:UpperCorner>
      </ows:WGS84BoundingBox>           

Example in an Error Message
---------------------------

Request example::

   http://cite.lat-lon.de/deegree-webservices-3.3.6/services/wfs200?
      service=WFS&
      version=2.0.0&
      request=BadRequest


`Link <http://cite.lat-lon.de/deegree-webservices-3.3.6/services/wfs200?service=WFS&version=2.0.0&request=BadRequest>`_

Example in an Error Message (Cont.)
-----------------------------------
Error Response:

.. code-block:: xml
	
   <?xml version='1.0' encoding='UTF-8'?>
   <ows:ExceptionReport 
      xmlns:ows="http://www.opengis.net/ows/1.1" 
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
      xsi:schemaLocation="http://www.opengis.net/ows/1.1 
         http://schemas.opengis.net/ows/1.1.0/owsExceptionReport.xsd" 
         version="2.0.0">
     <ows:Exception 
      exceptionCode="InvalidParameterValue" 
      locator="request">
       <ows:ExceptionText>
         No service for request type 'BadRequest' is configured / active.
       </ows:ExceptionText>
     </ows:Exception>
   </ows:ExceptionReport>




References
----------

Link at OGC
   http://www.opengeospatial.org/standards/common