.class public interface abstract Lcom/rockrobo/presenter/RobotPresenterI;
.super Ljava/lang/Object;


# virtual methods
.method public abstract carpetModeOff(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract carpetModeOn(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract charge(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract checkDeviceUpdateInfo(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract clean(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract clearCleanRecords(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract clearMapData(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract closeNoDisturbTimer(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract deleteTimer(Ljava/lang/String;Lcom/xiaomi/smarthome/device/api/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/smarthome/device/api/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract exitRemoteController(ILjava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract installSound(Lcom/rockrobo/more/voicepackage/VoiceItem;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadCarpetModeStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadCleanDetail(ILjava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadCleanHistoryMapName(ILjava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadCleanSummary(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadConsumableData(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadCountryIn(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadCurrentVoicePackageID(Ljava/lang/Integer;Ljava/lang/Integer;J)V
.end method

.method public abstract loadFirmwareFeatures(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadLocaleInfo(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadLocationLang(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadLogLevel(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadMapName(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadMessageVersion(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadNoDisturbTimer(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadPushStatusFromServer(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadSerialNo(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadTimeZone(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadTimers(Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/smarthome/device/api/Callback;",
            "Lcom/xiaomi/smarthome/device/api/Parser<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadVoicePackageDownloadStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract loadVolume(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract localPing(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract pause(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V
.end method

.method public abstract resetConsumable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V
.end method

.method public abstract sendCleanMode(Lcom/rockrobo/common/CleanMode;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract sendFindMe(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract sendLogLevel(ILjava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract sendNoDisturbTimer(IIIILjava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract sendPushStatusToServer(ZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract sendRemoteControllerMove(IDDII)V
.end method

.method public abstract sendTestVolume(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract sendTimeZone(Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract sendVolume(ILjava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract setTimer(Lcom/rockrobo/more/timer/CommonTimer;Lcom/xiaomi/smarthome/device/api/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rockrobo/more/timer/CommonTimer;",
            "Lcom/xiaomi/smarthome/device/api/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract spot(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract startRemoteController(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract subscribeDevice(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract unSubscribeDevice(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract updateDevice(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract updateTimer(Lcom/rockrobo/more/timer/PlugTimer;Lcom/xiaomi/smarthome/device/api/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rockrobo/more/timer/PlugTimer;",
            "Lcom/xiaomi/smarthome/device/api/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
