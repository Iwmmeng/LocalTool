.class Lcom/rockrobo/more/consumable/SensorsMaintainActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/consumable/SensorsMaintainActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/consumable/SensorsMaintainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/consumable/SensorsMaintainActivity$1;->this$0:Lcom/rockrobo/more/consumable/SensorsMaintainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-static {}, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reset enter"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/rockrobo/more/consumable/ConsumableResetDialog;

    iget-object v2, p0, Lcom/rockrobo/more/consumable/SensorsMaintainActivity$1;->this$0:Lcom/rockrobo/more/consumable/SensorsMaintainActivity;

    iget-object v0, p0, Lcom/rockrobo/more/consumable/SensorsMaintainActivity$1;->this$0:Lcom/rockrobo/more/consumable/SensorsMaintainActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/rockrobo/more/consumable/SensorsMaintainActivity$1;->this$0:Lcom/rockrobo/more/consumable/SensorsMaintainActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "user.sensor_dirty_time"

    iget-object v0, p0, Lcom/rockrobo/more/consumable/SensorsMaintainActivity$1;->this$0:Lcom/rockrobo/more/consumable/SensorsMaintainActivity;

    invoke-static {v0}, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->access$100(Lcom/rockrobo/more/consumable/SensorsMaintainActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/rockrobo/more/consumable/ConsumableResetDialog;-><init>(Lcom/rockrobo/more/consumable/ConsumableBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/rockrobo/presenter/RobotPresenterI;)V

    iget-object v0, p0, Lcom/rockrobo/more/consumable/SensorsMaintainActivity$1;->this$0:Lcom/rockrobo/more/consumable/SensorsMaintainActivity;

    iget-object v0, v0, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->setHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/rockrobo/more/consumable/SensorsMaintainActivity$1;->this$0:Lcom/rockrobo/more/consumable/SensorsMaintainActivity;

    invoke-static {v0}, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->access$200(Lcom/rockrobo/more/consumable/SensorsMaintainActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->setDevice(Lcom/rockrobo/xmplugin/Device;)V

    iget-object v0, p0, Lcom/rockrobo/more/consumable/SensorsMaintainActivity$1;->this$0:Lcom/rockrobo/more/consumable/SensorsMaintainActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->show()V

    :cond_0
    return-void
.end method
