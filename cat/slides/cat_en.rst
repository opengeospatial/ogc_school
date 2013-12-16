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


GEOSS Registry
--------------

.. image:: ../img/geossreg.jpg
      :height: 1254
      :width: 2249  

Example Services
----------------
`GI CAT <http://ec2-174-129-9-172.compute-1.amazonaws.com/gi-cat-RI/services/cswiso?service=CSW&version=2.0.2&request=GetCapabilities>`_

`PYCSW <http://demo.pycsw.org/cite/csw?service=CSW&version=2.0.2&request=GetCapabilities>`_

`ESRI GeoPortal <http://gptogc.esri.com/geoportal/csw?request=GetCapabilities&service=CSW&version=2.0.2>`_





CSW Operations
--------------
- GetCapabilities
- DescribeRecord
- GetRecordById
- GetRecords


CSW GetCapabilities
-------------------

Request example::

   http://ec2-174-129-9-172.compute-1.amazonaws.com/gi-cat-RI/services/cswiso?
   service=CSW&
   version=2.0.2&
   request=GetCapabilities


`Link <http://ec2-174-129-9-172.compute-1.amazonaws.com/gi-cat-RI/services/cswiso?service=CSW&version=2.0.2&request=GetCapabilities>`_


CSW DescribeRecord
------------------

Request example::

   http://ec2-174-129-9-172.compute-1.amazonaws.com/gi-cat-RI/services/cswiso?
   service=CSW&
   version=2.0.2&
   request=DescribeRecord


`Link <http://ec2-174-129-9-172.compute-1.amazonaws.com/gi-cat-RI/services/cswiso?service=CSW&version=2.0.2&request=DescribeRecord>`_

CSW Get Record
--------------


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
   
   
Example Tool: GeoNetwork
------------------------
.. image:: ../img/geonetwork.jpg
      :height: 1254
      :width: 2249   
      
        

Credits
-------

- `NOAA NCDDC Metadata training materials <http://www.ncddc.noaa.gov>`_

