rm -rf KernelSU-Next
curl -LSs "https://raw.githubusercontent.com/SenseiiX/KernelSU-Next/next-susfs_v1.5.5-v1.5.7/kernel/setup.sh" | bash -s next-susfs_v1.5.5-v1.5.7
echo "Adding more manager support..."
echo "Done (KSU, MKSU, RKSU, Fork by backslashxx, SukiSU and WKSU)"
cp -rf "0001-KSUN-BPF.patch" KernelSU-Next && cd ./KernelSU-Next && patch -p1 -f < "0001-KSUN-BPF.patch" && cd ..
