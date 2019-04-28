.class Lcom/rockrobo/more/CleanHistoryActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/CleanHistoryActivity;->addDeleteButtonFooter(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/CleanHistoryActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/CleanHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity$2;->this$0:Lcom/rockrobo/more/CleanHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->hasCleanRecordDeleteFeature()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity$2;->this$0:Lcom/rockrobo/more/CleanHistoryActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/CleanHistoryActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a001e

    new-instance v1, Lcom/rockrobo/more/CleanHistoryActivity$2$1;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/CleanHistoryActivity$2$1;-><init>(Lcom/rockrobo/more/CleanHistoryActivity$2;)V

    invoke-static {p1, v0, v1}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showOkCancelDialogNoTitle(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity$2;->this$0:Lcom/rockrobo/more/CleanHistoryActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/CleanHistoryActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity$2;->this$0:Lcom/rockrobo/more/CleanHistoryActivity;

    invoke-static {v0}, Lcom/rockrobo/more/CleanHistoryActivity;->access$500(Lcom/rockrobo/more/CleanHistoryActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/CleanHistoryActivity$2;->this$0:Lcom/rockrobo/more/CleanHistoryActivity;

    invoke-static {v1}, Lcom/rockrobo/more/CleanHistoryActivity;->access$600(Lcom/rockrobo/more/CleanHistoryActivity;)Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showCommonFirmwareUpdateDialog(Landroid/app/Activity;Lcom/rockrobo/xmplugin/Device;Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;Z)V

    return-void
.end method
