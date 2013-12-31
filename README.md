tpl2dox
=======

A simple gawk script to interpret Doxygen comments in 
[ADMB](http://www.admb-project.org/ "ADMB") template files.

Requirements
------------

[Doxygen](www.doxygen.org/ "Doxygen") and `gawk` must be installed on your computer.

You will probably need a working version of ADMB, too.

Usage
-----
1. Include the following setting in your Doxyfile:

		FILTER_PATTERNS        = *.tpl=tpl2dox.sh
for linux, or

    	FILTER_PATTERNS        = *.tpl=tpl2dox.bat
for Windoze, and add your ADMB template file to the `INPUT` setting, e. g.,

		INPUT                  = simple.tpl
2. Ensure the tpl2dox script is in the same directory as Doxyfile so that it is visible to doxygen.

3. Block comments are not supported for variables. 
Use `///<` to open an in line Doxygen comment to document variables in the
`DATA_SECTION` and `PARAMETER_SECTION`.

4. Doxygen comment blocks, such as those to document FUNCTIONs, 
should be opend with `/**` and closed with `*/`.
The other comment block delimiters are not supported.

5. Comment blocks shoud start in column 3 in accordance with standard
ADMB coding practice.


Caveats
-------

1. `tpl2dox` does not work correctly in all cases. Occasionally functions appear
in places where variables should appear. 
The comment blocks for certaion FUNCTIONs do not appear.

2. Run `tpl2cpp` to make sure your comments blocks have not buggered up 
the `.tpl` file format.

Examples
--------
Here are a few examples drawn from the standard suite of ADMB examples. 
Some work well; some don't.

1. [Simple](simple/dox/html/index.html "Simple")

2. [Catage](catage/dox/html/index.html "Catage")

3. [Forest](forest/dox/html/index.html "Forest")

4. [Pella-t](pella-t/dox/html/index.html "Pella-t")

