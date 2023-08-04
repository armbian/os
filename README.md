<p align="center">
  <a href="#build-framework">
   <img src="https://raw.githubusercontent.com/armbian/build/master/.github/armbian-logo.png" alt="Armbian logo" width="144">
  </a><br>
  <strong>Armbian OS</strong><br>
<br>
<a href=https://github.com/armbian/os/actions/workflows/complete-artifact-matrix-all.yml><img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/armbian/os/complete-artifact-matrix-all.yml?logo=githubactions&label=Artifacts%20make&style=for-the-badge&branch=main"></a>
<a href=https://github.com/armbian/os/actions/workflows/repository-update.yml><img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/armbian/os/repository-update.yml?logo=githubactions&label=Repository%20update&style=for-the-badge&branch=main"></a>
<a href=https://github.com/armbian/os#latest-smoke-tests-results><img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/armbian/os/smoke-tests.yml?logo=githubactions&label=Smoke%20tests&style=for-the-badge&branch=main"></a>
</p>


# What does this project do?

- Keeps build framework [packages artifacts](https://github.com/orgs/armbian/packages) cache up to date
- Keeps stable [apt.armbian.com](https://apt.armbian.com) and nightly [beta.armbian.com](https://beta.armbian.com) packages repository up to date
- Builds [nightly](https://github.com/armbian/os/releases) and [stable images](https://www.armbian.com/download/) and uploads them to Armbian CDN
- Keep synchronizing the selection of [3rd party](external) applications with Armbian repositories
- Tests install of all packages added onto stable and testing Debian and Ubuntu releases

# When is this happening?

- Artifacts cache is updated every eight hours, starting at 0:00 AM UTC
- Repository update is updated once per day, at 3:00 AM UTC
- Smoke tests is executed after **repository update** is finished.
- Nightly images are build once per day, at 5:00 AM UTC
- Manually, when Armbian [release manager](https://github.com/orgs/armbian/teams/release-manager) executes a build action

# Latest smoke tests results:

- installs kernels, dtb and headers that are defined and supported by the board
- runs network and computing performance tests (7z benchmark)
- store armbianmonitor logs

<!--START_SECTION:data-section-->
<table width="100%"><tr><td align="left"><a href="https://paste.armbian.com/">Espressobin</a></td><td align="left">2023-08-04&nbsp;09:43:56</td><td align=right>current</td><td align=right>5.15.124-mvebu64</td><td align=right>867</td><td align=right>1119</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Espressobin</a></td><td align="left">2023-08-04&nbsp;09:49:44</td><td align=right>edge</td><td align=right>5.15.124-mvebu64</td><td align=right>881</td><td align=right>1113</td></tr><tr><td align="left"><a href="https://paste.armbian.com/exazivakuz">Pine H64</a></td><td align="left">2023-08-04&nbsp;09:30:44</td><td align=right>current</td><td align=right>6.1.42-sunxi64</td><td align=right>953</td><td align=right>3733</td></tr><tr><td align="left"><a href="https://paste.armbian.com/afuzufoxom">Pine H64</a></td><td align="left">2023-08-04&nbsp;09:35:13</td><td align=right>edge</td><td align=right>6.4.7-sunxi64</td><td align=right>960</td><td align=right>3736</td></tr><tr><td align="left"><a href="https://paste.armbian.com/gelojehole">NanoPi R6S</a></td><td align="left">2023-08-04&nbsp;09:25:54</td><td align=right>legacy</td><td align=right>5.10.160-rk35xx</td><td align=right>898</td><td align=right>15779</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Cubieboard 1</a></td><td align="left">2023-08-04&nbsp;09:35:12</td><td align=right>legacy</td><td align=right>5.15.123-sunxi</td><td align=right>78</td><td align=right>578</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Cubieboard 1</a></td><td align="left">2023-08-04&nbsp;09:45:22</td><td align=right>current</td><td align=right>6.1.42-sunxi</td><td align=right>77</td><td align=right>560</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Cubieboard 1</a></td><td align="left">2023-08-04&nbsp;09:56:28</td><td align=right>edge</td><td align=right>6.4.7-sunxi</td><td align=right>77</td><td align=right>558</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Rockpi 4B</a></td><td align="left">2023-08-04&nbsp;09:28:01</td><td align=right>legacy</td><td align=right>4.4.213-rockchip64</td><td align=right>810</td><td align=right>6108</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Rockpi 4B</a></td><td align="left">2023-08-04&nbsp;09:31:43</td><td align=right>current</td><td align=right>4.4.213-rockchip64</td><td align=right>960</td><td align=right>6009</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Rockpi 4B</a></td><td align="left">2023-08-04&nbsp;09:36:09</td><td align=right>edge</td><td align=right>6.3.13-rockchip64</td><td align=right>860</td><td align=right>6351</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Raspberry Pi 4</a></td><td align="left">2023-08-04&nbsp;09:33:48</td><td align=right>legacy</td><td align=right>6.3.13-bcm2711</td><td align=right>89</td><td align=right>2196</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Raspberry Pi 4</a></td><td align="left">2023-08-04&nbsp;09:39:07</td><td align=right>current</td><td align=right>6.3.13-bcm2711</td><td align=right>90</td><td align=right>2260</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Raspberry Pi 4</a></td><td align="left">2023-08-04&nbsp;09:45:11</td><td align=right>edge</td><td align=right>6.3.13-bcm2711</td><td align=right>89</td><td align=right>2123</td></tr><tr><td align="left"><a href="https://paste.armbian.com/oribehoheg">Orange Pi R1</a></td><td align="left">2023-08-04&nbsp;09:35:22</td><td align=right>current</td><td align=right>6.1.42-sunxi</td><td align=right>90</td><td align=right>2807</td></tr><tr><td align="left"><a href="https://paste.armbian.com/efiriyocis">Orange Pi R1</a></td><td align="left">2023-08-04&nbsp;09:39:23</td><td align=right>edge</td><td align=right>6.4.7-sunxi</td><td align=right>90</td><td align=right>2519</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Banana Pi Pro</a></td><td align="left">2023-08-04&nbsp;09:33:13</td><td align=right>legacy</td><td align=right>5.15.123-sunxi</td><td align=right>626</td><td align=right>1040</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Banana Pi Pro</a></td><td align="left">2023-08-04&nbsp;09:41:45</td><td align=right>current</td><td align=right>6.1.42-sunxi</td><td align=right>635</td><td align=right>1017</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Banana Pi Pro</a></td><td align="left">2023-08-04&nbsp;09:50:46</td><td align=right>edge</td><td align=right>6.4.7-sunxi</td><td align=right>527</td><td align=right>1022</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">ZeroPi</a></td><td align="left">2023-08-04&nbsp;09:43:32</td><td align=right>legacy</td><td align=right>5.15.123-sunxi</td><td align=right>539</td><td align=right>2533</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">ZeroPi</a></td><td align="left">2023-08-04&nbsp;09:48:42</td><td align=right>current</td><td align=right>6.1.42-sunxi</td><td align=right>648</td><td align=right>2548</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">ZeroPi</a></td><td align="left">2023-08-04&nbsp;09:54:06</td><td align=right>edge</td><td align=right>6.4.7-sunxi</td><td align=right>549</td><td align=right>2539</td></tr><tr><td align="left"><a href="https://paste.armbian.com/emokaxicav">Cubietruck</a></td><td align="left">2023-08-04&nbsp;09:47:34</td><td align=right>legacy</td><td align=right>5.15.123-sunxi</td><td align=right>594</td><td align=right>1031</td></tr><tr><td align="left"><a href="https://paste.armbian.com/medopijilo">Cubietruck</a></td><td align="left">2023-08-04&nbsp;09:56:24</td><td align=right>current</td><td align=right>6.1.42-sunxi</td><td align=right>665</td><td align=right>1018</td></tr><tr><td align="left"><a href="https://paste.armbian.com/osifavabip">Cubietruck</a></td><td align="left">2023-08-04&nbsp;10:05:39</td><td align=right>edge</td><td align=right>6.4.7-sunxi</td><td align=right>494</td><td align=right>1014</td></tr><tr><td align="left"><a href="https://paste.armbian.com/gujabuheci">ODROID M1</a></td><td align="left">2023-08-04&nbsp;09:30:20</td><td align=right>edge</td><td align=right>6.3.13-rk3568-odroid</td><td align=right>970</td><td align=right>5358</td></tr><tr><td align="left"><a href="https://paste.armbian.com/itejifavuq">Orange Pi Zero</a></td><td align="left">2023-08-04&nbsp;09:36:54</td><td align=right>legacy</td><td align=right>5.15.123-sunxi</td><td align=right>90</td><td align=right>2404</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero</a></td><td align="left">2023-08-04&nbsp;09:41:34</td><td align=right>current</td><td align=right>6.1.42-sunxi</td><td align=right>90</td><td align=right>2630</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero</a></td><td align="left">2023-08-04&nbsp;09:46:21</td><td align=right>edge</td><td align=right>6.4.7-sunxi</td><td align=right>90</td><td align=right>2336</td></tr><tr><td align="left"><a href="https://paste.armbian.com/yuqipegoqi">Orange Pi Zero Plus</a></td><td align="left">2023-08-04&nbsp;09:33:43</td><td align=right>legacy</td><td align=right>5.15.123-sunxi64</td><td align=right>824</td><td align=right>2567</td></tr><tr><td align="left"><a href="https://paste.armbian.com/esobodewuy">Orange Pi Zero Plus</a></td><td align="left">2023-08-04&nbsp;09:38:59</td><td align=right>current</td><td align=right>6.1.42-sunxi64</td><td align=right>853</td><td align=right>2603</td></tr><tr><td align="left"><a href="https://paste.armbian.com/aqujuyujod">Orange Pi Zero Plus</a></td><td align="left">2023-08-04&nbsp;09:44:06</td><td align=right>edge</td><td align=right>6.4.7-sunxi64</td><td align=right>815</td><td align=right>2571</td></tr><tr><td align="left"><a href="https://paste.armbian.com/ososozewur">A64 OLinuXino</a></td><td align="left">2023-08-04&nbsp;09:39:14</td><td align=right>legacy</td><td align=right>5.15.123-sunxi64</td><td align=right>451</td><td align=right>2628</td></tr><tr><td align="left"><a href="https://paste.armbian.com/zofiwawoxi">A64 OLinuXino</a></td><td align="left">2023-08-04&nbsp;09:46:27</td><td align=right>current</td><td align=right>6.1.42-sunxi64</td><td align=right>748</td><td align=right>2848</td></tr><tr><td align="left"><a href="https://paste.armbian.com/geporenule">A64 OLinuXino</a></td><td align="left">2023-08-04&nbsp;09:56:53</td><td align=right>edge</td><td align=right>6.4.7-sunxi64</td><td align=right>780</td><td align=right>2850</td></tr><tr><td align="left"><a href="https://paste.armbian.com/lesevivafe">Rock 5B</a></td><td align="left">2023-08-04&nbsp;09:26:02</td><td align=right>legacy</td><td align=right>5.10.160-rk35xx</td><td align=right>898</td><td align=right>15407</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero Plus 2</a></td><td align="left">2023-08-04&nbsp;09:38:31</td><td align=right>legacy</td><td align=right>5.15.123-sunxi</td><td align=right>38</td><td align=right>2511</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero Plus 2</a></td><td align="left">2023-08-04&nbsp;09:44:07</td><td align=right>current</td><td align=right>6.1.42-sunxi</td><td align=right>41</td><td align=right>2692</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero Plus 2</a></td><td align="left">2023-08-04&nbsp;09:50:17</td><td align=right>edge</td><td align=right>6.4.7-sunxi</td><td align=right>39</td><td align=right>2485</td></tr></table>
<!--END_SECTION:data-section-->

## Would you like to join spare hardware to this automated testings?

All you need to do is:

- deploy any latest Armbian image to hardware
- provide IP address
- [contact us](https://www.armbian.com/contact/)

Device has to be always on and easily accesible for you to re-image in case of failed upgrade.

## Development

- [Pull request](https://github.com/armbian/build/pulls)
- [Weekly developers meetings](https://forum.armbian.com/events/)
- [Forums for developers](https://forum.armbian.com/forum/4-advanced-users-development/)

## OS download

- [Download](https://www.armbian.com/download/)

## Support

- [Using Armbian](https://forum.armbian.com/forum/23-using-armbian/)

## Contact

- [Forums](https://forum.armbian.com) for Participate in Armbian
- IRC: `#armbian` on Libera.chat
- Discord: [https://discord.gg/armbian](https://discord.gg/armbian)
- Follow [@armbian](https://twitter.com/armbian) on Twitter, [Fosstodon](https://fosstodon.org/@armbian) or [LinkedIn](https://www.linkedin.com/company/armbian).
- Bugs: [issues](https://github.com/armbian/build/issues) / [JIRA](https://armbian.atlassian.net/jira/dashboards/10000)
- Office hours: [Wednesday, 12 midday, 18 afternoon, CET](https://calendly.com/armbian/office-hours)

## License

This software is published under the GPL-2.0 License license.
