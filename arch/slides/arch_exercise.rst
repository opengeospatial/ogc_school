Architecture Exercise
---------------------

Problem
-------
- Agency A and Agency B want to develop an information system to access robbery incidents in a city. They both need access to the information.
- Sources: UAV, citizen data from mobile phones, reports from police officers, 911 center
- Providers:
   - 911 command center
   - Wireless Carriers 
   - UAV service provider
   - Central Police command center
- **Design an Information System using RM-ODP**

Enterprise Viewpoint
--------------------

You are hired by Agencies A and B. You need to understand the objectives of the system. Come up with 5 use cases.

Think in terms of the client functionality. 
- What will th user interface looks like. 
- If they are buttons what do they do?
- What is the default view? Use case example: CLient get base map.


Information Viewpoint
---------------------

- Conceptual models
- Data types
- Data formats
- For example: RobberyML, which is a GML application profile for robbery events ..

Computational Viewpoint
-----------------------

Which Services are required. Usually:
- SOS for sensor data
- SPS for planning sensors
- WFS for vector data
- WMS for images
- WCS for coverages
- WPS for processes
- CSW for cataloging services


Engineering Viewpoint
---------------------
- Is the architecture
- If 3-tier. Put client on the top. Sources on the bottom. Then for every use case create a component that responds to the client requests. If client needs an image from vector data, then a component in the architecture will be a WMS that is also a WFS client. This components can be the source data or in the middle tier.
- Put square boxes presenting the services
- Lines you can put the encoding that is being send by the server


