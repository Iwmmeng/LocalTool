.class Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->access$000(Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->getMax()I

    move-result p1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->access$000(Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-static {v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->access$100(Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v1

    if-eqz v1, :cond_0

    int-to-double v0, v0

    int-to-double v2, p1

    div-double/2addr v0, v2

    new-instance p1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-static {v2}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->access$100(Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->access$200(Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->access$200(Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
