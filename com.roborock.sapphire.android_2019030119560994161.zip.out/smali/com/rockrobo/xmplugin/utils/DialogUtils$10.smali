.class final Lcom/rockrobo/xmplugin/utils/DialogUtils$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/xmplugin/utils/DialogUtils;->showFirmwareUpdateDialog(Landroid/app/Activity;Lcom/rockrobo/xmplugin/Device;Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;ILandroid/content/DialogInterface$OnClickListener;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$device:Lcom/rockrobo/xmplugin/Device;

.field final synthetic val$hostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

.field final synthetic val$resetMsgVersion:Z


# direct methods
.method constructor <init>(Lcom/rockrobo/xmplugin/Device;Landroid/app/Activity;Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$10;->val$device:Lcom/rockrobo/xmplugin/Device;

    iput-object p2, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$10;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$10;->val$hostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    iput-boolean p4, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$10;->val$resetMsgVersion:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$10;->val$device:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->isShared()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$10;->val$activity:Landroid/app/Activity;

    const v0, 0x7f0a01ea

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$10;->val$hostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$10;->val$device:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;->goUpdateActivity(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$10;->val$resetMsgVersion:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "set global version as null!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    invoke-static {p1}, Lcom/rockrobo/common/RobotInfo;->setMessageVersion(I)V

    :cond_1
    sput-boolean p2, Lcom/rockrobo/common/RobotInfo;->firmwareUpdated:Z

    return-void
.end method
