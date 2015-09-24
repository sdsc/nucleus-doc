Development Documentation
================================================================

The development farmework combines lessons learned from Rocks and
cloudmesh (mycloudmesh.org). Our goal is to keep it simple.


REST Service
---------------------------------------------------------------

The rest service is developed in::

  src/nucleus_service/nucleus/

To start the service please cd to that directory and say::

  make start

To stop it simply call ^C

To view the REST documnenattion generated with swagger, please use::

  make view

Commandline Client
------------------------------------------------------------

A commandline client that interfaces with the rest Service is
available at::

  src/nucleus_cli/

To install this service, please go into that directory and say::

  pip install -r requirements.txt
  puython setup.py install

This will install some basic libraries that make the development
easier and install the command line clients.

We strongly recommend that you use virtualenv in order to isolate your
development from the main python interpreter for you OS.  We also
require you to have an up to date version of pip, which you can
install with::

  pip install -U pip

To run the commandline client, please use the command::

  vcluster

a manual page can be printed with::

  vcluster --help





  
  
  

