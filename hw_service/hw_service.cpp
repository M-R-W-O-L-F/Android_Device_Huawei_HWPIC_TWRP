/*
#
#
#   Created by MR.WOLF
#
#
*/

#include <iostream>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>
 
std::string UFSPath("/dev/block/platform/ff3b0000.ufs");
std::string TargetPath("/dev/block/bootdevice");
 
bool IsUFS() {
    struct stat st;
    lstat(UFSPath.c_str(), &st);
 
    if (S_ISDIR(st.st_mode)) {
        return true;
    }
 
    return false;
}
 
int main()
{
    if(IsUFS()) {
        symlink(UFSPath.c_str(), TargetPath.c_str());
        printf("hw_service: ufs storage detected");
    } else {
        symlink("/dev/block/platform/hi_mci.0", TargetPath.c_str());
        printf("hw_service: emmc storage detected");
    }
    return 0;
}
