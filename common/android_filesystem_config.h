#include <private/android_filesystem_config.h>

/*
 *  File permissions for NosferatuOS
 */

static const struct fs_path_config android_device_files[] = {
    // { Mode (e.g. 777, 775), UID, GID, capabilities, prefix }
    { 00644, AID_ROOT, AID_ROOT, 0, "system/etc/nosferatu.conf"},
}

static const struct fs_path_config android_device_dirs[] = {
    { 00755, AID_ROOT, AID_ROOT, 0, "system/etc/nosferatu" },
}