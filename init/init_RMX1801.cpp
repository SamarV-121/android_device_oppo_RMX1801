#include <fcntl.h>
#include <stdlib.h>
#include <sys/sysinfo.h>
#include <android-base/file.h>
#include <android-base/properties.h>
#include <android-base/strings.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "vendor_init.h"
#include "property_service.h"

using android::base::GetProperty;
using android::base::ReadFileToString;
using android::init::property_set;

void property_override(char const prop[], char const value[])
{
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

void device_check()
{
    std::string product;

    product = GetProperty("ro.product.device", "");

    /* RMX1801 */
    if (product == "RMX1801") {
        property_set("ro.build.fingerprint", "OPPO/RMX1801/RMX1801:8.1.0/OPM1.171019.011/1551257347:user/release-keys");
    }
    /* RMX1803 */
    if (product == "RMX1803") {
        property_set("ro.build.fingerprint", "OPPO/RMX1803/RMX1803:8.1.0/OPM1.171019.011/1551257347:user/release-keys");
    }
    /* RMX1807 */
    if (product == "RMX1807") {
        property_set("ro.build.fingerprint", "OPPO/RMX1807/RMX1807:8.1.0/OPM1.171019.011/1551257347:user/release-keys");
    }
}

void vendor_load_properties()
{
    device_check();
}
