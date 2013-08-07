#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 The Carbon Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 1920

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
 
# Common Sony Resources
$(call inherit-product, device/sony/common/resources-xxhdpi.mk)

# Inherit from pollux_windy device
$(call inherit-product, device/sony/pollux_windy/pollux_windy.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := carbon_pollux_windy
PRODUCT_DEVICE := pollux_windy
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := SGP311
