#!/bin/bash
#
# list generator 
#
boards=($(find build/config/boards/ -mindepth 1 -maxdepth 1 -type f -iregex '.*\.\(tvb\|csc\|wip\|conf\)$' 2> /dev/null | sort | cut -d"/" -f4 | cut -d"." -f1))
releases=("lunar" "sid")
branches=("legacy" "edge")
desktops=("minimal" "cli" "desktop")
for board in ${boards[@]}
    do
    for release in ${releases[@]}
        do
        for branch in ${branches[@]}
            do
            for desktop in ${desktops[@]}
                do
                    if [[ $desktop == desktop ]]; then
                        variant=" xfce     config_base    3dsupport browsers chat desktop_tools editors email internet multimedia office programming remote_desktop"
                    elif [[ $desktop == minimal ]]; then
                        variant=""
                        desktop="minimal"
                    else
                        variant=""
                fi
            KERNEL=$(cat build/config/boards/$board.* | grep KERNEL_TARGET || true)
            DESKTOP=$(cat build/config/boards/$board.* | grep HAS_VIDEO_OUTPUT || true)
            [[ -z "$(echo $KERNEL | grep $branch)" ]] && continue
            [[ -n "$(echo $DESKTOP | grep no)" && $desktop == desktop ]] && continue
            [[ $branch == legacy && $board != orangepi5 && $board != rock-5b ]] && continue
            [[ $board == rpi4b && $release == sid ]] && continue
            [[ $board == uefi-riscv64 && $release == sid ]] && continue
            [[ $board == uefi-riscv64 && $desktop == desktop ]] && continue
            printf "%-25s %-8s %-6s %-8s %-8s %-30s\n" "$board" "$branch" "$release" "$desktop" "nightly  yes" "$variant"
            done
        done
    done
done
