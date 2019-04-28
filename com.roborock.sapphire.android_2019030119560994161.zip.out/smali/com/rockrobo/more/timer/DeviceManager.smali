.class public Lcom/rockrobo/more/timer/DeviceManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/more/timer/DeviceManager$PropBroadcastReceiver;,
        Lcom/rockrobo/more/timer/DeviceManager$OnPropertyChangeListener;
    }
.end annotation


# static fields
.field private static final MSG_PROPERTY_CHANGED:I = 0x2

.field private static final MSG_RE_SUBSCRIBE:I = 0x1

.field private static final SUBSCRIBE_EXPIRE_TIME:I = 0x2bf20

.field private static final TAG:Ljava/lang/String; = "DeviceManager"

.field private static volatile sInstance:Lcom/rockrobo/more/timer/DeviceManager;


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/smarthome/device/api/BaseDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/timer/DeviceManager$OnPropertyChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/rockrobo/more/timer/DeviceManager$PropBroadcastReceiver;

.field private mSubscribeThread:Landroid/os/HandlerThread;

.field private mWorker:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mDeviceMap:Ljava/util/Map;

    new-instance v0, Lcom/rockrobo/more/timer/DeviceManager$PropBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rockrobo/more/timer/DeviceManager$PropBroadcastReceiver;-><init>(Lcom/rockrobo/more/timer/DeviceManager;Lcom/rockrobo/more/timer/DeviceManager$1;)V

    iput-object v0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mReceiver:Lcom/rockrobo/more/timer/DeviceManager$PropBroadcastReceiver;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "subscribe_thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mSubscribeThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/rockrobo/more/timer/DeviceManager;->mWorker:Landroid/os/Handler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mContextRef:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mSubscribeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action.prop.report"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rockrobo/more/timer/DeviceManager;->mReceiver:Lcom/rockrobo/more/timer/DeviceManager$PropBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance p1, Lcom/rockrobo/more/timer/DeviceManager$1;

    iget-object v0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mSubscribeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/rockrobo/more/timer/DeviceManager$1;-><init>(Lcom/rockrobo/more/timer/DeviceManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/rockrobo/more/timer/DeviceManager;->mWorker:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/rockrobo/more/timer/DeviceManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mDeviceMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/rockrobo/more/timer/DeviceManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mWorker:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/rockrobo/more/timer/DeviceManager;
    .locals 2

    sget-object v0, Lcom/rockrobo/more/timer/DeviceManager;->sInstance:Lcom/rockrobo/more/timer/DeviceManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/rockrobo/more/timer/DeviceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/more/timer/DeviceManager;->sInstance:Lcom/rockrobo/more/timer/DeviceManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/rockrobo/more/timer/DeviceManager;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/timer/DeviceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/rockrobo/more/timer/DeviceManager;->sInstance:Lcom/rockrobo/more/timer/DeviceManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/rockrobo/more/timer/DeviceManager;->sInstance:Lcom/rockrobo/more/timer/DeviceManager;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/timer/DeviceManager;->mReceiver:Lcom/rockrobo/more/timer/DeviceManager$PropBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/rockrobo/more/timer/DeviceManager;->sInstance:Lcom/rockrobo/more/timer/DeviceManager;

    return-void
.end method

.method public getDevice(Ljava/lang/String;)Lcom/xiaomi/smarthome/device/api/BaseDevice;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mDeviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/smarthome/device/api/BaseDevice;

    return-object p1
.end method

.method public getDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/smarthome/device/api/BaseDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/rockrobo/more/timer/DeviceManager;->mDeviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/smarthome/device/api/BaseDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public putDevice(Ljava/lang/String;Lcom/xiaomi/smarthome/device/api/BaseDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mDeviceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerPropListener(Ljava/lang/String;Lcom/rockrobo/more/timer/DeviceManager$OnPropertyChangeListener;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/rockrobo/more/timer/DeviceManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public removeDevice(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mDeviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public subscribeDevice()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/rockrobo/more/timer/DeviceManager;->mDeviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/rockrobo/more/timer/DeviceManager;->mWorker:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/smarthome/device/api/BaseDevice;

    instance-of v2, v1, Lcom/rockrobo/xmplugin/Device;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/rockrobo/xmplugin/Device;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public unRegisterPropListener(Ljava/lang/String;Lcom/rockrobo/more/timer/DeviceManager$OnPropertyChangeListener;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/timer/DeviceManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
