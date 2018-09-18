#
# system.prop for cedric
#

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libargs=-d /dev/smd

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
    persist.qfp=false
