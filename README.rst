Compass Mixins for django-libsass
=================================

`compass-mixins <https://github.com/Igosuki/compass-mixins>`__ packaged
as Django app under the same version number.

Installation
------------

Follow `django-libsass <https://github.com/Igosuki/compass-mixins>`__
installation instructions, then:

::

    $ pip install django-libsass-compass-mixins

and add django\_libsass\_compass\_mixins to your INSTALLED\_APPS setting

.. code:: python

    INSTALLED_APPS = [
    ...
    'django_libsass_compass_mixins'
    ...
    ]

Now you can use Compass mixins in your SCSS files

.. code:: scss

    ...
    @import "compass/reset";
    @import "compass/css3/box-shadow";
    ...

Building
--------

Building requires npm, wheel ans setuptools installed.

Build Django app package from latest version of
`compass-mixins <https://www.npmjs.com/package/compass-mixins>`__:

::

    $ make

then optionally upload the build to PyPI:

::

    $ make dist_upload

License
-------

| Copyright (c) 2008-2009 Christopher M. Eppstein
| All Rights Reserved
| Released under a `slightly modified MIT License <https://github.com/Compass/compass/blob/stable/LICENSE.markdown>`__.
