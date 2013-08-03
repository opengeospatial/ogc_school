Observations and Measurements (O&M)
====================================

This tutorial provides an introduction to the OGC Encoding Standard Observations and Meaurementes

O&M
-------

- An observation is an *event* that 
- estimates an *observed property* 
- of a *feature of interest*, 
- using a *procedure*, and 
- generating a *result*


O&M UML
-------

.. image:: ../img/om_uml.jpg
      :height: 800px
      :width: 1200px
      
O&M XML Example
----------------
      
Lets walk through an example from `Geonovum <http://geostandards.geonovum.nl/index.php/5.3.2_O%26M#Measurement_Example>`_      
      
      
O&M XML Header
---------------
.. code-block:: xml
   
     <?xml version="1.0" encoding="windows-1250"?>
          <om:Measurement gml:id="obsTest"
             xmlns:om="http://www.opengis.net/om/1.0"
             xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
             xmlns:xlink="http://www.w3.org/1999/xlink"
             xmlns:gml="http://www.opengis.net/gml"
               xsi:schemaLocation="http://www.opengis.net/om/1.0 
               ../extensions/observationSpecialization_override.xsd">
   
O&M XML Time
---------------
.. code-block:: xml   

   <om:samplingTime>
     <gml:TimeInstant>
       <gml:timePosition>2008-10-14T00:09:53+02:00</gml:timePosition>
     </gml:TimeInstant>
   </om:samplingTime>
   
O&M XML Procedure
--------------------
.. code-block:: xml

   <om:procedure 
      xlink:href=
            "urn:ogc:object:feature:OSIRIS-HWS:
               a1ef1094-c201-4f9f-8f2e-0ff97bf65f03"/>
 
O&M XML Observed Property
--------------------------
.. code-block:: xml 
   
   <om:observedProperty 
      xlink:href="urn:x-ogc:def:property:OGC::RelativeHumidity"/>
 
O&M XML Feature of Interest 
-----------------------------
.. code-block:: xml  

      <om:featureOfInterest>
            <sa:SamplingPoint 
         gml:id=
            "urn:ogc:object:feature:OSIRIS-HWS:
               a1ef1094-c201-4f9f-8f2e-0ff97bf65f03" 
         xsi:type="ns:SamplingPointType" 
            xmlns:ns="http://www.opengis.net/sampling/1.0" 
         xmlns:gml="http://www.opengis.net/gml">
       <gml:name>roof of the ifgi</gml:name>
       <sa:sampledFeature 
         xlink:href="urn:ogc:object:feature:
            OSIRIS-HWS:hygrometera1ef1094-c201-4f9f-8f2e-0ff97bf65f03"/>
       <sa:position>
         <gml:Point srsName="urn:ogc:def:crs:EPSG:4326">
           <gml:pos>52.07349 9.42125</gml:pos>
         </gml:Point>
       </sa:position>
     </sa:SamplingPoint>
   </om:featureOfInterest>
   
O&M XML Observed Property
--------------------------
.. code-block:: xml   

      <om:result uom="%" 
         xlink:href="urn:x-ogc:def:uom:OGC:percent" >41
      </om:result>
   </om:Measurement>
 

      