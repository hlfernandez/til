### Find Debian/Ubuntu packages containing specific libraries

I found this Debian (search page)[https://www.debian.org/distrib/packages#search_contents] that allows looking into package contents. This is useful when you have an application that fails to run due to missing libraries.

For instance, I recently had an application that was missing `libfreetype.so.6`. So I used the (search page)[https://packages.debian.org/search?mode=filename&suite=bookworm&section=all&arch=i386&searchon=contents&keywords=libfreetype.so.6] and discovered that I need to install `libfreetype6`.
