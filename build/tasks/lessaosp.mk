LESSAOSP_TARGET_PACKAGE := $(PRODUCT_OUT)/LessAOSP-$(LESSAOSP_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

.PHONY: lessaosp bacon
lessaosp: otapackage
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(LESSAOSP_TARGET_PACKAGE)
	$(hide) $(SHA256) $(LESSAOSP_TARGET_PACKAGE) | cut -d ' ' -f1 > $(LESSAOSP_TARGET_PACKAGE).sha256sum
	$(hide) ./vendor/lessaosp/tools/generate_json_build_info.sh $(LESSAOSP_TARGET_PACKAGE)
	$(hide) rm -rf $(call intermediates-dir-for,PACKAGING,target_files)
	@echo -e ""
	@echo -e "${cya}Building ${bldcya}LessAOSP ${txtrst}";
	@echo -e ""
	@echo -e ${CL_CYN}".................................................................."
	@echo -e ${CL_CYN}"...........................|LessAOSP|............................."
	@echo -e ${CL_CYN}".................|Thank you for using LessAOSP|..................."
	@echo -e ${CL_RST}".................................................................."
	@echo -e ""
	@echo -e "zip: "$(LESSAOSP_TARGET_PACKAGE)
	@echo -e "sha256: `cat $(LESSAOSP_TARGET_PACKAGE).sha256sum | cut -d ' ' -f 1`"
	@echo -e "size:`ls -lah $(LESSAOSP_TARGET_PACKAGE) | cut -d ' ' -f 5`"
	@echo -e ""

bacon: lessaosp
