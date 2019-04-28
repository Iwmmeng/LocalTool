.class public Lcom/xiaomi/smarthome/common/ui/widget/SingleCheckLinearLayout;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field mContext:Landroid/content/Context;

.field mSelectImageIconView:Landroid/view/View;

.field mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SingleCheckLinearLayout;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/xiaomi/common/R$id;->select_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SingleCheckLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SingleCheckLinearLayout;->mSelectImageIconView:Landroid/view/View;

    sget v0, Lcom/xiaomi/common/R$id;->text1:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SingleCheckLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SingleCheckLinearLayout;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SingleCheckLinearLayout;->mSelectImageIconView:Landroid/view/View;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SingleCheckLinearLayout;->mSelectImageIconView:Landroid/view/View;

    const/4 v1, 0x4

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SingleCheckLinearLayout;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public toggle()V
    .locals 0

    return-void
.end method
