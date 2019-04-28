.class Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->createCenterListView(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$1;->val$dialog:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object p1, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$1;->val$dialog:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$700(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/content/DialogInterface;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$1;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-boolean p1, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$1;->val$dialog:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$700(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/content/DialogInterface;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
