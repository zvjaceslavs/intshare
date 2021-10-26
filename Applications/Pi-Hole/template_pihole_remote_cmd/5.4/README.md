# GG_pihole

## Overview

Only one active query needed, the rest is parsing.


Remember to enable remote commands.


You might need to include this on your visudo depending on agent permissions:


*zabbix ALL=(ALL:ALL) NOPASSWD:/bin/bash /usr/local/bin/pihole chronometer -j*


It will allow you to create a simple widget like this:


 


<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAkoAAADECAIAAADvZJlPAAAAA3NCSVQICAjb4U/gAAAgAElEQVR4Xu29DVRTV9rof+ZfhzPtmEynJJ0hYItDL/CiwSLQITFdoTA3CEMUTXQw1AHxCjqXUCyhXEURULBoaNU4Yr0DQhHsYBg/0gvCVJqs8jVFikClwJRCa4B5SbCadFoOtYv/PidBAySIDhaEZ6+zysn+eD5+O9nPefbZy/5kdHQUgwIEgAAQAAJAYH4R+P/mlzvgDRAAAkAACAABkgCEN/geAAEgAASAwDwkAOFtHk4quAQEgAAQAAIQ3uA7AASAABAAAvOQAIS3eTip4BIQAAJAAAgssoGgedfGP9fca1u0mOkSGLlF9hIDw769kBKf80/7iLeztzta3tuQNLH6IYZMFAGfgQAQAAJAAAhMTWDq7G3RM6xfP8ey//VTd77RdV6UHz7ZS0qze/rJxU/94pmfTi0ZWoEAEAACQAAIzBoBW9mbySCX2ENJIXbo/vaFtOSc9qGKv3dv3+YSkqQImTWDQTEQAAJAAAgAgfsTmDq83R3/i5d9n8tp/+LmrSEMc7DYnDR3GPmneteRso+//P4ZD39ZQvhvn6bqb3WeKSi7eO2rf33/1HMeL23fJnr52UkZ38hAeeGZ07Wd//qejvrEbwv/7bP3Nxp6AAEgAASAABCYmsDUm5NjY0cGrtR9hT4887S9NXFD5/7vpZvPLvdgYv9q/yCtuJPsM9ItTzn8Tt0X3zz93Iss7KuWD3a/cfyDWxNGf9/8fw8f/HvniKNv8IuMb1o+kKW/909rCqAOCAABIAAEgMADEZg6e+t+5409xd9//82toZvfI7G/3vA/XdDRkskKXozcpxD8Ausri9hZ8dU/uwcwNzv13y7qMLsVW86krLLHvm/+c3K85vo7F776XRQ6nDJW/v1xvsaAsYKP7VvzawxrL0yO/7v63LXw3S9O1gA1QAAIAAEgAAQegMDU4e3Ozf5/3UTSfvrkr59fvjYq/FVnq6Ltl7n+gmx4+tfPYNhX3383gv7b3o0qXvJHsY0c7/U/vRZrNP/65xdGzCK89X3xOWrsr3j11Yq7cr8cvI1hlDQoQAAIAAEgAAQelsDU4c1t1xnT0ZL7iR/3Tu17FN6mVciMEMP+R/CxyBfJ8ytUWfwsxLYxFvAXCAABIAAEHpbA9N69Pbj0F/7Hc2jQx+padBYFQ5uTf//0G7S56fEbmqUoxyVkpz79iLPLMtfnvmm8dE5z7V/TjY0PbhOMAAJAAAgAgQVDYOrs7eEx2PuvCbxw5ErL6VcTNC/8VH/tSwP2ixfjw1A4s3h19/RLr/qW7W5sTHvj+5edDR+hcyi/YGyIfHilMBIIAAEgAASAgInAo8resJ8vTzucEOv7m8W3vrrWjz234ndZmXEv/3wC9qdefi0pkY/6fFrROPCMBz8rc/Oyu9uUMEVAAAgAASAABB6WwE/gf2f6sOhgHBAAAkAACMxdAo8se5u7LoNlQAAIAAEgMP8JQHib/3MMHgIBIAAEFiABCG8LcNLBZSAABIDA/CcA4W3+zzF4CASAABBYgAQgvC3ASQeXgQAQAALznwCEt/k/x+AhEAACQGABEoDwtgAnHVwGAkAACMx/AhDe5v8cg4dAAAgAgQVIAMLbApx0cBkIAAEgMP8JQHib/3MMHgIBIAAEFiABCG8LcNLBZSAABIDA/CcA4W3+zzF4CASAABBYgAQgvC3ASQeXgQAQAALznwCEt/k/x+AhEAACQGABEoDwtgAnHVwGAkAACMx/AhDe5v8cg4dAAAgAgQVIAMLbApx0cBkIAAEgMP8JQHib/3MMHgIBIAAEFiABCG8LcNLBZSAABIDA/CcA4W3+zzF4CASAABBYgAQWWfP5ztW/5Z/rndDisG6j/d8vY1v/F5dlbcwD1t3p/qiiy1kYvOQBx83D7rcqTpc2PBMgW/sCzeTdzWvyolvrXvN3mYfOgktAAAjMCoFvG0rPNDhvSnjJvMwgI25+ciGnd/me9S88Od6iwY//+mfDy+m/m4mVflZ8HVNqNbwt8lkf40P2+O+/nazAfh+13hSE7hCuG7BnZsbckYEbg0anmZE1D6QMd9eUtPwqdsW9b948cApcAAJAYM4QeMp75fMqdfvgS7991mzTrX98cmtF0MTYNmcMngFDrIY3G3JvNv35EsreXur/25kWugtmuPXd7W9/+oK3950vW7426m4/wft9MO/ZRdjwf39YWd9i+AG7g9FeeGnjy0toGNH5UVXF5yMY0vZzJ2HIb2md6g91P9xRl1UsEv3u553nP/i0n8CG//3tIgfvP671eBa7UXK0aZHnk0bdiPHfPzz30vIne7v6bxu/xpasW891+Rlq/Rhbtvi7f2N3/v3dL1cGbnR/3KOCnbf/f32lvlKzJIw37vGB6P7oSkXvd3fuEMYfnloRGLxmKX7zk7JTN579zQ/Gr4eN3/3Mzd/F2NJ96+ub3/6SExS57GkM+7bzIzUagmF3Fj3jsSaQ/dzPbMwmVAMBILCQCPz0hRe9P6iqGfjtegf



## Author

GG

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Ads Blocked|<p>-</p>|`Dependent item`|pihole.ads.blocked<p>Update: 0</p>|
|pihole-stats|<p>-</p>|`Zabbix agent (active)`|system.run[pihole chronometer -j]<p>Update: 5m</p>|
|DNS Queries Today|<p>-</p>|`Dependent item`|pihole.dns.queries<p>Update: 0</p>|
|Ads Percentage|<p>-</p>|`Dependent item`|pihole.ads.percentage<p>Update: 0</p>|
|Domains Being Blocked|<p>-</p>|`Dependent item`|pihole.domains.blocked<p>Update: 0</p>|
## Triggers

There are no triggers in this template.

