.class final Lcom/rockrobo/xmplugin/utils/DialogUtils$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/xmplugin/utils/DialogUtils;->showFirmwareUpdateAlertDialog(Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;Lcom/rockrobo/xmplugin/Device;Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;IILandroid/content/DialogInterface$OnClickListener;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;

.field final synthetic val$device:Lcom/rockrobo/xmplugin/Device;

.field final synthetic val$hostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/xmplugin/Device;Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$4;->val$device:Lcom/rockrobo/xmplugin/Device;

    iput-object p2, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$4;->val$activity:Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;

    iput-object p3, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$4;->val$hostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$4;->val$device:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->isShared()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$4;->val$activity:Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f0a01ea

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$4;->val$hostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    iget-object p2, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$4;->val$device:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p2}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;->goUpdateActivity(Ljava/lang/String;)V

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "set global version as null!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    invoke-static {p1}, Lcom/rockrobo/common/RobotInfo;->setMessageVersion(I)V

    return-void
.end method
