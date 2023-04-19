<p align="center">
  <a href="#build-framework">
   <img src="https://raw.githubusercontent.com/armbian/build/master/.github/armbian-logo.png" alt="Armbian logo" width="144">
  </a><br>
  <strong>Armbian OS</strong><br>
<br>
<a href=https://github.com/armbian/os/actions/workflows/repository-update.yml><img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/armbian/os/repository-update.yml?logo=githubactions&label=Repository%20update&style=for-the-badge&branch=main"></a>
<a href=https://github.com/armbian/os/actions/workflows/smoke-tests.yml><img alt="Smoke test success ratio" src="https://img.shields.io/badge/dynamic/json?logo=speedtest&label=Smoke%20tests%20success&query=SMOKE&color=44cc11&cacheSeconds=600&style=for-the-badge&url=https%3A%2F%2Fgithub.com%2Farmbian%2Fscripts%2Freleases%2Fdownload%2Fstatus%2Frunners_capacity.json"></a>
<br><br>
Build Clusters Health<br>
<a href="#"><img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/armbian-alpha/os/build.yml?label=01&style=flat-square&branch=main"></a>
<a href="#"><img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/armbian-beta/os/build.yml?label=02&style=flat-square&branch=main"></a>
<a href="#"><img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/armbian-gama/os/build.yml?label=03&style=flat-square&branch=main"></a>
<a href="#"><img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/armbian-delta/os/build.yml?label=04&style=flat-square&branch=main"></a>
<a href="#"><img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/armbiankappa/os/build.yml?label=05&style=flat-square&branch=main"></a>
</p>


# What does this project do?

- Keeps build framework [packages artifacts](https://github.com/orgs/armbian/packages) cache up to date
- Keeps stable [apt.armbian.com](https://apt.armbian.com) and nightly [beta.armbian.com](https://beta.armbian.com) packages repository up to date
- Builds [nightly](https://github.com/armbian/os/releases) and [stable images](https://www.armbian.com/download/) and uploads them to Armbian CDN
- Keep synchronizing the  selection of [3rd party](external) applications with Armbian repositories
- Tests install of all packages added onto stable and testing Debian and Ubuntu releases

# When is this happening?

- Artifacts cache and images update every eight hours, starting at 0:00 AM UTC
- Repository update is updated once per day, at 3:00 AM UTC
- Manually, when an Armbian member executes a build action

# Need to include stable or nightly images for your board?

Armbian build system includes many build configurations, but we are producing only some possible build options for all images. Only the most popular ones get everything, while others get the bare minimum, some nothing. The primary reason for the lack of images is a need for more human resources - [maintainers](https://docs.armbian.com/Board_Maintainers_Procedures_and_Guidelines/) - who can help keep them operational. 

To enable a board that exists in [build configurations](https://github.com/armbian/build/tree/main/config/boards), edit [this file](targets/default.conf) and send a pull request. The configuration file is self-explanatory.

# Import 3rd party package into Armbian

We don't want to include 3rd party and Personal Package Archives (PPAs) repository components within the official release. However, adding a more recent or different version may occur for security and feature purposes. 

Automation at Pull Request will:

- Download packages from repository directly or from GitHub releases
- Place package into specific release or component, or everywhere
- Execute **test install on all distributions** where it can be installed

To add a package into auto-sync, you need to add GPG formatted repository key (when you mirror from repository) to the `external/keys` generated configuration file in folder `external`

    URL="http://dl.google.com/linux/chrome/deb/ stable"
    KEY="main"
    RELEASE=all
    TARGET=desktop
    METHOD=aptly
    INSTALL=google-chrome-stable
    GLOB="Name (% google-chrome-stable), \$Version (>= 111.0)"
    ARCH=amd64
    REPOSITORY=BS

- *URL* = repository URL (http://dl.google.com/linux/chrome/deb/ stable)
- *KEY* = Source component = main
- *RELEASE* = all|jammy|lunar|bullseye|sid
- *TARGET* = Armbian repository component (utils, desktop)
- *METHOD* = aptly (for Debian-based repo), gh (download package from GitHub releases)
- *GLOB* = `Name (% http-*)` packages that starts with http. [Other variants](https://www.aptly.info/doc/feature/query/)
- *ARCH* = limit mirroring to architecture
- *REPOSITORY* = B = beta.armbian.com, S = apt.armbian.com

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
