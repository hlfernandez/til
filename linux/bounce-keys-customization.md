### Bounce keys customization

It seems that in old Kubuntu versions (18.04 and 20.04) the minimum value achievable via `System Settings > Accessibility` is 100ms. 

I needed a lower value so I found [this post](https://askubuntu.com/a/1256618/965511) explaining that a tool named `xkbset` can be used to do so: `xkbset bouncekeys 20`. 

The `xkbset q` command can be used to check that the values have been changed:
```
Bounce-Keys = On
Debounce Delay = 20
``
