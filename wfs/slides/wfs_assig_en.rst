Exercise WFS
========================

Question 1
-----------

If you  are interested in getting all the names of the counties that are nearby Montgomery County (in Maryland), what SpatialOperator should you use?

The spatial operators are defined in the [OGC-04-095]_ Chapter 8 and in a newer version in the Section 7.2 of [OGC-09-026r1]_. 
   

Question 2
-----------
What are the properties of *gubs:GovernmentalUnitCEType*?

  
Question 3
----------
What is the first feature retrieved by the server?


Question 4
----------
 Pick any feature type from any WFS server and do a query filtering on the value of a property.  For example:
- `USGS server <http://frameworkwfs.usgs.gov/framework/wfs/wfs.cgi?DATASTORE=Framework&service=wfs>`_: How many  states have a population over 15 Million?
- `WFS UNEP <http://preview.grid.unep.ch:8080/geoserver/ows?SERVICE=WFS&REQUEST=GetFeature&VERSION=1.1.0&typeName=preview:cs_events&FILTER=%3CFilter%20xmlns=%22http://www.opengis.net/ogc%22%3E%3CPropertyIsGreaterThan%3E%3CPropertyName%3Ess_cat%3C/PropertyName%3E%3CLiteral%3E4%3C/Literal%3E%3C/PropertyIsGreaterThan%3E%3C/Filter%3E>`_
- `WFS NSIDC <http://nsidc.org/cgi-bin/atlas_north?service=WFS&version=1.1.0&request=getFeature&TypeName=glacier_outlines&FILTER=%3CFilter%20xmlns=%22http://www.opengis.net/ogc%22%3E%3CPropertyIsEqualTo%3E%3CPropertyName%3ERec_Status%3C/PropertyName%3E%3CLiteral%3Eokay%3C/Literal%3E%3C/PropertyIsEqualTo%20%3E%3C/Filter%3E&maxFeatures=1>`_

Question 5
-----------
Publish a shapefile following the instructions in the `GeoServer Manual <http://docs.geoserver.org/latest/en/user/gettingstarted/shapefile-quickstart/index.html>`_.


Question 6
----------
Use a Java property file, as explained in the `GeoServer documentation <http://docs.geoserver.org/stable/en/user/data/vector/properties.html>`_
To create a land data base from a municipality. Create 5 fields.

