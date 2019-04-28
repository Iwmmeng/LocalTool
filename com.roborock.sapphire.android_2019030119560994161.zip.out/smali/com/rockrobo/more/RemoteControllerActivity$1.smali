.class Lcom/rockrobo/more/RemoteControllerActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/RemoteControllerActivity;->showFirmwareUpdateAlertDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/RemoteControllerActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/RemoteControllerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$1;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$1;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RemoteControllerActivity;->access$000(Lcom/rockrobo/more/RemoteControllerActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->isShared()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$1;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    const p2, 0x7f0a01ea

    invoke-static {p1, p2}, Lcom/rockrobo/more/RemoteControllerActivity;->access$100(Lcom/rockrobo/more/RemoteControllerActivity;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$1;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RemoteControllerActivity;->access$300(Lcom/rockrobo/more/RemoteControllerActivity;)Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/rockrobo/more/RemoteControllerActivity$1;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/RemoteControllerActivity;->access$200(Lcom/rockrobo/more/RemoteControllerActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object p2

    invoke-virtual {p2}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;->goUpdateActivity(Ljava/lang/String;)V

    return-void
.end method
