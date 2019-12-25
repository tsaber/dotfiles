Usage
=====

Commands
--------

-  ``vf new [<options>] <envname>`` - Create a virtualenv. Note that
   ``<envname>`` *must be last*.
-  ``vf ls`` - List the available virtualenvs.
-  ``vf activate <envname>`` - Activate a virtualenv. (Note: Doesn't use the
   ``activate.fish`` script provided by virtualenv.)
-  ``vf deactivate`` - Deactivate the current virtualenv.
-  ``vf rm <envname>`` - Delete a virtualenv.
-  ``vf tmp [<options>]`` - Create a temporary virtualenv with a randomly
   generated name that will be removed when it is deactivated.
-  ``vf cd`` - Change directory to currently-activated virtualenv.
-  ``vf cdpackages`` - Change directory to the currently-activated virtualenv's
   site-packages.
-  ``vf addpath`` - Add a directory to this virtualenv's ``sys.path``.
-  ``vf all <command>`` - Run a command in all virtualenvs sequentially.
-  ``vf connect`` - Connect the current working directory with the currently
   active virtualenv. This requires the :ref:`auto-activation plugin
   <auto_activation>` to be enabled in order to have any effect besides creating
   a :file:`.venv` file in the current directory.

If you're used to virtualenvwrapper's commands (``workon``, etc.), you may wish
to enable the :ref:`compat_aliases` plugin.

Using Different Pythons
-----------------------

By default, the environments you create with ``virtualenv`` (and, by extension,
virtualfish) use the same Python version that ``virtualenv`` was installed
under, which will usually be whatever your default system Python is.

If you want to use something different in a particular virtualenv, just pass in
the ``--python PYTHON_EXE`` (``-p`` for brevity) argument to ``vf new``, where
``PYTHON_EXE`` is any Python executable, for example::

    vf new -p python3 my_python3_env
    vf new -p /usr/bin/pypy my_pypy_env

Configuration Variables
-----------------------

All of these must be set before ``virtual.fish`` is sourced in your
``~/.config/fish/config.fish``.

-  ``VIRTUALFISH_HOME`` (default: ``~/.virtualenvs``) - where all your
   virtualenvs are kept.
-  ``VIRTUALFISH_DEFAULT_PYTHON`` - The default Python interpreter to use when creating a new virtualenv; the value should be a valid argument to ``virtualenv``'s ``--python`` flag.
