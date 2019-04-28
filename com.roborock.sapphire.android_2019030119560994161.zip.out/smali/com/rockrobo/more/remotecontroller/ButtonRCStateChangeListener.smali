.class public Lcom/rockrobo/more/remotecontroller/ButtonRCStateChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCListenerI;


# static fields
.field public static final DEFAULT_BUTTON_RC_OMEGA:F = 1.0471976f

.field public static final DEFAULT_BUTTON_RC_VELOCITY:F = 0.2f

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/remotecontroller/ButtonRCStateChangeListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/remotecontroller/ButtonRCStateChangeListener;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/more/remotecontroller/ButtonRCStateChangeListener;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onButtonPressed(Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;)V
    .locals 7

    sget-object v0, Lcom/rockrobo/more/remotecontroller/ButtonRCStateChangeListener$1;->$SwitchMap$com$rockrobo$ui$rc$RRButtonRC$RRButtonRCState:[I

    invoke-virtual {p1}, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    const p1, -0x4079f56e

    goto :goto_0

    :pswitch_1
    const p1, 0x3f860a92

    goto :goto_0

    :pswitch_2
    const p1, 0x3e4ccccd    # 0.2f

    const/4 p1, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    :goto_1
    cmpl-float v2, p1, v0

    if-nez v2, :cond_0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    new-instance v2, Lcom/rockrobo/more/remotecontroller/RCParams;

    float-to-double v3, p1

    float-to-double v5, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/rockrobo/more/remotecontroller/RCParams;-><init>(DD)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/rockrobo/more/remotecontroller/ButtonRCStateChangeListener;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onButtonReleased()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/remotecontroller/ButtonRCStateChangeListener;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
