.class public Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    return-void
.end method


# virtual methods
.method public create()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;
    .locals 3

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mItemTexts:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->access$000(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->apply(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mDismissCallBack:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setDismissCallBack(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;)V

    :try_start_0
    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginCommonApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginCommonApi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/smarthome/device/api/XmPluginCommonApi;->setWindowAnimations(Landroid/app/Dialog;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public createCenter()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;
    .locals 7

    new-instance v6, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;II)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iput-object v0, v6, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mItemTexts:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    invoke-static {v6}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->access$000(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->apply(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v6, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCancelable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v6, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v6, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mDismissCallBack:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;

    invoke-virtual {v6, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setDismissCallBack(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;)V

    return-object v6
.end method

.method public getInputView()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setAudoDismiss(Z)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mAutoDismiss:Z

    return-object p0
.end method

.method public setCancelable(Z)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p3, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setCustomTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCustomTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDismissCallBack(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mDismissCallBack:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;

    return-object p0
.end method

.method public setIcon(I)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setInputView(Ljava/lang/String;Z)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 9

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->mContext:Landroid/content/Context;

    sget v1, Lcom/xiaomi/common/R$layout;->ml_alert_dialog_input_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaomi/common/R$dimen;->alertdialog_button_panel_padding_horizontal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaomi/common/R$dimen;->alertdialog_button_panel_padding_horizontal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaomi/common/R$dimen;->alertdialog_custom_panel_padding_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    sget v1, Lcom/xiaomi/common/R$id;->input_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSingleLine(Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mForceInverseBackground:Z

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p3, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCheckedItems:[Z

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p4, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p3, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p3, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCheckedItems:[Z

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mRecycleOnMeasure:Z

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p3, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCheckedItem:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p4, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCheckedItem:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p3, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p3, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCheckedItem:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p3, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCheckedItem:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mView:Landroid/view/View;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingSpecified:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mView:Landroid/view/View;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingSpecified:Z

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingLeft:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput p3, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingTop:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput p4, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingRight:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput p5, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingBottom:I

    return-object p0
.end method

.method public setView(Landroid/view/View;IIIIZ)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-object p1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mView:Landroid/view/View;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingSpecified:Z

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput p2, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingLeft:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput p3, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingTop:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput p4, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingRight:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput p5, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingBottom:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->P:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;

    iput-boolean p6, p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCustomBgTransplant:Z

    return-object p0
.end method

.method public show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->create()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->show()V

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method public showCenter()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->createCenter()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->show()V

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method
