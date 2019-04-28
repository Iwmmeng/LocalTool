.class Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$3;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->createListView(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

.field final synthetic val$listView:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$3;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p6, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$3;->val$listView:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$3;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object p3, p3, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$3;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object p3, p3, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean p3, p3, p1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$3;->val$listView:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->setItemChecked(IZ)V

    :cond_0
    return-object p2
.end method
