.class Lcom/rockrobo/more/timer/DeviceManager$PropBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/timer/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/timer/DeviceManager;


# direct methods
.method private constructor <init>(Lcom/rockrobo/more/timer/DeviceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/timer/DeviceManager$PropBroadcastReceiver;->this$0:Lcom/rockrobo/more/timer/DeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockrobo/more/timer/DeviceManager;Lcom/rockrobo/more/timer/DeviceManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/timer/DeviceManager$PropBroadcastReceiver;-><init>(Lcom/rockrobo/more/timer/DeviceManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "action.prop.report"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "extra_data"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/rockrobo/more/timer/DeviceManager$PropBroadcastReceiver;->this$0:Lcom/rockrobo/more/timer/DeviceManager;

    invoke-static {p2}, Lcom/rockrobo/more/timer/DeviceManager;->access$200(Lcom/rockrobo/more/timer/DeviceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/4 v0, 0x2

    iput v0, p2, Landroid/os/Message;->what:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/rockrobo/more/timer/DeviceManager$PropBroadcastReceiver;->this$0:Lcom/rockrobo/more/timer/DeviceManager;

    invoke-static {p1}, Lcom/rockrobo/more/timer/DeviceManager;->access$200(Lcom/rockrobo/more/timer/DeviceManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
