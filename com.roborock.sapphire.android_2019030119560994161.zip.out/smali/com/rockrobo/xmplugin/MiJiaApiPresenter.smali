.class public Lcom/rockrobo/xmplugin/MiJiaApiPresenter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rockrobo/presenter/RobotPresenterI;


# static fields
.field public static final GET_COUNTRY_URL:Ljava/lang/String; = "/home/getcountry"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final SEQ_NUM_KEY:Ljava/lang/String; = "seqnum"


# instance fields
.field private final mDevice:Lcom/rockrobo/xmplugin/Device;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iput-object p2, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/xmplugin/MiJiaApiPresenter;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static retain4Decimal(D)D
    .locals 2

    const-wide v0, 0x40c3880000000000L    # 10000.0

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public carpetModeOff(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "enable"

    sget-object v2, Lcom/rockrobo/common/CarpetMode;->OFF:Lcom/rockrobo/common/CarpetMode;

    invoke-virtual {v2}, Lcom/rockrobo/common/CarpetMode;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.set_carpet_mode"

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/rockrobo/presenter/PresenterException;

    invoke-direct {p2, p1}, Lcom/rockrobo/presenter/PresenterException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public carpetModeOn(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "enable"

    sget-object v2, Lcom/rockrobo/common/CarpetMode;->ON:Lcom/rockrobo/common/CarpetMode;

    invoke-virtual {v2}, Lcom/rockrobo/common/CarpetMode;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "current_integral"

    const/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "current_high"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "current_low"

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "stall_time"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.set_carpet_mode"

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/rockrobo/presenter/PresenterException;

    invoke-direct {p2, p1}, Lcom/rockrobo/presenter/PresenterException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public charge(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.app_charge"

    const/4 v3, 0x0

    check-cast v3, Lorg/json/JSONArray;

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method public checkDeviceUpdateInfo(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->checkDeviceUpdateInfo(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public clean(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.app_start"

    const/4 v3, 0x0

    check-cast v3, Lorg/json/JSONArray;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public clearCleanRecords(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "clear_clean_records"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public clearMapData(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->clearMapDataOnServer(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/rockrobo/presenter/PresenterException;

    invoke-direct {p2, p1}, Lcom/rockrobo/presenter/PresenterException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public closeNoDisturbTimer(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v0, ""

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.close_dnd_timer"

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public deleteTimer(Ljava/lang/String;Lcom/xiaomi/smarthome/device/api/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/smarthome/device/api/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    iget-object p1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user.del_timer"

    const/4 v5, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->callMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V

    return-void
.end method

.method public exitRemoteController(ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "seqnum"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v2, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v3, "user.app_rc_end"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/rockrobo/presenter/PresenterException;

    invoke-direct {p2, p1}, Lcom/rockrobo/presenter/PresenterException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public installSound(Lcom/rockrobo/more/voicepackage/VoiceItem;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "url"

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "sver"

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getVersion()I

    move-result v0

    invoke-virtual {v3, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "md5"

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getVoicePkgMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "sid"

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result p1

    invoke-virtual {v3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.dnld_install_sound"

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/rockrobo/presenter/PresenterException;

    invoke-direct {p2, p1}, Lcom/rockrobo/presenter/PresenterException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public loadCarpetModeStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.get_carpet_mode"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadCleanDetail(ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.get_clean_record"

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResultTag(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadCleanHistoryMapName(ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.get_clean_record_map"

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResultTag(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadCleanSummary(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.get_clean_summary"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadConsumableData(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.get_consumable"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadCountryIn(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    const-string v1, "roborock.vacuum.e2"

    const-string v2, "/home/getcountry"

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/rockrobo/xmplugin/MiJiaApiPresenter$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/rockrobo/xmplugin/MiJiaApiPresenter$1;-><init>(Lcom/rockrobo/xmplugin/MiJiaApiPresenter;Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-instance v5, Lcom/rockrobo/xmplugin/MiJiaApiPresenter$2;

    invoke-direct {v5, p0}, Lcom/rockrobo/xmplugin/MiJiaApiPresenter$2;-><init>(Lcom/rockrobo/xmplugin/MiJiaApiPresenter;)V

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->callSmartHomeApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V

    return-void
.end method

.method public loadCurrentVoicePackageID(Ljava/lang/Integer;Ljava/lang/Integer;J)V
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.get_current_sound"

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResultDelay(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;J)V

    return-void
.end method

.method public loadFirmwareFeatures(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "get_fw_features"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadLocaleInfo(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "app_get_locale"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadLocationLang(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "app_get_locale"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadLogLevel(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.get_log_upload_status"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadMapName(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.get_map"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadMessageVersion(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->loadStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadNoDisturbTimer(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.get_dnd_timer"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadPushStatusFromServer(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->loadPushStatusFromServer(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadSerialNo(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.get_serial_number"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.get_status"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadTimeZone(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.get_timezone"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadTimers(Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/smarthome/device/api/Callback;",
            "Lcom/xiaomi/smarthome/device/api/Parser<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v0, ""

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v1}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user.get_timer"

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->callMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V

    return-void
.end method

.method public loadVoicePackageDownloadStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "get_sound_progress"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadVolume(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "get_sound_volume"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public localPing(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->localPing(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public pause(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.app_pause"

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method public resetConsumable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 7

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.reset_consumable"

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method public sendCleanMode(Lcom/rockrobo/common/CleanMode;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/rockrobo/common/CleanMode;->getFanPower()I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.set_custom_mode"

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method public sendFindMe(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.find_me"

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method public sendLogLevel(ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.enable_log_upload"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method public sendNoDisturbTimer(IIIILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {v3, p2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {v3, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {v3, p4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.set_dnd_timer"

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public sendPushStatusToServer(ZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/AppUtils;->pushStatusToServer(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public sendRemoteControllerMove(IDDII)V
    .locals 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "omega"

    invoke-static {p2, p3}, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->retain4Decimal(D)D

    move-result-wide p2

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "mode"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "velocity"

    invoke-static {p4, p5}, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->retain4Decimal(D)D

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "seqnum"

    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "duration"

    invoke-virtual {v0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v2, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v3, "user.app_rc_move"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/rockrobo/presenter/PresenterException;

    invoke-direct {p2, p1}, Lcom/rockrobo/presenter/PresenterException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public sendTestVolume(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "test_sound_volume"

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method public sendTimeZone(Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.set_timezone"

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public sendVolume(ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "change_sound_volume"

    const/4 v6, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method public setTimer(Lcom/rockrobo/more/timer/CommonTimer;Lcom/xiaomi/smarthome/device/api/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rockrobo/more/timer/CommonTimer;",
            "Lcom/xiaomi/smarthome/device/api/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    iget-object v5, p1, Lcom/rockrobo/more/timer/CommonTimer;->onMethod:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/rockrobo/more/timer/CommonTimer;->getCleanMode()Lcom/rockrobo/common/CleanMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rockrobo/common/CleanMode;->getFanPower()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v5, p1, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-static {v3, v5}, Lcom/rockrobo/more/timer/CronTabUtils;->convertTimeZone(Ljava/util/TimeZone;Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object v3

    invoke-static {v3}, Lcom/rockrobo/more/timer/CronTabUtils;->getTimerParam(Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object p1, p1, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object p1, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScene params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v1

    iget-object p1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user.set_timer"

    const/4 v6, 0x0

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->callMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V

    return-void
.end method

.method public spot(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.app_spot"

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method public startRemoteController(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    const-string v2, "user.app_rc_start"

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method public subscribeDevice(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->subscribeDevice(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public unSubscribeDevice(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->unSubscribeProperty(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public updateDevice(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v1}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils;->updateDevice(Ljava/util/List;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public updateTimer(Lcom/rockrobo/more/timer/PlugTimer;Lcom/xiaomi/smarthome/device/api/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rockrobo/more/timer/PlugTimer;",
            "Lcom/xiaomi/smarthome/device/api/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p1, Lcom/rockrobo/more/timer/PlugTimer;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-boolean p1, p1, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object p1, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateScene start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    iget-object p1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user.upd_timer"

    const/4 v5, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->callMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V

    return-void
.end method
