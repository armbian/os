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
<table width="100%"><tr><td align="left"><a href="n/a">Tinker Board</a></td><td align="left">2023-08-04&nbsp;17:23:37</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Espressobin</a></td><td align="left">2023-08-04&nbsp;17:35:20</td><td align=right>current</td><td align=right>5.15.124-mvebu64</td><td align=right>856</td><td align=right>1104</td></tr><tr><td align="left"><a href="https://paste.armbian.com/uhibuhetok">Pine H64</a></td><td align="left">2023-08-04&nbsp;17:30:00</td><td align=right>current</td><td align=right>6.1.43-sunxi64</td><td align=right>820</td><td align=right>3737</td></tr><tr><td align="left"><a href="n/a">UEFI x86</a></td><td align="left">2023-08-04&nbsp;17:26:03</td><td align=right>legacy</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">UEFI x86</a></td><td align="left">2023-08-04&nbsp;17:26:05</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Banana Pi M5</a></td><td align="left">2023-08-04&nbsp;17:23:11</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Rockpi E</a></td><td align="left">2023-08-04&nbsp;17:23:27</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Odroid C2</a></td><td align="left">2023-08-04&nbsp;17:23:28</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Orange Pi 4 LTS</a></td><td align="left">2023-08-04&nbsp;17:22:57</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="https://paste.armbian.com/ehofadiban">NanoPi R6S</a></td><td align="left">2023-08-04&nbsp;17:27:08</td><td align=right>legacy</td><td align=right>5.10.160-rk35xx</td><td align=right>2450</td><td align=right>15773</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Cubieboard 1</a></td><td align="left">2023-08-04&nbsp;17:37:36</td><td align=right>legacy</td><td align=right>5.15.124-sunxi</td><td align=right>81</td><td align=right>574</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Cubieboard 1</a></td><td align="left">2023-08-04&nbsp;17:54:47</td><td align=right>current</td><td align=right>6.1.43-sunxi</td><td align=right>77</td><td align=right>555</td></tr><tr><td align="left"><a href="https://paste.armbian.com/uturamiweq">Orange Pi 3 LTS</a></td><td align="left">2023-08-04&nbsp;17:28:21</td><td align=right>current</td><td align=right>6.1.43-sunxi64</td><td align=right>954</td><td align=right>4002</td></tr><tr><td align="left"><a href="n/a">Odroid C4</a></td><td align="left">2023-08-04&nbsp;17:23:22</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Rockpi 4B</a></td><td align="left">2023-08-04&nbsp;17:25:04</td><td align=right>legacy</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Rockpi 4B</a></td><td align="left">2023-08-04&nbsp;17:25:04</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">NanoPi M4</a></td><td align="left">2023-08-04&nbsp;17:24:06</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Le potato</a></td><td align="left">2023-08-04&nbsp;17:23:09</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="https://paste.armbian.com/ocumowemok">Orange Pi R1</a></td><td align="left">2023-08-04&nbsp;17:30:23</td><td align=right>current</td><td align=right>6.1.43-sunxi</td><td align=right>90</td><td align=right>2767</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Banana Pi Pro</a></td><td align="left">2023-08-04&nbsp;17:36:01</td><td align=right>legacy</td><td align=right>5.15.124-sunxi</td><td align=right>556</td><td align=right>1032</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Banana Pi Pro</a></td><td align="left">2023-08-04&nbsp;17:49:37</td><td align=right>current</td><td align=right>6.1.43-sunxi</td><td align=right>378</td><td align=right>1022</td></tr><tr><td align="left"><a href="n/a">ZeroPi</a></td><td align="left">2023-08-04&nbsp;17:23:54</td><td align=right>legacy</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">ZeroPi</a></td><td align="left">2023-08-04&nbsp;17:23:55</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Cubietruck</a></td><td align="left">2023-08-04&nbsp;17:37:00</td><td align=right>legacy</td><td align=right>5.15.124-sunxi</td><td align=right>341</td><td align=right>1023</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Cubietruck</a></td><td align="left">2023-08-04&nbsp;17:51:41</td><td align=right>current</td><td align=right>6.1.43-sunxi</td><td align=right>410</td><td align=right>1015</td></tr><tr><td align="left"><a href="n/a">NanoPi R4S</a></td><td align="left">2023-08-04&nbsp;17:23:15</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Odroid N2</a></td><td align="left">2023-08-04&nbsp;17:24:38</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Clearfog Pro</a></td><td align="left">2023-08-04&nbsp;17:23:14</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">NanoPi Neo 3</a></td><td align="left">2023-08-04&nbsp;17:23:09</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero</a></td><td align="left">2023-08-04&nbsp;17:31:33</td><td align=right>legacy</td><td align=right>5.15.124-sunxi</td><td align=right>91</td><td align=right>2405</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero</a></td><td align="left">2023-08-04&nbsp;17:40:34</td><td align=right>current</td><td align=right>6.1.43-sunxi</td><td align=right>90</td><td align=right>2519</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero Plus</a></td><td align="left">2023-08-04&nbsp;17:32:08</td><td align=right>legacy</td><td align=right>5.15.124-sunxi64</td><td align=right>829</td><td align=right>2561</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero Plus</a></td><td align="left">2023-08-04&nbsp;17:41:24</td><td align=right>current</td><td align=right>6.1.43-sunxi64</td><td align=right>570</td><td align=right>2602</td></tr><tr><td align="left"><a href="n/a">Tinker Board 2</a></td><td align="left">2023-08-04&nbsp;17:23:26</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">A64 OLinuXino</a></td><td align="left">2023-08-04&nbsp;17:23:09</td><td align=right>legacy</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">A64 OLinuXino</a></td><td align="left">2023-08-04&nbsp;17:23:10</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Khadas VIM2</a></td><td align="left">2023-08-04&nbsp;17:23:56</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Khadas VIM1</a></td><td align="left">2023-08-04&nbsp;17:23:47</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Orange Pi R1 Plus LTS</a></td><td align="left">2023-08-04&nbsp;17:23:00</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="https://paste.armbian.com/foyizimosa">Rock 5B</a></td><td align="left">2023-08-04&nbsp;17:27:15</td><td align=right>legacy</td><td align=right>5.10.160-rk35xx</td><td align=right>2250</td><td align=right>15459</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero Plus 2</a></td><td align="left">2023-08-04&nbsp;17:34:10</td><td align=right>legacy</td><td align=right>5.15.124-sunxi</td><td align=right>41</td><td align=right>2574</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero Plus 2</a></td><td align="left">2023-08-04&nbsp;17:45:10</td><td align=right>current</td><td align=right>6.1.43-sunxi</td><td align=right>38</td><td align=right>2677</td></tr></table>
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
