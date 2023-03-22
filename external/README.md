# Importing external packages

As we don't want to include 3rd party repository components within official release and also to not steal the traffic, we can sync packages from 3rd party repository into our own. 

In order to add a package into auto-sync, you need to add it to the configuratiin file

    external/projects.csv

- Project name = name (chrome)
- URL = repository URL (http://dl.google.com/linux/chrome/deb/ stable)
- Source component = main
- Release = all|jammy|lunar
- Target location	= Armbian repository component (utils, desktop)
- Method = aptly (for debian based repo), gh (download package from GitHub releases)
- Search parameter = zfs (to download only packages that starts with zfs)
- Arhitectures = limit mirror to arhitecture