Tutorial OGC Catalog
======================

- Metadata
- Search
- Catalog
- FGDC
- ISO
- Profiles
- CSW Operations
- OpenSearch

Resource
----------

- A thing
- Anything which is worth uniquely identifying (over the Web)
- Can be data

Metadata
------------

- Data about a resource
- Data about data

  
Metadata
------------
.. image:: ../img/metadataaboutdata.jpg
      :height: 654
      :width: 1049



What is Missing ?
------------------
.. image:: ../img/nutrition_label.jpg
      :height: 654
      :width: 1049

      
What is Missing ?
------------------

.. image:: ../img/cans.jpg
      :height: 654
      :width: 1049   
      
      
Metadata - Who
---------------
- Who collected the data?
- Who processed the data?
- Who wrote the metadata?
- Who to contact for questions?
- Who to contact to order?
- Who owns the data?

Metadata - What
----------------
- What are the data about?
- What project were they collected under?
- What are the constraints on their use?
- What is the quality?
- What are appropriate uses?
- What parameters were measured?
- What format are the data in?

Metadata - Why
---------------
- Why were the data collected?

Metadata - Why
---------------
- Why were the data collected?


Where
-------

- Where were the data collected?
- Where were the data processed?
- Where are the data located?

When
-------
- When were the data collected?
- When were the data processed?

How
-----
- How were the data collected?
- How were the data processed?
- How do I access the data?
- How do I order the data?
- How much do the data cost?
- How was the quality assessed?

 
Metadata requires update
-------------------------
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
---------------
- Organizations: captures the knowhow of an organization  
- Developers: help share reliable information
- Users: helps discover data   
  
 
Search
-----------

Discovery & evaluation of resources through (summary) metadata

Catalog
---------
- Organized, detailed, descriptive list of items 
- arranged systematically (so they can be found)

Catalog
---------
.. image:: ../img/library.jpg
      :height: 1254
      :width: 2249   
      
Catalog Service
-------------------
.. image:: ../img/catalogservice.jpg
      :height: 1254
      :width: 2249   
         

Registry
-----------
**System** for maintaining a register or authoritative list of 
names / values / types / relationships (so they can be referenced)

Repository or Archive
------------------------

Place for storage of resources (so they can be retrieved)


Trader
-------------
 
- Intermediary in a service oriented architecture
- Connects providers with consumers)

Discovery using SOA 
------------------------------

.. image:: ../img/soa_triangle.jpg
      :height: 930
      :width: 1800
      
Example: Geospatial Platform
-----------------------------
.. image:: ../img/geoplatform.jpg
      :height: 1329
      :width: 2487
      
Metadata for Hurricane Map
-----------------------------
.. image:: ../img/metadata1.jpg
      :height: 954
      :width: 1933
      
Metadata for Hurricane Map
-----------------------------
.. image:: ../img/metadata2.jpg
      :height: 1045
      :width: 1608
      :scale: 70          

FGDC 
------
.. image:: ../img/fgdc.jpg
      :height: 1254
      :width: 2249


ISO 19115 Geographic Information
--------------------------------------
.. image:: ../img/iso1.jpg
      :height: 1254
      :width: 2249
       
ISO 19115 Geographic Information
--------------------------------------
.. image:: ../img/iso2.jpg
      :height: 1254
      :width: 2249
          


Profiles
--------------------------------------
.. image:: ../img/profiles.jpg
      :height: 1254
      :width: 2249 
      
Catalog Service
----------------
.. image:: ../img/catalogservices.jpg
      :height: 1254
      :width: 2249     
      

      
Catalog Services
-----------------

- CSW
- ISO 19119 Metadata Profile
- Z39.50 Profile
- OASIS ebRIM Profile
- OpenSearch      
    

GEOSS Registry
----------------

.. image:: ../img/geossreg.jpg
      :height: 1254
      :width: 2249  

Example Requests 
------------------

`GEOSS Geonetwork <http://geonetwork-opensource.org/stable/developers/xml_services/csw_services.html#getcapabilities>`_

    
      
CSW Operations
----------------
- GetCapabilities
- DescribeRecord
- GetRecordById
- GetRecords


CSW GetCapabilities
-------------------
Example Request:: 

    http://geossregistries.info:9002/geonetwork/srv/en/csw?
      Request=GetCapabilities&Service=CSW&Version=2.0.2

`Link to GetCapabilities <http://geossregistries.info:9002/geonetwork/srv/en/csw?Request=GetCapabilities&Service=CSW&Version=2.0.2>`_       
      
      
CSW DescribeRecord
-------------------
Example Request:: 

    http://geossregistries.info:9002/geonetwork/srv/en/csw?     
      Request=DescribeRecord&
      Service=CSW&Version=2.0.2&
      NAMESPACE=xmlns(rim=urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0)
      
`Link to DescribeRecord <http://geossregistries.info:9002/geonetwork/srv/en/csw?Request=DescribeRecord&Service=CSW&Version=2.0.2&NAMESPACE=xmlns%28rim=urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0%29>`_      

CSW GetRecordById
-------------------
Example Request::

   http://geossregistries.info:1090/GEOSSCSW202/discovery?
      Service=CSW&Request=GetRecordById&
      Id=urn:uuid:85fd419c-081b-4e69-8998-d1003b5d4489:1.4,
      urn:uuid:a9ad5a4b-1589-4876-a149-904fc5a9fef0:1.8

`Link to GetRecordById <http://geossregistries.info:9002/geonetwork/srv/en/csw?Service=CSW&Request=GetRecordById&Id=urn:uuid:85fd419c-081b-4e69-8998-d1003b5d4489:1.4,urn:uuid:a9ad5a4b-1589-4876-a149-904fc5a9fef0:1.8>`_

CSW GetRecords
----------------
Example Request::
   
   http://geossregistries.info:9002/geonetwork/srv/en/csw?
      Service=CSW&Request=GetRecords&version=2.0.2%20&
      constraintLanguage=CQL_TEXT&
      typeNames=gmd:MD_Metadata&
      namespace=xmlns%28gmd%3Dhttp%3A%2F%2Fwww.isotc211.org%2F2005%2Fgmd%29&
      resultType=results


      

OpenSearch
-----------

.. image:: ../img/opensearch.jpg
      :height: 1254
      :width: 2249  

OpenSearch
-----------
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
-----------
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
---------------
::

      http://example.com/?
      q=pizza&
      bbox=-111.032,42.943,-119.856,43.039&
      format=rss
      
OpenSearchGeo
---------------
::

     http://example.com/?
     q=pizza&
     lat=43.25&lon=-123.45
     &radius=10000&
     format=rss

    

OpenSearchGeo
---------------
::

   http://example.com/?
   q=pizza&
   l=boston&
   format=rss
   
   
Example Tool: GeoNetwork
----------------------------
.. image:: ../img/geonetwork.jpg
      :height: 1254
      :width: 2249   
      
        

Credits
--------

- `NOAA NCDDC Metadata training materials <http://www.ncddc.noaa.gov>`_

