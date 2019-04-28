.class public Lcom/rockrobo/xmplugin/utils/AppUtils;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/xmplugin/utils/AppUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/xmplugin/utils/AppUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/xmplugin/utils/AppUtils;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 11

    move-object v0, p3

    sget-object v1, Lcom/rockrobo/xmplugin/utils/AppUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to mDevice:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", params:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_0
    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/rockrobo/xmplugin/utils/AppUtils$18;

    move-object v4, v10

    move-object v5, v3

    move-object v6, p4

    move-object v7, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/rockrobo/xmplugin/utils/AppUtils$18;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/os/Handler;Ljava/lang/Object;Ljava/lang/Integer;)V

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    move-object v7, v0

    move-object v8, v10

    invoke-virtual/range {v4 .. v9}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->callMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V

    return-void
.end method

.method public static callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 8

    sget-object v0, Lcom/rockrobo/xmplugin/utils/AppUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To sent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to mDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v2

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/rockrobo/xmplugin/utils/AppUtils$1;

    invoke-direct {v6, p1, p3, p2, p4}, Lcom/rockrobo/xmplugin/utils/AppUtils$1;-><init>(Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v7, Lcom/rockrobo/xmplugin/utils/AppUtils$2;

    invoke-direct {v7, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils$2;-><init>(Ljava/lang/String;)V

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->callMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V

    return-void
.end method

.method public static callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    if-nez p3, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    sget-object v0, Lcom/rockrobo/xmplugin/utils/AppUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To sent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to mDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  with params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/rockrobo/xmplugin/utils/AppUtils$5;

    invoke-direct {v5, p1, p2, p4, p5}, Lcom/rockrobo/xmplugin/utils/AppUtils$5;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-instance v6, Lcom/rockrobo/xmplugin/utils/AppUtils$6;

    invoke-direct {v6, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils$6;-><init>(Ljava/lang/String;)V

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->callMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V

    return-void
.end method

.method public static callMethodWithResult(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 8

    sget-object v0, Lcom/rockrobo/xmplugin/utils/AppUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To sent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to mDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v2

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/rockrobo/xmplugin/utils/AppUtils$7;

    invoke-direct {v6, p2, p1, p4, p5}, Lcom/rockrobo/xmplugin/utils/AppUtils$7;-><init>(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-instance v7, Lcom/rockrobo/xmplugin/utils/AppUtils$8;

    invoke-direct {v7, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils$8;-><init>(Ljava/lang/String;)V

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->callMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V

    return-void
.end method

.method public static callMethodWithResultDelay(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;J)V
    .locals 12

    move-object v7, p2

    sget-object v0, Lcom/rockrobo/xmplugin/utils/AppUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To sent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to mDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v9

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/rockrobo/xmplugin/utils/AppUtils$3;

    move-object v0, v11

    move-object v1, p1

    move-object v2, v7

    move-object v3, p3

    move-wide/from16 v4, p5

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/AppUtils$3;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Integer;JLjava/lang/Integer;)V

    new-instance v5, Lcom/rockrobo/xmplugin/utils/AppUtils$4;

    invoke-direct {v5, v7}, Lcom/rockrobo/xmplugin/utils/AppUtils$4;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    move-object v1, v10

    move-object v3, v8

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->callMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V

    return-void
.end method

.method public static callMethodWithResultTag(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 10

    sget-object v0, Lcom/rockrobo/xmplugin/utils/AppUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To sent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to mDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v2

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v3

    new-instance p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    move-object v7, p4

    move-object v8, p3

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/rockrobo/xmplugin/utils/AppUtils$9;-><init>(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;)V

    new-instance v7, Lcom/rockrobo/xmplugin/utils/AppUtils$10;

    invoke-direct {v7, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils$10;-><init>(Ljava/lang/String;)V

    move-object v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->callMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V

    return-void
.end method

.method public static checkDeviceUpdateInfo(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    new-instance v0, Lcom/rockrobo/xmplugin/utils/AppUtils$13;

    invoke-direct {v0, p1, p2, p3}, Lcom/rockrobo/xmplugin/utils/AppUtils$13;-><init>(Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/rockrobo/xmplugin/Device;->checkDeviceUpdateInfo(Lcom/xiaomi/smarthome/device/api/Callback;)V

    return-void
.end method

.method public static clearMapDataOnServer(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "did"

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v2

    const-string v3, "roborock.vacuum.e2"

    const-string v4, "/user/del_user_map"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/rockrobo/xmplugin/utils/AppUtils$19;

    invoke-direct {v6, p1, p2, p3}, Lcom/rockrobo/xmplugin/utils/AppUtils$19;-><init>(Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-instance v7, Lcom/rockrobo/xmplugin/utils/AppUtils$20;

    invoke-direct {v7}, Lcom/rockrobo/xmplugin/utils/AppUtils$20;-><init>()V

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->callSmartHomeApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V

    return-void
.end method

.method public static loadPushStatusFromServer(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/rockrobo/xmplugin/utils/AppUtils$11;

    invoke-direct {v2, p2, p1, p3}, Lcom/rockrobo/xmplugin/utils/AppUtils$11;-><init>(Ljava/lang/Integer;Landroid/os/Handler;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getScene(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/smarthome/device/api/Callback;)V

    return-void
.end method

.method public static localPing(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/rockrobo/xmplugin/utils/AppUtils$17;

    invoke-direct {v1, p1, p2, p3}, Lcom/rockrobo/xmplugin/utils/AppUtils$17;-><init>(Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->localPing(Ljava/lang/String;Lcom/xiaomi/smarthome/device/api/Callback;)V

    return-void
.end method

.method public static pushStatusToServer(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 13

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "enable_exception_alert"

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v1, "enable_exception_alert"

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getModel()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v5

    const-string v7, "\u626b\u5730\u673a\u5668\u4eba\u6d88\u606f\u901a\u77e5"

    new-instance v10, Lcom/rockrobo/xmplugin/utils/AppUtils$12;

    move-object v6, p1

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct {v10, v6, v11, v12}, Lcom/rockrobo/xmplugin/utils/AppUtils$12;-><init>(Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v10}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->editScene(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/xiaomi/smarthome/device/api/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    sget-object v2, Lcom/rockrobo/xmplugin/utils/AppUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendPushStatusToServer JSONException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static subscribeDevice(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    sget-object v0, Lcom/rockrobo/xmplugin/Device;->PROPERTIES:[Ljava/lang/String;

    sget-object v1, Lcom/rockrobo/xmplugin/Device;->EVENTS:[Ljava/lang/String;

    new-instance v2, Lcom/rockrobo/xmplugin/utils/AppUtils$14;

    invoke-direct {v2, p1, p2, p3}, Lcom/rockrobo/xmplugin/utils/AppUtils$14;-><init>(Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/rockrobo/xmplugin/Device;->subscribeProperty([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaomi/smarthome/device/api/Callback;)V

    return-void
.end method

.method public static unSubscribeProperty(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    sget-object v0, Lcom/rockrobo/xmplugin/Device;->PROPERTIES:[Ljava/lang/String;

    sget-object v1, Lcom/rockrobo/xmplugin/Device;->EVENTS:[Ljava/lang/String;

    new-instance v2, Lcom/rockrobo/xmplugin/utils/AppUtils$15;

    invoke-direct {v2, p1, p2, p3}, Lcom/rockrobo/xmplugin/utils/AppUtils$15;-><init>(Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/rockrobo/xmplugin/Device;->unSubscribeProperty([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaomi/smarthome/device/api/Callback;)V

    return-void
.end method

.method public static updateDevice(Ljava/util/List;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    new-instance v1, Lcom/rockrobo/xmplugin/utils/AppUtils$16;

    invoke-direct {v1, p1, p3, p2}, Lcom/rockrobo/xmplugin/utils/AppUtils$16;-><init>(Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->updateDevice(Ljava/util/List;Lcom/xiaomi/smarthome/device/api/Callback;)V

    return-void
.end method
