# ImageMagick convert png to pdf

Recently I discovered that it is not possible to convert from png to pdf by default with ImageMagick. I came across with [this post](https://askubuntu.com/a/1081907) that explains that certain uses of `convert` are restricted by default in the latest versions of Ubuntu due to [security issues](https://www.enisa.europa.eu/publications/info-notes/what2019s-behind-imagemagick-vulnerability). To allow this conversion again, all what is needed is to edit the ImageMagick policy file located at `/etc/ImageMagick-6/policy.xml`.
