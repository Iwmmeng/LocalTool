.class Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/clean/CleanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckTimerTask"
.end annotation


# static fields
.field public static final SUBSCRIBE_DEVICE_INTERVAL:I = 0x2bf20

.field public static final TOAST_TEST_INTERVAL:I = 0x2710


# instance fields
.field private lastSubscribeDeviceTime:J

.field private lastUpdateDeviceTime:J

.field final synthetic this$0:Lcom/rockrobo/clean/CleanActivity;

.field private toastTestTime:J


# direct methods
.method public constructor <init>(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 6

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->lastUpdateDeviceTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->lastSubscribeDeviceTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->toastTestTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$3400(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$6600(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$6700(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    iget-object v0, v0, Lcom/rockrobo/clean/CleanActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xdf

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0, v1}, Lcom/rockrobo/clean/CleanActivity;->access$6702(Lcom/rockrobo/clean/CleanActivity;Z)Z

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->isCNServer()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getUserCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$2700(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    iget-object v0, v0, Lcom/rockrobo/clean/CleanActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0, v1}, Lcom/rockrobo/clean/CleanActivity;->access$2702(Lcom/rockrobo/clean/CleanActivity;Z)Z

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getUserCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "cn"

    invoke-static {v0}, Lcom/rockrobo/common/RobotInfo;->setUserCountry(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$3700(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$6800(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/clean/RawFileLoadAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$6800(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/clean/RawFileLoadAsyncTask;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->loadFailed:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-virtual {v0}, Lcom/rockrobo/clean/CleanActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0a013d

    invoke-static {v0, v2, v1}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-virtual {v0}, Lcom/rockrobo/clean/CleanActivity;->finish()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$6800(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/clean/RawFileLoadAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$6800(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/clean/RawFileLoadAsyncTask;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->loadComplete:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$6900(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0, v1}, Lcom/rockrobo/clean/CleanActivity;->access$6902(Lcom/rockrobo/clean/CleanActivity;Z)Z

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    iget-object v0, v0, Lcom/rockrobo/clean/CleanActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    return-void

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getApiLevel()I

    move-result v2

    const/16 v3, 0x1b

    if-lt v2, v3, :cond_a

    iget-wide v2, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->lastUpdateDeviceTime:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v6, v4, v2

    if-lez v6, :cond_a

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v2}, Lcom/rockrobo/clean/CleanActivity;->access$7000(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object v2

    const/16 v3, 0xd5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x6f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/rockrobo/presenter/RobotPresenterI;->updateDevice(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->lastUpdateDeviceTime:J

    :cond_a
    iget-wide v2, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->lastSubscribeDeviceTime:J

    sub-long v4, v0, v2

    const-wide/32 v0, 0x2bf20

    cmp-long v2, v4, v0

    if-ltz v2, :cond_b

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-virtual {v0}, Lcom/rockrobo/clean/CleanActivity;->subscribeDevice()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->lastSubscribeDeviceTime:J

    :cond_b
    return-void
.end method
