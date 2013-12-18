Metadata and Catalogs
=====================

- Metadata
- Search
- Catalog
- FGDC
- ISO
- Profiles
- CSW Operations
- OpenSearch

Resource
--------

- A thing
- Anything which is worth uniquely identifying (over the Web)
- Can be data

Metadata
--------

- Data about a resource
- Data about data


Metadata
--------
.. image:: ../img/metadataaboutdata.jpg
      :height: 654
      :width: 1049



What is Missing ?
-----------------
.. image:: ../img/nutrition_label.jpg
      :height: 654
      :width: 1049

      
What is Missing ?
-----------------

.. image:: ../img/cans.jpg
      :height: 654
      :width: 1049   
      
      
Metadata - Who
--------------
- Who collected the data?
- Who processed the data?
- Who wrote the metadata?
- Who to contact for questions?
- Who to contact to order?
- Who owns the data?

Metadata - What
---------------
- What are the data about?
- What project were they collected under?
- What are the constraints on their use?
- What is the quality?
- What are appropriate uses?
- What parameters were measured?
- What format are the data in?

Metadata - Why
--------------
- Why were the data collected?

Metadata - Why
--------------
- Why were the data collected?


Where
-----

- Where were the data collected?
- Where were the data processed?
- Where are the data located?

When
----
- When were the data collected?
- When were the data processed?

How
---
- How were the data collected?
- How were the data processed?
- How do I access the data?
- How do I order the data?
- How much do the data cost?
- How was the quality assessed?


Metadata requires update
------------------------
.. list-table::
   :widths: 50 50
   :header-rows: 1

   * - 1980
     - 2005
   * - British Honduras
     - Belize
   * - West Germany
     - Germany

Metadata Value
--------------
- Organizations: captures the knowhow of an organization
- Developers: help share reliable information
- Users: helps discover data


Search
------

Discovery & evaluation of resources through (summary) metadata

Catalog
-------
- Organized, detailed, descriptive list of items
- arranged systematically (so they can be found)

Catalog
-------
.. image:: ../img/library.jpg
      :height: 1254
      :width: 2249   
      
Catalog Service
---------------
.. image:: ../img/catalogservice.jpg
      :height: 1254
      :width: 2249   
         

Registry
--------
**System** for maintaining a register or authoritative list of
names / values / types / relationships (so they can be referenced)

Repository or Archive
---------------------

Place for storage of resources (so they can be retrieved)


Trader
------

- Intermediary in a service oriented architecture
- Connects providers with consumers)

Discovery using SOA
-------------------

.. image:: ../img/soa_triangle.jpg
      :height: 930
      :width: 1800
      
Example: Geospatial Platform
----------------------------
.. image:: ../img/geoplatform.jpg
      :height: 1329
      :width: 2487
      
Metadata for Hurricane Map
--------------------------
.. image:: ../img/metadata1.jpg
      :height: 954
      :width: 1933
      
Metadata for Hurricane Map
--------------------------
.. image:: ../img/metadata2.jpg
      :height: 1045
      :width: 1608
      :scale: 70          

FGDC
----
.. image:: ../img/fgdc.jpg
      :height: 1254
      :width: 2249


ISO 19115 Geographic Information
--------------------------------
.. image:: ../img/iso1.jpg
      :height: 1254
      :width: 2249
       
ISO 19115 Geographic Information
--------------------------------
.. image:: ../img/iso2.jpg
      :height: 1254
      :width: 2249
          


Profiles
--------
.. image:: ../img/profiles.jpg
      :height: 1254
      :width: 2249 
      
Catalog Service
---------------
.. image:: ../img/catalogservices.jpg
      :height: 1254
      :width: 2249     
      
     
Catalog Services
----------------

- CSW
- ISO 19119 Metadata Profile
- Z39.50 Profile
- OASIS ebRIM Profile
- OpenSearch

CSW Record
----------
.. code-block:: xml   

   <?xml version="1.0" encoding="ISO-8859-1"?>
   <Record
      xmlns="http://www.opengis.net/cat/csw/2.0.2"
      xmlns:dc="http://purl.org/dc/elements/1.1/"
      xmlns:dct="http://purl.org/dc/terms/"
      xmlns:ows="http://www.opengis.net/ows"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2
                          ../../../csw/2.0.2/record.xsd">
                          
CSW Record
----------
.. code-block:: xml   
                   
    ...
    <Record ...                      
      <dc:identifier>00180e67-b7cf-40a3-861d-b3a09337b195</dc:identifier>
      <dc:title>Image2000 Product 1 (at1) Multispectral</dc:title>
      <dct:modified>2004-10-04 00:00:00</dct:modified>
      <dct:abstract>IMAGE2000 product 1 individual orthorectified 
            scenes. IMAGE2000 was  produced from ETM+ Landsat 7 
            satellite data and provides a consistent European 
            coverage of individual orthorectified scenes in national 
            map projection systems.</dct:abstract>
      <dc:type>dataset</dc:type>
      
CSW Record
----------
.. code-block:: xml      
      
    ...
    <Record ...                      
      <dc:subject>imagery</dc:subject>
      <dc:subject>baseMaps</dc:subject>
      <dc:subject>earthCover</dc:subject>
      <dc:format>BIL</dc:format>
      <dc:creator>Vanda Lima</dc:creator>
      <dc:language>en</dc:language>
      <ows:WGS84BoundingBox>
         <ows:LowerCorner>14.05 46.46</ows:LowerCorner>
         <ows:UpperCorner>17.24 48.42</ows:UpperCorner>
      </ows:WGS84BoundingBox>
   </Record>
   
   

Queryable Terms
---------------

=========== ==================
OGC Term    XML Element    
=========== ==================
Title       dc:title  
Subject     dc:subject
Abstract    dc:description
Modified    dc:modified
Type        dc:type
=========== ==================

Queryable Terms
---------------

=========== ==================
OGC Term    XML Element    
=========== ==================
Format      dc:format
Identifier  dc:identifier
Source      dc:source
Association dc:relation
BoundingBox ows:BoundingBox         
=========== ==================

OGC Queryable Terms
-------------------

AnyText
   Full text search    
CRS
   Coordinate Reference System         
BoundingBox 
   For identifying a geographic area of interest


Example Services
----------------
`GI CAT <http://ec2-174-129-9-172.compute-1.amazonaws.com/gi-cat-RI/services/cswiso?service=CSW&version=2.0.2&request=GetCapabilities>`_

`pycsw <http://demo.pycsw.org/cite/csw?service=CSW&version=2.0.2&request=GetCapabilities>`_

`ESRI GeoPortal <http://gptogc.esri.com/geoportal/csw?request=GetCapabilities&service=CSW&version=2.0.2>`_


CSW Operations
--------------
- GetCapabilities
- DescribeRecord
- GetRecordById
- GetRecords
- Harvest   


CSW GetCapabilities
-------------------

.. code-block:: JavaScript   

   http://ec2-174-129-9-172.compute-1.amazonaws.com/
   gi-cat-RI/services/cswiso?
   service=CSW&
   version=2.0.2&
   request=GetCapabilities


`Link <http://ec2-174-129-9-172.compute-1.amazonaws.com/gi-cat-RI/services/cswiso?service=CSW&version=2.0.2&request=GetCapabilities>`_


CSW DescribeRecord
------------------

.. code-block:: JavaScript   

   http://ec2-174-129-9-172.compute-1.amazonaws.com/
   gi-cat-RI/services/cswiso?
   service=CSW&
   version=2.0.2&
   request=DescribeRecord


`Link <http://ec2-174-129-9-172.compute-1.amazonaws.com/gi-cat-RI/services/cswiso?service=CSW&version=2.0.2&request=DescribeRecord>`_


CSW GetRecords
--------------

.. code-block:: JavaScript   

   http://ec2-174-129-9-172.compute-1.amazonaws.com/
   gi-cat-RI/services/cswiso?
   service=CSW&
   version=2.0.2&
   request=GetRecords&
   typeNames=csw:Record&
   resultType=results&
   elementSetName=full&
   outputSchema=http://www.opengis.net/cat/csw/2.0.2&
   NAMESPACE=xmlns(csw=http://www.opengis.net/cat/csw/2.0.2)


`Link <http://ec2-174-129-9-172.compute-1.amazonaws.com/gi-cat-RI/services/cswiso?service=CSW&version=2.0.2&request=GetRecords&typeNames=csw:Record&resultType=results&elementSetName=full&outputSchema=http://www.opengis.net/cat/csw/2.0.2&NAMESPACE=xmlns(csw=http://www.opengis.net/cat/csw/2.0.2)>`_


Advanced Queries
----------------
Performed:
 - CQLTEXT
 - FILTER 

Asynchronous CSW Harvest Request
--------------------------------

.. code-block:: xml  

      <?xml version="1.0" encoding="ISO-8859-1"?>
      <Harvest
        service="CSW"
        version="2.0.2"
        xmlns="http://www.opengis.net/cat/csw/2.0.2"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2
                            ../../../csw/2.0.2/CSW-publication.xsd">
        <Source>http://www.yourserver.com/metadata.xml</Source>
        <ResourceType>http://www.fgdc.gov/metadata/csdgm</ResourceType>
        <ResourceFormat>application/xml</ResourceFormat>
        <HarvestInterval>P14D</HarvestInterval>
        <ResponseHandler>
            ftp://ftp.myserver.com/HarvestResponses</ResponseHandler>
      </Harvest>


Asynchronous CSW Harvest Response
---------------------------------

.. code-block:: xml  

   <?xml version="1.0" encoding="UTF-8"?>
   <csw:HarvestResponse 
         xmlns:csw="http://www.opengis.net/cat/csw/2.0.2">
     <csw:Acknowledgement timeStamp="2011-12-05T15:13:59">
       <csw:EchoedRequest>
           <csw:Harvest ...
           </csw:Harvest>
       </csw:EchoedRequest>
       <csw:RequestId>
         e7684bec-1fa9-4053-814f-7ae970d7a4a1
       </csw:RequestId>
     </csw:Acknowledgement>
   </csw:HarvestResponse>


Synchronous CSW Harvest Request
-------------------------------

.. code-block:: xml  

   <?xml version="1.0" encoding="UTF-8"?>
   <csw:Harvest 
            xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" 
            xmlns:gmd="http://www.isotc211.org/2005/gmd" 
            service="CSW" version="2.0.2">
      <csw:Source>
         http://[ URL to the target CSW server ]?
         request=GetCapabilities&amp;service=CSW
         &amp;version=2.0.2
      </csw:Source>
      <csw:ResourceType>
         http://www.isotc211.org/schemas/2005/gmd/
      </csw:ResourceType>
   </csw:Harvest>

Synchronous CCSW Harvest Response
---------------------------------
.. code-block:: xml  

   <?xml version="1.0" encoding="UTF-8"?>
   <csw:HarvestResponse 
      xmlns:csw="http://www.opengis.net/cat/csw/2.0.2">
       <csw:TransactionResponse>
           <csw:TransactionSummary>
               <csw:totalInserted>22</csw:totalInserted>
               <csw:totalUpdated>0</csw:totalUpdated>
               <csw:totalDeleted>0</csw:totalDeleted>
           </csw:TransactionSummary>
       </csw:TransactionResponse>
   </csw:HarvestResponse>


OpenSearch
----------

.. image:: ../img/opensearch.jpg
      :height: 1254
      :width: 2249  

OpenSearch
----------
.. code-block:: xml

    <?xml version="1.0" encoding="UTF-8"?>
    <OpenSearchDescription 
         xmlns="http://a9.com/-/spec/opensearch/1.1/">
      <ShortName>Mirador Dataset Search</ShortName>
      <Description>Use Mirador Dataset Search to obtain a 
      list of Earth Science Data Sets</Description>
      <Tags>Mirador Dataset Search</Tags>
      <Contact>mirador-disc@listserv.gsfc.nasa.gov</Contact>
      ...
      


OpenSearch
----------
.. code-block:: xml

   <Url type="application/atom+xml" 
           template="http://mirador.gsfc.nasa.gov/cgi-bin/
              mirador/collectionlist.pl?
           keyword={searchTerms}&
           page=1&
           count={count}&
           osLocation={geo:box}&
           startTime={time:start}&
           endTime={time:end}&
           format=atom"/>


OpenSearchGeo
-------------
::

      http://example.com/?
      q=pizza&
      bbox=-111.032,42.943,-119.856,43.039&
      format=rss
      
OpenSearchGeo
-------------
::

     http://example.com/?
     q=pizza&
     lat=43.25&lon=-123.45
     &radius=10000&
     format=rss

    

OpenSearchGeo
-------------
::

   http://example.com/?
   q=pizza&
   l=boston&
   format=rss
   
      
        

Credits
-------

- `NOAA NCDDC Metadata training materials <http://www.ncddc.noaa.gov>`_

