# QRCode for Ruby on Rails #

A plugin for Ruby on Rails to generate QRCode (QRコード).

## About ##
This plugin use javascript to generate QRCode. The original javascript program is
developed by Kazuhiko Arase. (http://www.d-project.com/qrcode/index.html)

If you want to generate image directly from rails, check my another [Rails QRCode Generator](http://www.reality.hk/articles/2008/04/27/823/) ([its git repository](http://github.com/siuying/qrcode-rails/tree/master))

## Usage ##
  1. In your rails project, install the plugin by following command:
```
   ./script/plugin install http://qrcode-rails.googlecode.com/svn/trunk/plugins/qrcode
```
  1. Add javascript include tag in HTML header:
```
   <%= javascript_include_tag :defaults %>
```
  1. Add following funtion to where you want to generate QRCode.
```
   <%= qrcode('http://www.google.com/', 2, 8, 'my-qrcode') %>
```
> - Add following funtion to where you want to generate QRCode.
    * The first parameter is URL
    * The second optional parameter is pixel size.
    * The third optional parameter is QR Code type number, 1-10. Higher the type number, more data can be stored (max 976-2192 bits, depends on error correction level). Default 4. (For the relationship about adata size and type number, please refer to http://www.denso-wave.com/qrcode/vertable1-e.html)
    * The 4th optional parameter is ID of the generated div

## Example ##
You can find source of an example project here: http://qrcode-rails.googlecode.com/svn/trunk/examples

I have package the sample program into a [WAR](http://qrcode-rails.googlecode.com/svn/trunk/examples/simple/QRCode.war), deploy it into any Web Container (e.g. [Tomcat](http://tomcat.apache.org/), [Jetty](http://www.mortbay.org/), [Glassfish](https://glassfish.dev.java.net/) ...etc) to see how it works!

### Sample Code ###
```
<%= qrcode('http://www.google.com/', 8) %>
```
### Sample Screen ###
![http://www.reality.hk/wp-content/uploads/qrcode2.png](http://www.reality.hk/wp-content/uploads/qrcode2.png)

## License ##
Released under the MIT license.

## Author ##
  * Francis Chong - siuying [at](at.md) reality [dot](dot.md) hk