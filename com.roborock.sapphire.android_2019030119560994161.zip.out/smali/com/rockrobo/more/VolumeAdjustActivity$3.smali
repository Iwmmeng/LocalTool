.class Lcom/rockrobo/more/VolumeAdjustActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/VolumeAdjustActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/VolumeAdjustActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/VolumeAdjustActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity$3;->this$0:Lcom/rockrobo/more/VolumeAdjustActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity$3;->this$0:Lcom/rockrobo/more/VolumeAdjustActivity;

    invoke-static {p1}, Lcom/rockrobo/more/VolumeAdjustActivity;->access$200(Lcom/rockrobo/more/VolumeAdjustActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity$3;->this$0:Lcom/rockrobo/more/VolumeAdjustActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/VolumeAdjustActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a00eb

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity$3;->this$0:Lcom/rockrobo/more/VolumeAdjustActivity;

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity$3;->this$0:Lcom/rockrobo/more/VolumeAdjustActivity;

    invoke-static {v0}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->displayCommonProgressDialog(Landroid/app/Activity;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/rockrobo/more/VolumeAdjustActivity;->access$302(Lcom/rockrobo/more/VolumeAdjustActivity;Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity$3;->this$0:Lcom/rockrobo/more/VolumeAdjustActivity;

    invoke-static {p1}, Lcom/rockrobo/more/VolumeAdjustActivity;->access$400(Lcom/rockrobo/more/VolumeAdjustActivity;)V

    return-void
.end method
