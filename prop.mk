#
# system.prop for msm8953-common
#

# Set log level for build types
ifeq (eng,$(TARGET_BUILD_VARIANT))
VENDOR_LOG_LEVEL=I
else
VENDOR_LOG_LEVEL=S
endif

# ART
PRODUCT_PROPERTY_OVERRIDES += \
dalvik.vm.dex2oat-filter=speed \
dalvik.vm.image-dex2oat-filter=speed

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
af.fast_track_multiplier=2 \
audio.deep_buffer.media=true \
audio.offload.disable=true \
audio.offload.min.duration.secs=30 \
audio.offload.video=true \
ro.config.media_vol_steps=25 \
ro.config.vc_call_vol_steps=7 \
persist.vendor.btstack.enable.splita2dp=false \
ro.vendor.audio.sdk.ssr=false \
vendor.audio.flac.sw.decoder.24bit=true \
vendor.audio.offload.buffer.size.kb=64 \
vendor.audio.offload.gapless.enabled=true \
vendor.audio.offload.multiaac.enable=true \
vendor.audio.offload.multiple.enabled=false \
vendor.audio.offload.track.enable=true \
vendor.audio.parser.ip.buffer.size=0 \
vendor.audio.playback.mch.downsample=true \
vendor.audio.pp.asphere.enabled=false \
vendor.audio.safx.pbe.enabled=true \
vendor.audio.tunnel.encode=false \
vendor.audio.use.sw.alac.decoder=true \
vendor.audio.use.sw.ape.decoder=true \
vendor.audio_hal.period_size=192 \
vendor.voice.conc.fallbackpath=deep-buffer \
vendor.voice.path.for.pcm.voip=true \
vendor.voice.playback.conc.disabled=true \
vendor.voice.record.conc.disabled=false \
vendor.voice.voip.conc.disabled=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
bluetooth.hfp.client=1 \
qcom.bluetooth.soc=smd \
ro.bluetooth.hfp.ver=1.7 \
ro.qualcomm.bt.hci_transport=smd

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
camera.display.lmax=1280x720 \
camera.display.umax=1920x1080 \
camera.hal1.packagelist=com.skype.raider,com.google.android.talk \
camera.lowpower.record.enable=1 \
media.camera.ts.monotonic=1 \
persist.camera.gyro.disable=0 \
persist.camera.isp.clock.optmz=0 \
persist.camera.stats.test=5 \
persist.vendor.qti.telephony.vt_cam_interface=1 \
vidc.enc.dcvs.extra-buff-count=2

# Cne/Dpm
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.cne.feature=1 \
persist.vendor.dpm.feature=1 \
persist.vendor.dpm.loglevel=0

# Coresight
PRODUCT_PROPERTY_OVERRIDES += \
persist.debug.coresight.config=stm-events

# Display
PRODUCT_PROPERTY_OVERRIDES += \
debug.egl.hw=0 \
debug.enable.sglscale=1 \
debug.gralloc.enable_fb_ubwc=1 \
debug.mdpcomp.logs=0 \
debug.sf.enable_hwc_vds=1 \
debug.sf.hw=0 \
debug.sf.latch_unsignaled=1 \
debug.cpurend.vsync=false \
debug.sf.recomputecrop=0 \
dev.pm.dyn_samplingrate=1 \
persist.debug.wfd.enable=1 \
persist.demo.hdmirotationlock=false \
persist.hwc.enable_vds=1 \
persist.hwc.mdpcomp.enable=true \
persist.sys.wfd.nohdcp=1 \
persist.sys.wfd.virtual=0 \
ro.opengles.version=196610 \
ro.qualcomm.cabl=0 \
ro.sf.lcd_density=480 \
ro.vendor.display.cabl=2 \
sdm.debug.disable_skip_validate=1 \
debug.sdm.support_writeback=0 \
vendor.display.disable_rotator_downscale=1 \
vendor.display.disable_skip_validate=1 \
vendor.display.enable_default_color_mode=1 \
vendor.gralloc.enable_fb_ubwc=1

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
drm.service.enabled=true

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
persist.qfp=false

# Fm
PRODUCT_PROPERTY_OVERRIDES += \
ro.fm.transmitter=false

# Frp
PRODUCT_PROPERTY_OVERRIDES += \
ro.frp.pst=/dev/block/bootdevice/by-name/config

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
debug.hwui.renderer=skiagl

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
persist.gps.qc_nlp_in_use=1 \
persist.loc.nlp_name=com.qualcomm.location \
ro.gps.agps_provider=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
av.debug.disable.pers.cache=1 \
media.aac_51_output_enabled=true \
media.msm8956hw=0 \
media.stagefright.audio.sink=280 \
vendor.mm.enable.qcom_parser=1048575 \
mm.enable.smoothstreaming=true \
media.stagefright.thumbnail.prefer_hw_codecs=true \
mmp.enable.3g2=true \
vendor.audio.hw.aac.encoder=true \
vendor.vidc.dec.downscalar_height=1088 \
vendor.vidc.dec.downscalar_width=1920 \
vendor.vidc.disable.split.mode=1 \
vendor.vidc.enc.disable.pq=true \
vendor.vidc.enc.disable_bframes=1 \
vendor.video.disable.ubwc=1

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.qti.sys.fw.bservice_enable=true

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
ro.sys.fw.dex2oat_thread_count=8 \
ro.vendor.extension_library=libqti-perfd-client.so

# Netmgrd
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.use_data_netmgrd=true \
persist.data.netmgrd.qos.enable=true \
persist.vendor.data.mode=concurrent

# Nitz
PRODUCT_PROPERTY_OVERRIDES += \
persist.rild.nitz_plmn="" \
persist.rild.nitz_long_ons_0="" \
persist.rild.nitz_long_ons_1="" \
persist.rild.nitz_long_ons_2="" \
persist.rild.nitz_long_ons_3="" \
persist.rild.nitz_short_ons_0="" \
persist.rild.nitz_short_ons_1="" \
persist.rild.nitz_short_ons_2="" \
persist.rild.nitz_short_ons_3=""

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
DEVICE_PROVISIONED=1 \
persist.data.qmi.adb_logmask=0 \
persist.dbg.volte_avail_ovr=1 \
persist.dbg.vt_avail_ovr=1 \
persist.dbg.wfc_avail_ovr=1 \
persist.vendor.radio.apm_sim_not_pwdn=1 \
persist.radio.multisim.config=dsds \
persist.vendor.radio.custom_ecc=1 \
persist.vendor.radio.rat_on=combine \
persist.vendor.radio.sib16_support=1 \
persist.vendor.radio.add_power_save=1 \
persist.vendor.data.iwlan.enable=true \
ril.subscription.types=NV,RUIM \
rild.libargs=-d/dev/smd0 \
rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
ro.telephony.call_ring.multiple=false \
ro.telephony.default_network=22,20 \
service.qti.ims.enabled=1

# Suppress unnecessary logs on user builds
PRODUCT_PROPERTY_OVERRIDES += \
    persist.log.tag.AT=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.AdnRecord=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.AdnRecordCache=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.AdnRecordLoader=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.AirplaneHandler=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.AutoRegSmsFwk=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.C2K_AT=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.C2K_ATConfig=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.C2K_RIL-DATA=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.C2K_RILC=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.CapaSwitch=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.CarrierExpressServiceImpl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.CarrierExpressServiceImplExt=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.CdmaMoSms=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.CdmaMtSms=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ConSmsFwkExt=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.CountryDetector=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DC-C-1=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DC-C-2=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DCT-C-0=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DCT-C-1=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DCT-I-0=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DCT-I-1=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DSSelector=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DSSelectorOP01=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DSSelectorOP02=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DSSelectorOP09=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DSSelectorOP18=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DSSelectorOm=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DSSelectorUtil=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DataDispatcher=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DataOnlySmsFwk=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DcFcMgr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.DupSmsFilterExt=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ExternalSimMgr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.GsmCallTkrHlpr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.GsmCdmaConn=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.GsmCdmaPhone=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.IMSRILRequest=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.IMS_RILA=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.IccCardProxy=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.IccPhoneBookIM=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.IccProvider=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ImsApp=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ImsBaseCommands=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ImsCall=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ImsCallProfile=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ImsCallSession=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ImsEcbm=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ImsEcbmProxy=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ImsManager=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ImsPhone=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ImsPhoneBase=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ImsPhoneCall=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ImsService=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ImsVTProvider=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.IsimFileHandler=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.IsimRecords=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.LIBC2K_RIL=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MGsmSMSDisp=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MSimSmsIStatus=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MSmsStorageMtr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MSmsUsageMtr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MTKSST=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkAdnRecord=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkConSmsFwk=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkCsimFH=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkDupSmsFilter=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkEmbmsAdaptor=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkFactory=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkGsmCdmaConn=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkIccCardProxy=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkIccPHBIM=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkIccProvider=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkIccSmsIntMgr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkImsManager=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkImsService=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkIsimFH=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkPhoneNotifr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkPhoneNumberUtils=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkPhoneSwitcher=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkRecordLoader=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkRetryManager=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkRuimFH=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkSIMFH=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkSIMRecords=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkSmsCbHeader=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkSmsManager=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkSmsMessage=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkSpnOverride=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkSubCtrl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkUiccCard=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkUiccCardApp=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkUiccCtrl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MtkUsimFH=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.Mtk_RIL_ImsSms=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.MwiRIL=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.NetAgentService=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.NetAgent_IO=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.NetLnkEventHdlr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.NetworkPolicy=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.NetworkStats=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.OperatorUtils=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.Phone=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.PhoneConfigurationSettings=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.PhoneFactory=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.PowerHalAddressUitls=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.PowerHalMgrImpl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.PowerHalMgrServiceImpl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.PowerHalWifiMonitor=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.PowerWrap=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.ProxyController=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RFX=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RIL-CC=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RIL-DATA=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RIL-Fusion=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RIL-Netlink=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RIL-OEM=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RIL-PHB=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RIL-Parcel=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RIL-RP=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RIL-SIM=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RIL-SMS=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RIL-SocListen=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RIL-Socket=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RIL=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RILC-MTK=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RILC-OP=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RILC-RP=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RILC=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RILD=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RILMD2-SS=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RILMUXD=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RIL_Mux=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RIL_UIM_SOCKET=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RP_DAC=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RP_DC=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RP_IMS=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RTC_DAC=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RadioManager=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RetryManager=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxAction=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxChannelMgr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxCloneMgr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxContFactory=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxController=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxDT=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxDebugInfo=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxDefDestUtils=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxDisThread=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxFragEnc=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxHandlerMgr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxIdToMsgId=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxIdToStr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxMainThread=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxMclDisThread=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxMclMessenger=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxMclStatusMgr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxMessage=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxObject=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxOpUtils=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxRilAdapter=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxRilUtils=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxRoot=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxSM=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxSocketSM=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxStatusMgr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxTimer=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RfxTransUtils=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RilClient=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RilMalClient=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RilOemClient=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RilOpProxy=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcCapa=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcCdmaSimRequest=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcCdmaSimUrc=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcCommSimOpReq=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcCommSimReq=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcCommSimUrc=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcDcCommon=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcDcDefault=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcDcPdnManager=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcDcReqHandler=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcDcUtility=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcEccNumberUrcHandler=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcEmbmsReq=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcEmbmsUrc=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcGsmSimRequest=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcGsmSimUrc=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcImsCtlReqHdl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcImsCtlUrcHdl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcNwHdlr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcNwRTReqHdlr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcNwReqHdlr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcOemHandler=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcOpRadioReq=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcPhbReq=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcPhbUrc=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcRadioReq=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcRatSwHdlr=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RmcWp=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RpAudioControl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RpCallControl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RpCdmaOemCtrl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RpCdmaRadioCtrl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RpFOUtils=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RpMDCtrl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RpMalController=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RpModemMessage=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RpPhbController=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RpPhoneNumberController=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RpRadioCtrl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RpRadioMessage=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RpRilClientCtrl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RpSimController=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RtcCapa=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RtcCommSimCtrl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RtcDC=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RtcEccNumberController=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RtcEmbmsAt=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RtcEmbmsUtil=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RtcIms=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RtcImsConference=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RtcImsDialog=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RtcModeCont=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RtcNwCtrl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RtcPhb=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RtcRadioCont=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RtcRatSwCtrl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.RtcWp=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.SIMRecords=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.SimSwitchOP01=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.SimSwitchOP02=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.SimSwitchOP18=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.SlotQueueEntry=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.SmsPlusCode=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.SpnOverride=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.UiccCard=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.UiccController=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.UxUtility=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.VT=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.VsimAdaptor=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.WORLDMODE=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.WfoApp=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.legacy_power@2.1-impl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.libPowerHal=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.mtkperf_client=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.mtkpower@1.0-impl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.power@1.3-impl=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.powerd=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.GED=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.hwcomposer=$(VENDOR_LOG_LEVEL) \
    persist.log.tag.netd=$(VENDOR_LOG_LEVEL)

# Time Services
PRODUCT_PROPERTY_OVERRIDES += \
persist.timed.enable=true

# Tcp
PRODUCT_PROPERTY_OVERRIDES += \
net.tcp.2g_init_rwnd=10

# UI
PRODUCT_PROPERTY_OVERRIDES += \
sys.use_fifo_ui=1

# Usb
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.usb.config.extra=none

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
wifi.interface=wlan0

# Zram disk
ro.vendor.qti.config.zram=false
