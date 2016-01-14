# Create a release notes template file.

cat > ${IMAGE##$(pwd)/}-release-notes.md << EOF
Release notes for ${IMAGE##$(pwd)/}
==============================================

Changes from previous version
-----------------------------


Known issues
------------


Built using
-----------
* $(lsb_release -ds)
* $(dpkg-query --show brickstrap | sed 's/\t/ /')
* $(dpkg-query --show libguestfs-tools | sed 's/\t/ /')
* $(dpkg-query --show multistrap | sed 's/\t/ /')
* $(dpkg-query --show qemu-user-static | sed 's/\t/ /')

Included Packages
-----------------

\`\`\`
$(br_chroot dpkg -l)
\`\`\`
EOF
