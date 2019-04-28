.class Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$2;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$2;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->dismiss()V

    return-void
.end method
