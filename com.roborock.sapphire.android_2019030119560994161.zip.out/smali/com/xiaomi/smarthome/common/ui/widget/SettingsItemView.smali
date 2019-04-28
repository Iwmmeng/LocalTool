.class public Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$OnSelectedListener;
    }
.end annotation


# instance fields
.field mContainerView:Landroid/view/View;

.field mInfoTextView:Landroid/widget/TextView;

.field mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field mOnSelectedListener:Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$OnSelectedListener;

.field mOnclickImageView:Landroid/widget/ImageView;

.field mSelectImageView:Landroid/widget/ImageView;

.field mSelected:Z

.field mSubTitleTextView:Landroid/widget/TextView;

.field mSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

.field mTitleContainer:Landroid/view/View;

.field mTitleTextView:Landroid/widget/TextView;

.field mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSelected:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaomi/common/R$layout;->settings_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mContainerView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lcom/xiaomi/common/R$id;->settings_item_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mTitleTextView:Landroid/widget/TextView;

    sget v1, Lcom/xiaomi/common/R$id;->settings_item_sub_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSubTitleTextView:Landroid/widget/TextView;

    sget v1, Lcom/xiaomi/common/R$id;->settings_item_switch_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    sget v1, Lcom/xiaomi/common/R$id;->settings_item_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mOnclickImageView:Landroid/widget/ImageView;

    sget v1, Lcom/xiaomi/common/R$id;->settings_item_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mInfoTextView:Landroid/widget/TextView;

    sget v1, Lcom/xiaomi/common/R$id;->settings_item_select:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSelectImageView:Landroid/widget/ImageView;

    sget v1, Lcom/xiaomi/common/R$id;->title_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mTitleContainer:Landroid/view/View;

    sget-object v0, Lcom/xiaomi/common/R$styleable;->SettingsItem:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/xiaomi/common/R$styleable;->SettingsItem_item_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/xiaomi/common/R$styleable;->SettingsItem_item_subtitle:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/xiaomi/common/R$styleable;->SettingsItem_item_info:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/xiaomi/common/R$styleable;->SettingsItem_item_type:I

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mType:I

    sget v3, Lcom/xiaomi/common/R$styleable;->SettingsItem_item_select:I

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSelected:Z

    sget v3, Lcom/xiaomi/common/R$styleable;->SettingsItem_item_line_margin:I

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p2}, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->setSubTitle(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->setInfo(Ljava/lang/String;)V

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mType:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->setType(I)V

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p2, -0x1a1a1b

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x50

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, v3, p3, v3, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getInfoView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mInfoTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->isChecked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSelected:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-virtual {p1, p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mInfoTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mInfoTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    goto :goto_0

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSelectedListener(Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$OnSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mOnSelectedListener:Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$OnSelectedListener;

    return-void
.end method

.method public setSelect(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSelected:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSelectImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaomi/common/R$color;->std_word_008:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaomi/common/R$color;->settings_title_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSelectImageView:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSubTitleTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSubTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSubTitleTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    goto :goto_0

    return-void
.end method

.method public setSwitchEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setType(I)V
    .locals 2

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mType:I

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mType:I

    const/16 v0, 0x8

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mOnclickImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSelectImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mType:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mContainerView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mType:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mOnclickImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-virtual {p1, p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mType:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mOnclickImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mContainerView:Landroid/view/View;

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$1;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSelected:Z

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->setSelect(Z)V

    :cond_3
    return-void
.end method
