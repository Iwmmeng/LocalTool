.class Lcom/rockrobo/more/consumable/ConsumableResetDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/consumable/ConsumableResetDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/consumable/ConsumableResetDialog;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/consumable/ConsumableResetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog$2;->this$0:Lcom/rockrobo/more/consumable/ConsumableResetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance p1, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    iget-object p2, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog$2;->this$0:Lcom/rockrobo/more/consumable/ConsumableResetDialog;

    invoke-static {p2}, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->access$000(Lcom/rockrobo/more/consumable/ConsumableResetDialog;)Lcom/rockrobo/more/consumable/ConsumableBaseActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelable(Z)V

    iget-object p2, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog$2;->this$0:Lcom/rockrobo/more/consumable/ConsumableResetDialog;

    invoke-static {p2}, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->access$000(Lcom/rockrobo/more/consumable/ConsumableResetDialog;)Lcom/rockrobo/more/consumable/ConsumableBaseActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0a0047

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog$2;->this$0:Lcom/rockrobo/more/consumable/ConsumableResetDialog;

    invoke-static {p2}, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->access$200(Lcom/rockrobo/more/consumable/ConsumableResetDialog;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object p2

    iget-object v0, p0, Lcom/rockrobo/more/consumable/ConsumableResetDialog$2;->this$0:Lcom/rockrobo/more/consumable/ConsumableResetDialog;

    invoke-static {v0}, Lcom/rockrobo/more/consumable/ConsumableResetDialog;->access$100(Lcom/rockrobo/more/consumable/ConsumableResetDialog;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v0, v1, v2, p1}, Lcom/rockrobo/presenter/RobotPresenterI;->resetConsumable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show()V

    return-void
.end method
