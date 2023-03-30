<p align="center">
  <a href="#build-framework">
   <img src="https://raw.githubusercontent.com/armbian/build/master/.github/armbian-logo.png" alt="Armbian logo" width="144">
  </a><br>
  <strong>Armbian OS</strong><br>
<br>
<a href=https://github.com/armbian/os/actions/workflows/build-images.yml><img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/armbian/os/build-images.yml?logo=githubactions&label=Build%20Nighlty%20Images&style=for-the-badge&branch=main"></a> <a href=https://github.com/armbian/os/actions/workflows/repository-update.yml><img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/armbian/os/repository-update.yml?logo=githubactions&label=Repository%20update&style=for-the-badge&branch=main"></a>
</p>


# What this project does?

- Keeps [build framework](https://github.com/armbian/build) packages artifacts cache up to date
- Builds [nighly](https://github.com/armbian/os/releases) and [stable images](https://www.armbian.com/download/) and upload them to Armbian CDN
- Synhronise selection of [3rd party](external) applications with Armbian repositories ([apt.armbian.com](https://apt.armbian.com) / [beta.armbian.com](https://beta.armbian.com))
- Tests install of all packages that are added on stable and testing Debian and Ubuntu releases

# When this is happening?

- artifacts cache and images are updating at least once per day, at 0:00 AM UTC
- repository update is updating once per day, at 3:00 AM UTC
- manually, when Armbian member executes build action

# Getting started

- [build configurations](targets) (Which images to build - this system is going to be replaced soon)
- [default configs](userpatches) (Default OS settings)

## Importing external packages

- [Documentation](external)

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
