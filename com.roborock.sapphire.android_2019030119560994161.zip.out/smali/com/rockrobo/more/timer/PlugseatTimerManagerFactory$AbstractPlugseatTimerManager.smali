.class public abstract Lcom/rockrobo/more/timer/PlugseatTimerManagerFactory$AbstractPlugseatTimerManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/timer/PlugseatTimerManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractPlugseatTimerManager"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteTimer(Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract enableTimer(Lcom/rockrobo/more/timer/PlugTimer;ZLcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V
.end method

.method public abstract getPowerTimers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/timer/PlugTimer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScene()V
.end method

.method public abstract logTimer(Lcom/rockrobo/more/timer/PlugTimer;)V
.end method

.method public abstract registerListener(Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V
.end method

.method public abstract setDevice(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)V
.end method

.method public abstract setTimer(Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V
.end method

.method public abstract unRegisterListener(Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V
.end method
