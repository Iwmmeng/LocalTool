.class public Lcom/rockrobo/xmplugin/Device;
.super Lcom/xiaomi/smarthome/device/api/BaseDevice;


# static fields
.field private static DEVICE_CACHE:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rockrobo/xmplugin/Device;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENTS:[Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String; = "roborock.vacuum.e2"

.field public static final PROPERTIES:[Ljava/lang/String;


# instance fields
.field mPropChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/rockrobo/clean/PropChangedListenerI;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mPropertiesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/rockrobo/xmplugin/Device;->PROPERTIES:[Ljava/lang/String;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "event.status"

    aput-object v2, v1, v0

    const-string v0, "event.clean_complete"

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "event.low_power_back"

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "event.back_to_dock"

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-string v0, "event.back_to_origin_succ"

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const-string v0, "event.back_to_origin_fail"

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-string v0, "event.power_resume_clean"

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const-string v0, "event.no_disturb_start"

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const-string v0, "event.no_disturb_end"

    const/16 v2, 0x8

    aput-object v0, v1, v2

    const-string v0, "event.robot_timed_started"

    const/16 v2, 0x9

    aput-object v0, v1, v2

    const-string v0, "event.robot_timed_ended"

    const/16 v2, 0xa

    aput-object v0, v1, v2

    const-string v0, "event.relocate_fail"

    const/16 v2, 0xb

    aput-object v0, v1, v2

    const-string v0, "event.find_me_stopped"

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const-string v0, "event.bin_full"

    const/16 v2, 0xd

    aput-object v0, v1, v2

    const-string v0, "event.back_to_dock_nearby"

    const/16 v2, 0xe

    aput-object v0, v1, v2

    const-string v0, "event.error_code"

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sput-object v1, Lcom/rockrobo/xmplugin/Device;->EVENTS:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rockrobo/xmplugin/Device;->DEVICE_CACHE:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/smarthome/device/api/DeviceStat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/device/api/BaseDevice;-><init>(Lcom/xiaomi/smarthome/device/api/DeviceStat;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/xmplugin/Device;->mPropertiesMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/xmplugin/Device;->mPropChangedListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getDevice(Lcom/xiaomi/smarthome/device/api/DeviceStat;)Lcom/rockrobo/xmplugin/Device;
    .locals 5

    const-class v0, Lcom/rockrobo/xmplugin/Device;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/xmplugin/Device;->DEVICE_CACHE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockrobo/xmplugin/Device;

    iget-object v3, p0, Lcom/xiaomi/smarthome/device/api/DeviceStat;->did:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object p0, v2, Lcom/rockrobo/xmplugin/Device;->mDeviceStat:Lcom/xiaomi/smarthome/device/api/DeviceStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    :cond_1
    :try_start_1
    new-instance v1, Lcom/rockrobo/xmplugin/Device;

    invoke-direct {v1, p0}, Lcom/rockrobo/xmplugin/Device;-><init>(Lcom/xiaomi/smarthome/device/api/DeviceStat;)V

    sget-object p0, Lcom/rockrobo/xmplugin/Device;->DEVICE_CACHE:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDevice(Ljava/lang/String;)Lcom/rockrobo/xmplugin/Device;
    .locals 4

    const-class v0, Lcom/rockrobo/xmplugin/Device;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/xmplugin/Device;->DEVICE_CACHE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v2}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    :cond_1
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addPropChangedListener(Lcom/rockrobo/clean/PropChangedListenerI;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/rockrobo/xmplugin/Device;->mPropChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/rockrobo/xmplugin/Device;->mPropChangedListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    :cond_2
    return-void
.end method

.method public isFamilyMethodAdapter()Z
    .locals 2

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getApiLevel()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Lcom/xiaomi/smarthome/device/api/BaseDevice;->isFamily()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOwnerMethodAdapter()Z
    .locals 2

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getApiLevel()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Lcom/xiaomi/smarthome/device/api/BaseDevice;->isOwner()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->isBinded()Z

    move-result v0

    return v0
.end method

.method public isShared()Z
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/smarthome/device/api/BaseDevice;->isShared()Z

    move-result v0

    return v0
.end method

.method public onSubscribeData(Ljava/lang/String;)V
    .locals 8

    const-string v0, "roborock.vacuum.e2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DevicePush :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/rockrobo/xmplugin/Device;->mPropChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/rockrobo/xmplugin/Device;->mPropChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockrobo/clean/PropChangedListenerI;

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "roborock.vacuum.e2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "roborock.vacuum.e2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v4, v3}, Lcom/rockrobo/clean/PropChangedListenerI;->onPropChanged(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removePropChangedListener(Lcom/rockrobo/clean/PropChangedListenerI;)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/rockrobo/xmplugin/Device;->mPropChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/rockrobo/xmplugin/Device;->mPropChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/xmplugin/Device;->mPropChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public subscribeEvent([Ljava/lang/String;Lcom/xiaomi/smarthome/device/api/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/xiaomi/smarthome/device/api/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v4, "event."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/rockrobo/xmplugin/Device;->mDeviceStat:Lcom/xiaomi/smarthome/device/api/DeviceStat;

    iget v2, p1, Lcom/xiaomi/smarthome/device/api/DeviceStat;->pid:I

    const/4 v4, 0x3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->subscribeDevice(Ljava/lang/String;ILjava/util/List;ILcom/xiaomi/smarthome/device/api/Callback;)V

    return-void
.end method

.method public subscribeProperty([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaomi/smarthome/device/api/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/xiaomi/smarthome/device/api/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    const-string v5, "prop."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prop."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p2

    :goto_3
    if-ge v1, p1, :cond_3

    aget-object v0, p2, v1

    const-string v2, "event."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/rockrobo/xmplugin/Device;->mDeviceStat:Lcom/xiaomi/smarthome/device/api/DeviceStat;

    iget v2, p1, Lcom/xiaomi/smarthome/device/api/DeviceStat;->pid:I

    const/4 v4, 0x3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->subscribeDevice(Ljava/lang/String;ILjava/util/List;ILcom/xiaomi/smarthome/device/api/Callback;)V

    return-void
.end method

.method public unSubscribeEvent([Ljava/lang/String;Lcom/xiaomi/smarthome/device/api/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/xiaomi/smarthome/device/api/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    const-string v4, "event."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object p1

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/xmplugin/Device;->mDeviceStat:Lcom/xiaomi/smarthome/device/api/DeviceStat;

    iget v2, v2, Lcom/xiaomi/smarthome/device/api/DeviceStat;->pid:I

    invoke-virtual {p1, v1, v2, v0, p2}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->unsubscribeDevice(Ljava/lang/String;ILjava/util/List;Lcom/xiaomi/smarthome/device/api/Callback;)V

    return-void
.end method

.method public unSubscribeProperty([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaomi/smarthome/device/api/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/xiaomi/smarthome/device/api/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    const-string v5, "prop."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prop."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p2

    :goto_3
    if-ge v2, p1, :cond_3

    aget-object v1, p2, v2

    const-string v3, "event."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object p1

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/rockrobo/xmplugin/Device;->mDeviceStat:Lcom/xiaomi/smarthome/device/api/DeviceStat;

    iget v1, v1, Lcom/xiaomi/smarthome/device/api/DeviceStat;->pid:I

    invoke-virtual {p1, p2, v1, v0, p3}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->unsubscribeDevice(Ljava/lang/String;ILjava/util/List;Lcom/xiaomi/smarthome/device/api/Callback;)V

    return-void
.end method

.method public updateProperty([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "get_prop"

    new-instance v2, Lcom/rockrobo/xmplugin/Device$1;

    invoke-direct {v2, p0, p1}, Lcom/rockrobo/xmplugin/Device$1;-><init>(Lcom/rockrobo/xmplugin/Device;[Ljava/lang/String;)V

    new-instance p1, Lcom/rockrobo/xmplugin/Device$2;

    invoke-direct {p1, p0}, Lcom/rockrobo/xmplugin/Device$2;-><init>(Lcom/rockrobo/xmplugin/Device;)V

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/rockrobo/xmplugin/Device;->callMethod(Ljava/lang/String;Lorg/json/JSONArray;Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V

    :cond_2
    return-void
.end method
