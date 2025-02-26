# Copyright (C) 2019-2020 The LineageOS Project
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

$(call inherit-product, build/target/product/gsi_release.mk)
$(call inherit-product, device/google/atv/products/atv_base.mk)
$(call inherit-product, vendor/lessaosp/config/common_full_tv.mk)

# Allow building otatools
TARGET_FORCE_OTA_PACKAGE := true
