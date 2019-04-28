.class Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$3;
.super Landroid/widget/BaseAdapter;


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

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$3;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$3;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$3;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mItems:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$3;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;

    iget-object p2, p2, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/xiaomi/common/R$layout;->menu_dialog_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    sget p3, Lcom/xiaomi/common/R$id;->text1:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$3;->this$0:Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mItems:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
