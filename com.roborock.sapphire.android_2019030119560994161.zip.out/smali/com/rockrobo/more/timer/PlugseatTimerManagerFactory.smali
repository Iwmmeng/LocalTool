.class public Lcom/rockrobo/more/timer/PlugseatTimerManagerFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/more/timer/PlugseatTimerManagerFactory$AbstractPlugseatTimerManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlugTimerManager(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)Lcom/rockrobo/more/timer/TimerCommonManager;
    .locals 0

    invoke-static {p0}, Lcom/rockrobo/more/timer/TimerCommonManager;->getInstance(Landroid/content/Context;)Lcom/rockrobo/more/timer/TimerCommonManager;

    move-result-object p0

    return-object p0
.end method
