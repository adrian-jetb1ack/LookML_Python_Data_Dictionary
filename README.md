# LookML_Python_Data_Dictionary
This repo has the Python and LookML code for generating a data dictionary in your Looker Instance.

The lookerapi.py file contains the functions / SDK for connecting to the Looker API. It requres that you have already saved a config file with your API authentication information into your instance. 

The Jupyter Notebook contains the code to grab the metadata on field definitions (i.e. dimension name, description, etc.), and some example code to push the results back to your database (Bigquery shown). 

The view and model file can be used to drop into your Looker instance, along with the LookML dashboard - which can be modified using the data dictionary explore. The resulting dashboard is a tool to be used by internal business users to search for key terms in the field name, description, or explore - which results in a list of the appropriate fields. You can then drill in to the number of explores that field is used in, and link directly to that explore; making it easy for business users to ask their own questions of the data.



