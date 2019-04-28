.class public Lcom/rockrobo/more/consumable/ConsumableResetDialog;
.super Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "roborock.vacuum.e2"


# instance fields
.field private activity:Lcom/rockrobo/more/consumable/ConsumableBaseActivity;

.field private final confirmMsg:Ljava/lang/String;

.field private final confirmTitle:Ljava/lang/String;

.field private device:Lcom/rockrobo/xmplugin/Device;

.field private handler:Landroid/os/Handler;

.field private final presenter:Lcom/rockrobo/presenter/RobotPresenterI;

.field private final resetParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/rockrobo/more/consumable/ConsumableBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/rockrobo/presenter/RobotPresenterI;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->activity:Lcom/rockrobo/more/consumable/ConsumableBaseActivity;

    iput-object p2, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->confirmTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->confirmMsg:Ljava/lang/String;

    iput-object p4, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->resetParam:Ljava/lang/String;

    iput-object p5, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->presenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/more/consumable/ConsumableResetDialog;)Lcom/rockrobo/more/consumable/ConsumableBaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->activity:Lcom/rockrobo/more/consumable/ConsumableBaseActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/rockrobo/more/consumable/ConsumableResetDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->resetParam:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/rockrobo/more/consumable/ConsumableResetDialog;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->presenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method


# virtual methods
.method public setDevice(Lcom/rockrobo/xmplugin/Device;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->device:Lcom/rockrobo/xmplugin/Device;

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->handler:Landroid/os/Handler;

    return-void
.end method

.method public show()V
    .locals 4

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    iget-object v1, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->activity:Lcom/rockrobo/more/consumable/ConsumableBaseActivity;

    invoke-direct {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->confirmTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    iget-object v1, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->confirmMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    iget-object v1, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->activity:Lcom/rockrobo/more/consumable/ConsumableBaseActivity;

    invoke-virtual {v1}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/rockrobo/more/consumable/ConsumableResetDialog$2;

    invoke-direct {v2, p0}, Lcom/rockrobo/more/consumable/ConsumableResetDialog$2;-><init>(Lcom/rockrobo/more/consumable/ConsumableResetDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->activity:Lcom/rockrobo/more/consumable/ConsumableBaseActivity;

    invoke-virtual {v2}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rockrobo/more/consumable/ConsumableResetDialog$1;

    invoke-direct {v3, p0}, Lcom/rockrobo/more/consumable/ConsumableResetDialog$1;-><init>(Lcom/rockrobo/more/consumable/ConsumableResetDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    return-void
.end method
