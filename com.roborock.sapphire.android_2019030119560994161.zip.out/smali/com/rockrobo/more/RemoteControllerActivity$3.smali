.class Lcom/rockrobo/more/RemoteControllerActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;


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

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$3;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterDismissCallBack()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity$3;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/RemoteControllerActivity;->finish()V

    return-void
.end method

.method public beforeDismissCallBack()V
    .locals 0

    return-void
.end method
