.class public Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;
.super Landroid/app/Dialog;


# instance fields
.field mBackgroundColor:I

.field mItems:[Ljava/lang/CharSequence;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mListView:Landroid/widget/ListView;

.field mListViewAdapter:Landroid/widget/BaseAdapter;

.field mRootView:Landroid/view/View;

.field onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/xiaomi/common/R$style;->V5_MenuDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mBackgroundColor:I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->dismiss()V

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onContentChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x30

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/plug/utils/TitleBarUtil;->enableWhiteTranslucentStatus(Landroid/view/Window;)V

    :try_start_0
    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginCommonApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginCommonApi;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaomi/smarthome/device/api/XmPluginCommonApi;->setMenuDialogWindowAnimations(Landroid/view/Window;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/xiaomi/common/R$layout;->menu_dialog:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/xiaomi/common/R$dimen;->title_bar_top_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mRootView:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/xiaomi/smarthome/common/plug/utils/TitleBarUtil;->setTitleBarPadding(ILandroid/view/View;)V

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mBackgroundColor:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mRootView:Landroid/view/View;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mBackgroundColor:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v1, 0x0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, -0x1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->setCanceledOnTouchOutside(Z)V

    sget p1, Lcom/xiaomi/common/R$id;->select_dialog_listview:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mListView:Landroid/widget/ListView;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$1;-><init>(Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget p1, Lcom/xiaomi/common/R$id;->cancel:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$2;-><init>(Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mListViewAdapter:Landroid/widget/BaseAdapter;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mItems:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$3;

    invoke-direct {p1, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog$3;-><init>(Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;)V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mListViewAdapter:Landroid/widget/BaseAdapter;

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mListViewAdapter:Landroid/widget/BaseAdapter;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mListViewAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void
.end method

.method public setBackGroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mBackgroundColor:I

    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mItems:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setMenuAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MenuDialog;->mListViewAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method
