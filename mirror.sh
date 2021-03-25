#!/bin/sh

set -ex

version="7"
src=https://dl.fedoraproject.org/pub/epel
dest=/downloads

for arch in "x86_64"
do
	arch_src="$src/${version}/$arch"
	arch_dest="$dest/${version}"
	mkdir -p "$arch_dest"
	wget \
		--mirror -nH --no-check-certificate --cut-dirs=1 --convert-links --adjust-extension --page-requisites --no-parent \
		"$arch_src" -P "$arch_dest"
done


