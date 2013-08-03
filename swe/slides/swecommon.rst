SWECommon
=================


SWECommon provides
------------------

- primitive data types (boolean, categories, text, quantities ..)
- aggregate data types (records, arrays, matrices)
- specialized data types (curves, time dependent)
- Structure to encode quality information
- Structure to provide semantic annotations 


SWECommon relation with other encoding standards
------------------------------------------------

- In SensorML inputs and outputs are express via SWECommon
- In O&M the result can be expressed with SWECommon

SWECommon XML Example
-------------------------
Namespace declaration:

.. code-block:: xml
   
   <?xml version="1.0" encoding="UTF-8"?>
   <swe:DataStream id="EXAMPLE_01" 
      xmlns:swe="http://www.opengis.net/swe/2.0"
      xmlns:gml="http://www.opengis.net/gml/3.2"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xmlns:xlink="http://www.w3.org/1999/xlink"
      xsi:schemaLocation=
            "http://www.opengis.net/swe/2.0 http://schemas.opengis.net/sweCommon/2.0/swe.xsd">
    
SWECommon XML Example
-----------------------
  
Element Count:

.. code-block:: xml  
 
      <swe:elementCount>
         <swe:Count>
            <swe:value>10</swe:value>
         </swe:Count>
      </swe:elementCount>
      
      
SWECommon XML Example
-----------------------
  
Data Record and definition of first field (Time):

.. code-block:: xml        

      <swe:elementType name="weather_data">
         <swe:DataRecord>
            <!-- -->
            <swe:field name="time">
               <swe:Time definition=
                     "http://www.opengis.net/def/property/OGC/0/SamplingTime">
                  <swe:label>Sampling Time</swe:label>
                  <swe:uom xlink:href=
                     "http://www.opengis.net/def/uom/ISO-8601/0/Gregorian"/>
               </swe:Time>
            </swe:field>
 
       
SWECommon XML Example
-----------------------
  
Definition of second field (Temperature):

.. code-block:: xml   
     
            <swe:field name="temperature">
               <swe:Quantity definition=
                     "http://mmisw.org/ont/cf/parameter/air_temperature">
                  <swe:label>Air Temperature</swe:label>
                  <swe:uom xlink:href="Cel"/>
                  <swe:constraint>
                     <swe:AllowedValues>
                        <swe:value>1</swe:value>
                        <swe:value>2</swe:value>
                                  <swe:value>3</swe:value>
                        <swe:interval>-50 +50</swe:interval>
                        <swe:significantFigures>2</swe:significantFigures>
                     </swe:AllowedValues>
                  </swe:constraint>               
               </swe:Quantity>
            </swe:field>
            
SWECommon XML Example
-----------------------
  
Definition of third field (Pressure):

.. code-block:: xml    
     
            <swe:field name="pressure">
               <swe:Quantity definition=
                     "http://mmisw.org/ont/cf/parameter/air_pressure">
                  <swe:label>Atmospheric Pressure</swe:label>
                  <swe:quality>
                     <swe:Quantity definition=
                           "http://sweet.jpl.nasa.gov/2.0/sciUncertainty.owl#Accuracy">
                        <swe:uom code="%"/>
                        <swe:value>10</swe:value>
                     </swe:Quantity>
                  </swe:quality>
                  <swe:uom code="mbar"/>
               </swe:Quantity>
            </swe:field>
 
 
SWECommon XML Example
-----------------------
  
Definition of fourth and fifth fields (Wind Vector):

.. code-block:: xml    
     
            <swe:field name="windSpeed">
               <swe:Quantity definition=
                        "http://mmisw.org/ont/cf/parameter/wind_speed">
                  <swe:uom code="km/h"/>
               </swe:Quantity>
            </swe:field>
            <!-- -->
            <swe:field name="windDirection">
               <swe:Quantity definition=
                     "http://mmisw.org/ont/cf/parameter/wind_to_direction">
                  <swe:uom code="deg"/>
               </swe:Quantity>
            </swe:field>
            <!-- -->
         </swe:DataRecord>
      </swe:elementType>

SWECommon XML Example
-----------------------

Definition of the encoding and the data:

.. code-block:: xml    
     
      <swe:encoding>
         <swe:TextEncoding tokenSeparator="," 
               blockSeparator="&#32;" 
               decimalSeparator="."/>
      </swe:encoding>
      <swe:values>
         2009-01-01T10:00:25Z,25.3,1098,5,56
         2009-01-01T10:00:35Z,25.4,1098,15,59
         2009-01-01T10:00:45Z,25.4,1098,12,42
         ...
      </swe:values>
   </swe:DataStream>
      

