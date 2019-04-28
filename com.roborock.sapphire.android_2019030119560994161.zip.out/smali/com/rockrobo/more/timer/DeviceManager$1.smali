.class Lcom/rockrobo/more/timer/DeviceManager$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/timer/DeviceManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/timer/DeviceManager;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/timer/DeviceManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/timer/DeviceManager$1;->this$0:Lcom/rockrobo/more/timer/DeviceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "did"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/rockrobo/more/timer/DeviceManager$1;->this$0:Lcom/rockrobo/more/timer/DeviceManager;

    invoke-static {v1}, Lcom/rockrobo/more/timer/DeviceManager;->access$100(Lcom/rockrobo/more/timer/DeviceManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smarthome/device/api/BaseDevice;

    if-nez v0, :cond_1

    instance-of v1, v0, Lcom/rockrobo/xmplugin/Device;

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    check-cast v0, Lcom/rockrobo/xmplugin/Device;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/rockrobo/more/timer/DeviceManager$1;->this$0:Lcom/rockrobo/more/timer/DeviceManager;

    invoke-virtual {p1}, Lcom/rockrobo/more/timer/DeviceManager;->subscribeDevice()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
