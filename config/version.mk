# Copyright (C) 2016-2017 AOSiP
# Copyright (C) 2022 DerpFest
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

# Versioning System
ifeq ($(LESSAOSP_VERSION_APPEND_TIME_OF_DAY),true)
    BUILD_DATE := $(shell date +%Y%m%d-%H%M)
else
    BUILD_DATE := $(shell date +%Y%m%d)
endif

TARGET_PRODUCT_SHORT := $(subst lessaosp_,,$(LESSAOSP_BUILDTYPE))

LESSAOSP_BUILDTYPE ?= Community
LESSAOSP_STATUS := Stable
LESSAOSP_BUILD_VERSION := $(PLATFORM_VERSION)
LESSAOSP_VERSION := $(LESSAOSP_BUILD_VERSION)-$(LESSAOSP_BUILDTYPE)-$(LESSAOSP_STATUS)-$(LESSAOSP_BUILD)-$(BUILD_DATE)
ROM_FINGERPRINT := LessAOSP/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date +%H%M)

ifeq ($(LESSAOSP_BUILDTYPE), CI)
    BUILD_KEYS := release-keys
endif

PRODUCT_SYSTEM_PROPERTIES += \
  ro.lessaosp.build.version=$(LESSAOSP_BUILD_VERSION) \
  ro.lessaosp.build.date=$(BUILD_DATE) \
  ro.lessaosp.buildtype=$(LESSAOSP_BUILDTYPE) \
  ro.lessaosp.fingerprint=$(ROM_FINGERPRINT) \
  ro.lessaosp.version=$(LESSAOSP_VERSION) \
  ro.modversion=$(LESSAOSP_VERSION)

ifneq ($(OVERRIDE_OTA_CHANNEL),)
PRODUCT_SYSTEM_PROPERTIES += \
    lessaosp.updater.uri=$(OVERRIDE_OTA_CHANNEL)
endif

# Signing
ifneq (eng,$(TARGET_BUILD_VARIANT))
ifneq (,$(wildcard vendor/lessaosp/signing/keys/releasekey.pk8))
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/lessaosp/signing/keys/releasekey
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.oem_unlock_supported=1
endif
ifneq (,$(wildcard vendor/lessaosp/signing/keys/otakey.x509.pem))
PRODUCT_OTA_PUBLIC_KEYS := vendor/lessaosp/signing/keys/otakey.x509.pem
endif
endif
