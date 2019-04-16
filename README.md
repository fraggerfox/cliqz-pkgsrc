cliqz-pkgsrc
============

NetBSD pkgsrc script for Cliqz Browser.

You can find more information about Cliqz Brower [here][1]

Installation
------------

Copy `www/cliqz` folder to `/usr/pkgsrc` directory.

NOTE: If your pkgsrc directory is different from above, copy to the respective
place.

Usage
-----

Once you have copied the folder, install it as you would do for any package.

`$ cd /usr/pkgsrc/www/cliqz`<br>
`$ make install clean`

For a list of dependencies for the build check [here][2]

NOTE: If you are using pkgsrc in a non NetBSD system, replace `make` with
`bmake` in the above example.

Credits
-------

* Cliqz Browser is developed and maintained by [Cliqz GmBH][3]
* Thanks to `@coypoop` and `leot@` for helping me come up with pkgsrc package and
  for testing out / fixing the build.
* Thanks to `ryoon@` whose patches for `www/firefox` helped make cliqz build and
  run under NetBSD.
* Thanks to `gdt@` for reviewing the package.

License
-------

BSD 2-clause. See LICENSE.

[1]: http://cliqz.com/
[2]: https://github.com/cliqz-oss/browser-f/
[3]: https://cliqz.com/en/

