# OS Info
PRODUCT_BRAND := Nosferatu
PRODUCT_MANUFACTURER := NosferatuProject
PRODUCT_MODEL := Nosferatu OS v1.0

# Optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=true \
    ro.config.max_starting_bg=2 \
    config.disable_rtt=true \
    config.disable_bluetooth=true \
    debug.sf.nobootanimation=1 \
    ro.config.hw_quickboot=true

# --- Rimozione App Superflue (Debloat iniziale) ---
PRODUCT_PACKAGES += \
    ExactCalculator \
    Calendar \
    Email \
    Gallery2 \
    Music \
    QuickSearchBox