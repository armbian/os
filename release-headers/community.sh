#!/bin/bash

TS=$(date +%s)

cat <<EOF
<p align='center'>
  <a href="https://www.armbian.com"><img src="https://raw.githubusercontent.com/armbian/.github/master/profile/logosmall.png" alt="Armbian logo"></a>
  <h1 align=center>Community releases</h1>
</p>

<p align='center'>
  <a href="https://www.armbian.com"><img
      src="https://github.armbian.com/current.svg?$TS"
      alt="Armbian Linux CURRENT"
      width="425"></a> &nbsp; 
  <a href="https://www.armbian.com"><img
      src="https://github.armbian.com/edge.svg?$TS"
      alt="Armbian Linux EDGE"
      width="425"></a>
</p>

<p align='center'>
  Community courtesy builds are not maintained by Armbian team, but exist thanks to 
  <a href="https://github.com/sponsors/armbian">community support</a>.
   SHA checksums, GPG signatures, and torrent files can be obtained from our cache server at
  <a href="https://cache.armbian.com/artifacts">https://cache.armbian.com/artifacts</a>.
</p>
EOF
