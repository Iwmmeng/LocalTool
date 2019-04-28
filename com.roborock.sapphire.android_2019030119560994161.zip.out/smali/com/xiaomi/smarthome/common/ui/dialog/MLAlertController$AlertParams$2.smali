.class Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$2;
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

.field final synthetic val$listView:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$2;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$2;->val$listView:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;

    iput-object p3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$2;->val$dialog:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$2;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object p1, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$2;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object p1, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCheckedItems:[Z

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$2;->val$listView:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;

    invoke-virtual {p2, p3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$2;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object p1, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$2;->val$dialog:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$700(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/content/DialogInterface;

    move-result-object p2

    iget-object p4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$2;->val$listView:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;

    invoke-virtual {p4, p3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->isItemChecked(I)Z

    move-result p4

    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
