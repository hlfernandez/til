# CSS styles only for Internet Explorer

I have just discovered that Internet Explorer 10 does not attempt to process the conditional comments that were used in the past to set CSS stylesheets only for Internet Explorer.

Nevertheless, it seems that it is still possible to apply CSS styles only for Internet Explorer using `@media`. For instance, the following annotation allows to define CSS styles for IE versions 9, 10, and 11:
    
```css
@media screen and (min-width:0\0) { 

}
```

References:
    - https://jeffclayton.wordpress.com/2015/04/07/css-hacks-for-windows-10-and-spartan-browser-preview/
    - https://www.csslab.cl/2014/06/18/estilos-para-ie9-ie10-e-ie11/
