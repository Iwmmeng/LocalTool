.class public abstract Lcom/rockrobo/common/TaskTimerActivity;
.super Lcom/rockrobo/xmplugin/RRBaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/common/TaskTimerActivity$CheckTimerTask;,
        Lcom/rockrobo/common/TaskTimerActivity$RobotStatusTimerTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private checkTask:Ljava/util/TimerTask;

.field private statusTask:Ljava/util/TimerTask;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/common/TaskTimerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/common/TaskTimerActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/xmplugin/RRBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/common/TaskTimerActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/common/TaskTimerActivity;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/rockrobo/config/LogConfig;->logTimerTaskActivity:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockrobo/common/TaskTimerActivity;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract doCheckTask()V
.end method

.method protected abstract doStatusTask()V
.end method

.method protected getCheckTimerInterval()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method protected getStatusTimerInterval()J
    .locals 2

    const-wide/16 v0, 0x5dc

    return-wide v0
.end method

.method protected initCheckTask()V
    .locals 0

    return-void
.end method

.method protected initStatusTask()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/rockrobo/xmplugin/RRBaseActivity;->onPause()V

    iget-object v0, p0, Lcom/rockrobo/common/TaskTimerActivity;->statusTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lcom/rockrobo/common/TaskTimerActivity;->checkTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lcom/rockrobo/common/TaskTimerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/rockrobo/common/TaskTimerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    return-void
.end method

.method public onResume()V
    .locals 13

    invoke-super {p0}, Lcom/rockrobo/xmplugin/RRBaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/rockrobo/common/TaskTimerActivity;->resetTimerTaskVariables()V

    new-instance v0, Lcom/rockrobo/common/TaskTimerActivity$RobotStatusTimerTask;

    invoke-direct {v0, p0}, Lcom/rockrobo/common/TaskTimerActivity$RobotStatusTimerTask;-><init>(Lcom/rockrobo/common/TaskTimerActivity;)V

    iput-object v0, p0, Lcom/rockrobo/common/TaskTimerActivity;->statusTask:Ljava/util/TimerTask;

    new-instance v0, Lcom/rockrobo/common/TaskTimerActivity$CheckTimerTask;

    invoke-direct {v0, p0}, Lcom/rockrobo/common/TaskTimerActivity$CheckTimerTask;-><init>(Lcom/rockrobo/common/TaskTimerActivity;)V

    iput-object v0, p0, Lcom/rockrobo/common/TaskTimerActivity;->checkTask:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/rockrobo/common/TaskTimerActivity;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/rockrobo/common/TaskTimerActivity;->timer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/rockrobo/common/TaskTimerActivity;->statusTask:Ljava/util/TimerTask;

    invoke-virtual {p0}, Lcom/rockrobo/common/TaskTimerActivity;->getStatusTimerInterval()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object v7, p0, Lcom/rockrobo/common/TaskTimerActivity;->timer:Ljava/util/Timer;

    iget-object v8, p0, Lcom/rockrobo/common/TaskTimerActivity;->checkTask:Ljava/util/TimerTask;

    invoke-virtual {p0}, Lcom/rockrobo/common/TaskTimerActivity;->getCheckTimerInterval()J

    move-result-wide v9

    invoke-virtual {p0}, Lcom/rockrobo/common/TaskTimerActivity;->getCheckTimerInterval()J

    move-result-wide v11

    invoke-virtual/range {v7 .. v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method protected abstract resetTimerTaskVariables()V
.end method
