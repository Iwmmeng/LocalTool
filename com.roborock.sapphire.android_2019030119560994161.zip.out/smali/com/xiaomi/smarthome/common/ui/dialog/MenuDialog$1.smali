.class Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;

    iget-object p1, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->dismiss()V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;

    iget-object p1, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
