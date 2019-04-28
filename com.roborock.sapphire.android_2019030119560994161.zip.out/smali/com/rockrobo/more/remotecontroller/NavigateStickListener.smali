.class public Lcom/rockrobo/more/remotecontroller/NavigateStickListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static MAX_OMEGA:D = 1.0471975511965976

.field private static MAX_VELOCITY:F = 0.29f


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onNavAndSpeed(FF)V
    .locals 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-gez v2, :cond_0

    const/4 p2, 0x0

    :cond_0
    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    new-instance v1, Lcom/rockrobo/more/remotecontroller/RCParams;

    neg-float p1, p1

    float-to-double v2, p1

    sget-wide v4, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;->MAX_OMEGA:D

    mul-double v2, v2, v4

    sget p1, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;->MAX_VELOCITY:F

    mul-float p2, p2, p1

    float-to-double p1, p2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/rockrobo/more/remotecontroller/RCParams;-><init>(DD)V

    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/rockrobo/more/remotecontroller/RCParams;

    float-to-double v2, p1

    sget-wide v4, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;->MAX_OMEGA:D

    mul-double v2, v2, v4

    sget p1, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;->MAX_VELOCITY:F

    mul-float p2, p2, p1

    float-to-double p1, p2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/rockrobo/more/remotecontroller/RCParams;-><init>(DD)V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNavStickReleased()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onNavStickTouched(FF)V
    .locals 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-gez v2, :cond_0

    const/4 p2, 0x0

    :cond_0
    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    new-instance v1, Lcom/rockrobo/more/remotecontroller/RCParams;

    neg-float p1, p1

    float-to-double v2, p1

    sget-wide v4, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;->MAX_OMEGA:D

    mul-double v2, v2, v4

    sget p1, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;->MAX_VELOCITY:F

    mul-float p2, p2, p1

    float-to-double p1, p2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/rockrobo/more/remotecontroller/RCParams;-><init>(DD)V

    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/rockrobo/more/remotecontroller/RCParams;

    float-to-double v2, p1

    sget-wide v4, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;->MAX_OMEGA:D

    mul-double v2, v2, v4

    sget p1, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;->MAX_VELOCITY:F

    mul-float p2, p2, p1

    float-to-double p1, p2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/rockrobo/more/remotecontroller/RCParams;-><init>(DD)V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
