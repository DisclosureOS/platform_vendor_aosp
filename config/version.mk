# Copyright (C) 2017 AospExtended ROM
# Copyright (C) 2019 DisclosureOS
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

DISCLOSURE_VERSION = v0.02

ifndef DISCLOSURE_BUILD_TYPE
    DISCLOSURE_BUILD_TYPE := UNOFFICIAL
endif

ifeq ($(DISCLOSURE_BUILD_TYPE), OFFICIAL)

#should be ota

endif

TARGET_PRODUCT_SHORT := $(subst dos_,,$(CUSTOM_BUILD))

DISCLOSURE_DATE_YEAR := $(shell date -u +%Y)
DISCLOSURE_DATE_MONTH := $(shell date -u +%m)
DISCLOSURE_DATE_DAY := $(shell date -u +%d)
DISCLOSURE_DATE_HOUR := $(shell date -u +%H)
DISCLOSURE_DATE_MINUTE := $(shell date -u +%M)
DISCLOSURE_BUILD_DATE_UTC := $(shell date -d '$(DISCLOSURE_DATE_YEAR)-$(DISCLOSURE_DATE_MONTH)-$(DISCLOSURE_DATE_DAY) $(DISCLOSURE_DATE_HOUR):$(DISCLOSURE_DATE_MINUTE) UTC' +%s)
DISCLOSURE_BUILD_DATE := $(DISCLOSURE_DATE_YEAR)$(DISCLOSURE_DATE_MONTH)$(DISCLOSURE_DATE_DAY)-$(DISCLOSURE_DATE_HOUR)$(DISCLOSURE_DATE_MINUTE)
DISCLOSURE_MOD_VERSION := DisclosureOS-$(DISCLOSURE_VERSION)-$(DISCLOSURE_BUILD_DATE)-$(DISCLOSURE_BUILD_TYPE)
DISCLOSURE_FINGERPRINT := DisclosureOS/$(DISCLOSURE_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(DISCLOSURE_BUILD_DATE)


PRODUCT_GENERIC_PROPERTIES += \
  ro.disclosure.version=$(DISCLOSURE_VERSION) \
  ro.disclosure.releasetype=$(DISCLOSURE_BUILD_TYPE) \
  ro.modversion=$(DISCLOSURE_MOD_VERSION)

DISCLOSURE_DISPLAY_VERSION := DisclosureOS-$(DISCLOSURE_VERSION)-$(DISCLOSURE_BUILD_TYPE)

PRODUCT_GENERIC_PROPERTIES += \
  ro.disclosure.display.version=$(DISCLOSURE_DISPLAY_VERSION) \
  ro.disclosure.fingerprint=$(DISCLOSURE_FINGERPRINT) \
  ro.disclosure.build_date_utc=$(DISCLOSURE_BUILD_DATE_UTC)
