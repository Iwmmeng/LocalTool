.class Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->showSoftInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    invoke-static {v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->access$000(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
