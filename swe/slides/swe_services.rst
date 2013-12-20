SWE Services
============

SWE Services
------------

- **Sensor Observation Service** – Access observations and descriptions for sensor systems
- **Sensor Alert Service**  – Subscribe to alerts based upon sensor observations
- **Sensor Planning Service** – Request collection feasibility and task sensor system for desired observations
- **Web Notification Service** – Manage message dialogue between client services for long duration (asynchronous) processes
- **Sensor Registries** – Discover sensors and sensor observations


SWE Services
------------
.. image:: ../img/swe_services_catalog.jpg
      :height: 1000px
      :width: 1500px


SOS Operations
--------------

.. image:: ../img/sos_operations.jpg
      :height: 800px
      :width: 1200px
      
SOS GetCapabilities
-------------------

Request example::

   http://sensorweb.demo.52north.org/52nSOSv3.2.1/sos?
   request=GetCapabilities&
   version=1.0.0&
   service=SOS


`Link <http://sensorweb.demo.52north.org/52nSOSv3.2.1/sos?request=GetCapabilities&version=1.0.0&service=SOS>`_
      
SOS DescribeSensor
------------------

Request example::

   http://sensorweb.demo.52north.org/52nSOSv3.2.1/sos?
   request=DescribeSensor&
   version=1.0.0&
   service=SOS&
   procedure=urn:ogc:object:feature:Sensor:IFGI:ifgi-sensor-1&
   outputFormat=text/xml;subtype="sensorML/1.0.1


`Link <http://sensorweb.demo.52north.org/52nSOSv3.2.1/sos?request=DescribeSensor&version=1.0.0&service=SOS&procedure=urn:ogc:object:feature:Sensor:IFGI:ifgi-sensor-1&outputFormat=text/xml;subtype="sensorML/1.0.1>`_

SOS GetObservation
------------------

Request example::

   http://sensorweb.demo.52north.org/52nSOSv3.2.1/sos?
   request=GetObservation&
   version=1.0.0&
   service=SOS&
   offering=GAUGE_HEIGHT&
   procedure=urn:ogc:object:feature:Sensor:IFGI:ifgi-sensor-1&
   observedProperty=urn:ogc:def:phenomenon:OGC:1.0.30:waterlevel&
   resPonSeFormat=text/xml;subtype="om/1.0.0


`Link <http://sensorweb.demo.52north.org/52nSOSv3.2.1/sos?request=GetObservation&version=1.0.0&service=SOS&offering=GAUGE_HEIGHT&procedure=urn:ogc:object:feature:Sensor:IFGI:ifgi-sensor-1&observedProperty=urn:ogc:def:phenomenon:OGC:1.0.30:waterlevel&resPonSeFormat=text/xml;subtype="om/1.0.0>`_

SWE By National Data Buoy Center
--------------------------------

`SOS NDBC Link <http://sdf.ndbc.noaa.gov/sos/>`_


      
SWE and Geo-processing Workflow
-------------------------------

.. image:: ../img/swe_control_center.jpg
      :height: 800px
      :width: 1200px   
      
 
SWE in Defense
--------------
 
.. image:: ../img/swe_defense_empire_challenge.jpg
      :height: 800px
      :width: 1300px   

SWE in Air Quality
------------------
 
.. image:: ../img/swe_air_quality_pulsenet.jpg
      :height: 800px
      :width: 1300px   

