sudo zypper remove --clean-deps `zypper packages --unneeded | awk '{print $5}'`
