.class Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$2;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$2;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->access$300(Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$2;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->access$300(Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$2;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->cancel()V

    return-void
.end method
