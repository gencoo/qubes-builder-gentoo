#!/bin/bash
/usr/bin/qubes-prefs default-template fedora-34
qubesctl saltutil.clear_cache
qubesctl saltutil.sync_all
qubesctl top.enable qvm.sys-net
qubesctl top.enable qvm.sys-firewall
qubesctl top.enable qvm.personal
qubesctl top.enable qvm.work
qubesctl --all state.highstate
/usr/bin/qvm-prefs sys-firewall  netvm sys-net
/usr/bin/qubes-prefs default-netvm sys-firewall
/usr/bin/qubes-prefs updatevm sys-firewall
/usr/bin/qubes-prefs clockvm sys-net
