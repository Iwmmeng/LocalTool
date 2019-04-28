.class Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$000(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$100(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$100(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/os/Message;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$200(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$300(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$300(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$400(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$500(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$500(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$600(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$800(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$700(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    return-void
.end method
