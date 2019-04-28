.class Lcom/rockrobo/more/consumable/FilterActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/consumable/FilterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/consumable/FilterActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/consumable/FilterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/consumable/FilterActivity$1;->this$0:Lcom/rockrobo/more/consumable/FilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    sget-object p1, Lcom/rockrobo/more/consumable/FilterActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "filter reset enter"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/consumable/FilterActivity$1;->this$0:Lcom/rockrobo/more/consumable/FilterActivity;

    new-instance v6, Lcom/rockrobo/more/consumable/ConsumableResetDialog;

    iget-object v1, p0, Lcom/rockrobo/more/consumable/FilterActivity$1;->this$0:Lcom/rockrobo/more/consumable/FilterActivity;

    iget-object v0, p0, Lcom/rockrobo/more/consumable/FilterActivity$1;->this$0:Lcom/rockrobo/more/consumable/FilterActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/consumable/FilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00d2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/rockrobo/more/consumable/FilterActivity$1;->this$0:Lcom/rockrobo/more/consumable/FilterActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/consumable/FilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a00d1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "user.filter_work_time"

    iget-object v0, p0, Lcom/rockrobo/more/consumable/FilterActivity$1;->this$0:Lcom/rockrobo/more/consumable/FilterActivity;

    invoke-static {v0}, Lcom/rockrobo/more/consumable/FilterActivity;->access$000(Lcom/rockrobo/more/consumable/FilterActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/rockrobo/more/consumable/ConsumableResetDialog;-><init>(Lcom/rockrobo/more/consumable/ConsumableBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/rockrobo/presenter/RobotPresenterI;)V

    iput-object v6, p1, Lcom/rockrobo/more/consumable/FilterActivity;->dialog:Lcom/rockrobo/more/consumable/ConsumableResetDialog;

    iget-object p1, p0, Lcom/rockrobo/more/consumable/FilterActivity$1;->this$0:Lcom/rockrobo/more/consumable/FilterActivity;

    iget-object p1, p1, Lcom/rockrobo/more/consumable/FilterActivity;->dialog:Lcom/rockrobo/more/consumable/ConsumableResetDialog;

    iget-object v0, p0, Lcom/rockrobo/more/consumable/FilterActivity$1;->this$0:Lcom/rockrobo/more/consumable/FilterActivity;

    iget-object v0, v0, Lcom/rockrobo/more/consumable/FilterActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->setHandler(Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/rockrobo/more/consumable/FilterActivity$1;->this$0:Lcom/rockrobo/more/consumable/FilterActivity;

    iget-object p1, p1, Lcom/rockrobo/more/consumable/FilterActivity;->dialog:Lcom/rockrobo/more/consumable/ConsumableResetDialog;

    iget-object v0, p0, Lcom/rockrobo/more/consumable/FilterActivity$1;->this$0:Lcom/rockrobo/more/consumable/FilterActivity;

    invoke-static {v0}, Lcom/rockrobo/more/consumable/FilterActivity;->access$100(Lcom/rockrobo/more/consumable/FilterActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->setDevice(Lcom/rockrobo/xmplugin/Device;)V

    iget-object p1, p0, Lcom/rockrobo/more/consumable/FilterActivity$1;->this$0:Lcom/rockrobo/more/consumable/FilterActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/consumable/FilterActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/consumable/FilterActivity$1;->this$0:Lcom/rockrobo/more/consumable/FilterActivity;

    iget-object p1, p1, Lcom/rockrobo/more/consumable/FilterActivity;->dialog:Lcom/rockrobo/more/consumable/ConsumableResetDialog;

    invoke-virtual {p1}, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->show()V

    :cond_0
    return-void
.end method
