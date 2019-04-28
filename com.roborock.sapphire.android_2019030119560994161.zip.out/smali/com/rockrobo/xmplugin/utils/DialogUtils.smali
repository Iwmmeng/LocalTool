.class public Lcom/rockrobo/xmplugin/utils/DialogUtils;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/xmplugin/utils/DialogUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/xmplugin/utils/DialogUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/xmplugin/utils/DialogUtils;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static displayCommonProgressDialog(Landroid/app/Activity;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;
    .locals 3

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelable(Z)V

    new-instance v1, Lcom/rockrobo/xmplugin/utils/DialogUtils$3;

    invoke-direct {v1}, Lcom/rockrobo/xmplugin/utils/DialogUtils$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelIntercepter(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show()V

    :cond_0
    return-object v0
.end method

.method public static doAlert(Landroid/app/Activity;Ljava/lang/Integer;II)V
    .locals 1

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setTitle(I)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setMessage(I)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setCancelable(Z)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    new-instance p1, Lcom/rockrobo/xmplugin/utils/DialogUtils$5;

    invoke-direct {p1, p0}, Lcom/rockrobo/xmplugin/utils/DialogUtils$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p3, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    new-instance p1, Lcom/rockrobo/xmplugin/utils/DialogUtils$6;

    invoke-direct {p1, p0}, Lcom/rockrobo/xmplugin/utils/DialogUtils$6;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setDismissCallBack(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static showAlertDialog(Landroid/app/Activity;Ljava/lang/Integer;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showAlertDialog(Landroid/app/Activity;Ljava/lang/Integer;IIZ)V

    return-void
.end method

.method public static showAlertDialog(Landroid/app/Activity;Ljava/lang/Integer;IIZ)V
    .locals 1

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setTitle(I)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setMessage(I)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setCancelable(Z)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    new-instance p1, Lcom/rockrobo/xmplugin/utils/DialogUtils$1;

    invoke-direct {p1, p4, p0}, Lcom/rockrobo/xmplugin/utils/DialogUtils$1;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v0, p3, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    new-instance p1, Lcom/rockrobo/xmplugin/utils/DialogUtils$2;

    invoke-direct {p1, p4, p0}, Lcom/rockrobo/xmplugin/utils/DialogUtils$2;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setDismissCallBack(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static showAlertDialog(Landroid/content/Context;Ljava/lang/Integer;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showAlertDialog(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;ILandroid/content/DialogInterface$OnClickListener;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;)V

    return-void
.end method

.method public static showAlertDialog(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;ILandroid/content/DialogInterface$OnClickListener;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setTitle(I)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setMessage(I)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setCancelable(Z)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0, p3, p4}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0, p5}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setDismissCallBack(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static showCancellableProgressDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;
    .locals 2

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show()V

    :cond_0
    return-object v0
.end method

.method public static showCommonFirmwareUpdateDialog(Landroid/app/Activity;Lcom/rockrobo/xmplugin/Device;Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;Z)V
    .locals 7

    new-instance v4, Lcom/rockrobo/xmplugin/utils/DialogUtils$8;

    invoke-direct {v4}, Lcom/rockrobo/xmplugin/utils/DialogUtils$8;-><init>()V

    new-instance v5, Lcom/rockrobo/xmplugin/utils/DialogUtils$9;

    invoke-direct {v5}, Lcom/rockrobo/xmplugin/utils/DialogUtils$9;-><init>()V

    const v3, 0x7f0a00d6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showFirmwareUpdateDialog(Landroid/app/Activity;Lcom/rockrobo/xmplugin/Device;Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;ILandroid/content/DialogInterface$OnClickListener;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;Z)V

    return-void
.end method

.method public static showFirmwareUpdateAlertDialog(Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;Lcom/rockrobo/xmplugin/Device;Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;IILandroid/content/DialogInterface$OnClickListener;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;)V
    .locals 5

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    invoke-static {v1, p3, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setCancelable(Z)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    new-instance p3, Lcom/rockrobo/xmplugin/utils/DialogUtils$4;

    invoke-direct {p3, p1, p0, p2}, Lcom/rockrobo/xmplugin/utils/DialogUtils$4;-><init>(Lcom/rockrobo/xmplugin/Device;Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;)V

    const p0, 0x7f0a00dd

    invoke-virtual {v0, p0, p3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    const p0, 0x7f0a0009

    invoke-virtual {v0, p0, p5}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0, p6}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setDismissCallBack(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static showFirmwareUpdateDialog(Landroid/app/Activity;Lcom/rockrobo/xmplugin/Device;Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;ILandroid/content/DialogInterface$OnClickListener;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;Z)V
    .locals 2

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setCancelable(Z)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    new-instance p3, Lcom/rockrobo/xmplugin/utils/DialogUtils$10;

    invoke-direct {p3, p1, p0, p2, p6}, Lcom/rockrobo/xmplugin/utils/DialogUtils$10;-><init>(Lcom/rockrobo/xmplugin/Device;Landroid/app/Activity;Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;Z)V

    const p0, 0x7f0a00dd

    invoke-virtual {v0, p0, p3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    const p0, 0x7f0a0009

    invoke-virtual {v0, p0, p4}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0, p5}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setDismissCallBack(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static showNotCancellableProgressDialog(Landroid/app/Activity;Ljava/lang/String;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;
    .locals 2

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelable(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show()V

    :cond_0
    return-object v0
.end method

.method public static showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    const p0, 0x7f0a0009

    new-instance p1, Lcom/rockrobo/xmplugin/utils/DialogUtils$7;

    invoke-direct {p1}, Lcom/rockrobo/xmplugin/utils/DialogUtils$7;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    const p0, 0x7f0a0155

    invoke-virtual {v0, p0, p3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static showOkCancelDialogNoTitle(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showOkCancelDialogNoTitle(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static showOkCancelDialogNoTitle(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
