# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2021 DerpFest
# Copyright (C) 2024 LessAOSP
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

include vendor/lessaosp/build/target/product/lessaosp_generic_car_target.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/sdk_x86_64.mk)

PRODUCT_NAME := lessaosp_sdk_car_x86_64
