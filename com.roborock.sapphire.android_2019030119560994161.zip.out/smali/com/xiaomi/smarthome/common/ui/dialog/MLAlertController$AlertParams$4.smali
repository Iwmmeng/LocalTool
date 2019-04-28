.class Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;
.super Landroid/widget/CursorAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->createListView(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

.field final synthetic val$listView:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p5, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;->val$listView:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;

    iput-object p6, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;->val$dialog:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object p2, p2, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;->mLabelIndex:I

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object p2, p2, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;->mIsCheckedIndex:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    sget p2, Lcom/xiaomi/common/R$id;->text1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;->mLabelIndex:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;->val$listView:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;->mIsCheckedIndex:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->setItemChecked(IZ)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object p1, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;->val$dialog:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-static {p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$1600(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
