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
<table width="100%"><tr><td align="left"><a href="n/a">Tinker Board</a></td><td align="left">2023-08-04&nbsp;17:59:06</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Espressobin</a></td><td align="left">2023-08-04&nbsp;18:14:02</td><td align=right>current</td><td align=right>5.15.124-mvebu64</td><td align=right>854</td><td align=right>1105</td></tr><tr><td align="left"><a href="https://paste.armbian.com/ipenabasum">Pine H64</a></td><td align="left">2023-08-04&nbsp;18:06:48</td><td align=right>current</td><td align=right>6.1.43-sunxi64</td><td align=right>862</td><td align=right>3788</td></tr><tr><td align="left"><a href="n/a">UEFI x86</a></td><td align="left">2023-08-04&nbsp;18:02:57</td><td align=right>legacy</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">UEFI x86</a></td><td align="left">2023-08-04&nbsp;18:02:58</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Banana Pi M5</a></td><td align="left">2023-08-04&nbsp;17:58:55</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Rockpi E</a></td><td align="left">2023-08-04&nbsp;17:59:07</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Odroid C2</a></td><td align="left">2023-08-04&nbsp;17:58:50</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Orange Pi 4 LTS</a></td><td align="left">2023-08-04&nbsp;17:58:39</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="https://paste.armbian.com/cebesadelu">NanoPi R6S</a></td><td align="left">2023-08-04&nbsp;18:03:09</td><td align=right>legacy</td><td align=right>5.10.160-rk35xx</td><td align=right>2240</td><td align=right>16061</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Cubieboard 1</a></td><td align="left">2023-08-04&nbsp;18:16:05</td><td align=right>legacy</td><td align=right>5.15.124-sunxi</td><td align=right>78</td><td align=right>574</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Cubieboard 1</a></td><td align="left">2023-08-04&nbsp;18:33:48</td><td align=right>current</td><td align=right>6.1.43-sunxi</td><td align=right>79</td><td align=right>551</td></tr><tr><td align="left"><a href="https://paste.armbian.com/izesaxitub">Orange Pi 3 LTS</a></td><td align="left">2023-08-04&nbsp;18:04:44</td><td align=right>current</td><td align=right>6.1.43-sunxi64</td><td align=right>790</td><td align=right>4007</td></tr><tr><td align="left"><a href="n/a">Odroid C4</a></td><td align="left">2023-08-04&nbsp;17:58:49</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Rockpi 4B</a></td><td align="left">2023-08-04&nbsp;18:00:42</td><td align=right>legacy</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Rockpi 4B</a></td><td align="left">2023-08-04&nbsp;18:00:43</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">NanoPi M4</a></td><td align="left">2023-08-04&nbsp;17:58:50</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Le potato</a></td><td align="left">2023-08-04&nbsp;17:58:49</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="https://paste.armbian.com/anugugeqid">Orange Pi R1</a></td><td align="left">2023-08-04&nbsp;18:06:59</td><td align=right>current</td><td align=right>6.1.43-sunxi</td><td align=right>90</td><td align=right>2761</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Banana Pi Pro</a></td><td align="left">2023-08-04&nbsp;18:12:44</td><td align=right>legacy</td><td align=right>5.15.124-sunxi</td><td align=right>369</td><td align=right>1039</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Banana Pi Pro</a></td><td align="left">2023-08-04&nbsp;18:26:18</td><td align=right>current</td><td align=right>6.1.43-sunxi</td><td align=right>378</td><td align=right>1021</td></tr><tr><td align="left"><a href="n/a">ZeroPi</a></td><td align="left">2023-08-04&nbsp;17:59:29</td><td align=right>legacy</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">ZeroPi</a></td><td align="left">2023-08-04&nbsp;17:59:30</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Cubietruck</a></td><td align="left">2023-08-04&nbsp;18:14:46</td><td align=right>legacy</td><td align=right>5.15.124-sunxi</td><td align=right>312</td><td align=right>1031</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Cubietruck</a></td><td align="left">2023-08-04&nbsp;18:29:22</td><td align=right>current</td><td align=right>6.1.43-sunxi</td><td align=right>411</td><td align=right>1013</td></tr><tr><td align="left"><a href="n/a">NanoPi R4S</a></td><td align="left">2023-08-04&nbsp;17:58:38</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Odroid N2</a></td><td align="left">2023-08-04&nbsp;17:58:50</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Clearfog Pro</a></td><td align="left">2023-08-04&nbsp;17:58:52</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">NanoPi Neo 3</a></td><td align="left">2023-08-04&nbsp;17:58:49</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero</a></td><td align="left">2023-08-04&nbsp;18:08:31</td><td align=right>legacy</td><td align=right>5.15.124-sunxi</td><td align=right>90</td><td align=right>2536</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero</a></td><td align="left">2023-08-04&nbsp;18:17:41</td><td align=right>current</td><td align=right>6.1.43-sunxi</td><td align=right>90</td><td align=right>2481</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero Plus</a></td><td align="left">2023-08-04&nbsp;18:08:22</td><td align=right>legacy</td><td align=right>5.15.124-sunxi64</td><td align=right>833</td><td align=right>2544</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero Plus</a></td><td align="left">2023-08-04&nbsp;18:17:18</td><td align=right>current</td><td align=right>6.1.43-sunxi64</td><td align=right>830</td><td align=right>2603</td></tr><tr><td align="left"><a href="n/a">Tinker Board 2</a></td><td align="left">2023-08-04&nbsp;17:59:12</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">A64 OLinuXino</a></td><td align="left">2023-08-04&nbsp;17:58:49</td><td align=right>legacy</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">A64 OLinuXino</a></td><td align="left">2023-08-04&nbsp;17:58:50</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Khadas VIM2</a></td><td align="left">2023-08-04&nbsp;17:58:36</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Khadas VIM1</a></td><td align="left">2023-08-04&nbsp;17:58:45</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="n/a">Orange Pi R1 Plus LTS</a></td><td align="left">2023-08-04&nbsp;17:58:39</td><td align=right>current</td><td align=right>n/a</td><td align=right>n/a</td><td align=right>n/a</td></tr><tr><td align="left"><a href="https://paste.armbian.com/ifiqotawoz">Rock 5B</a></td><td align="left">2023-08-04&nbsp;18:03:18</td><td align=right>legacy</td><td align=right>5.10.160-rk35xx</td><td align=right>2441</td><td align=right>15503</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero Plus 2</a></td><td align="left">2023-08-04&nbsp;18:10:32</td><td align=right>legacy</td><td align=right>5.15.124-sunxi</td><td align=right>42</td><td align=right>2563</td></tr><tr><td align="left"><a href="https://paste.armbian.com/">Orange Pi Zero Plus 2</a></td><td align="left">2023-08-04&nbsp;18:21:23</td><td align=right>current</td><td align=right>6.1.43-sunxi</td><td align=right>40</td><td align=right>2661</td></tr></table>
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
