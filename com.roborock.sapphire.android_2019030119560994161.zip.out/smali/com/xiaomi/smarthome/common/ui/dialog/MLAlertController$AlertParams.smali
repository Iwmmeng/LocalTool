.class public Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mAutoDismiss:Z

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomBgTransplant:Z

.field public mCustomTitle:Ljava/lang/CharSequence;

.field public mCustomTitleView:Landroid/view/View;

.field public mDismissCallBack:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIconId:I

    iput-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingSpecified:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCheckedItem:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mAutoDismiss:Z

    iput-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCustomBgTransplant:Z

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCancelable:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createCenterListView(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V
    .locals 11

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$1100(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/xiaomi/common/R$id;->select_dialog_listview:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;

    sget v4, Lcom/xiaomi/common/R$layout;->ml_center_item:I

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    sget v5, Lcom/xiaomi/common/R$id;->text1:I

    iget-object v6, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    new-array v10, v8, [I

    sget v2, Lcom/xiaomi/common/R$id;->text1:I

    aput v2, v10, v7

    move-object v2, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    :goto_0
    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCustomTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    sget v3, Lcom/xiaomi/common/R$id;->title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCustomTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v3, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    :cond_3
    invoke-static {p1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$1202(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCheckedItem:I

    invoke-static {p1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$1302(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;I)I

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$1;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$1;-><init>(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V

    :goto_1
    invoke-virtual {v1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v2, :cond_5

    new-instance v2, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$2;-><init>(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_6
    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_7
    iget-boolean v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v2, :cond_8

    invoke-virtual {v1, v8}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_3

    :cond_8
    iget-boolean v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->setChoiceMode(I)V

    :cond_9
    :goto_3
    iget-boolean v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v2, v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->mRecycleOnMeasure:Z

    invoke-static {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$1402(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;Landroid/view/View;)Landroid/view/View;

    invoke-static {p1, v8}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$902(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;Z)Z

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCustomBgTransplant:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setCustomTransplant(Z)V

    return-void
.end method

.method private createListView(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V
    .locals 10

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$1500(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;

    iget-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsMultiChoice:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    new-instance v9, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$3;

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$1600(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)I

    move-result v4

    sget v5, Lcom/xiaomi/common/R$id;->text1:I

    iget-object v6, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$3;-><init>(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;)V

    goto :goto_3

    :cond_0
    new-instance v9, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$4;-><init>(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V

    goto :goto_3

    :cond_1
    iget-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$1700(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)I

    move-result v1

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$1800(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)I

    move-result v1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_2

    :cond_3
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    sget v3, Lcom/xiaomi/common/R$id;->text1:I

    iget-object v5, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v1, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    new-array v9, v8, [I

    sget v2, Lcom/xiaomi/common/R$id;->text1:I

    aput v2, v9, v7

    move-object v2, v1

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    :goto_2
    move-object v9, v1

    :goto_3
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    :cond_5
    invoke-static {p1, v9}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$1202(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCheckedItem:I

    invoke-static {p1, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$1302(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;I)I

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_6

    new-instance v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$5;-><init>(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V

    :goto_4
    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_7

    new-instance v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams$6;-><init>(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V

    goto :goto_4

    :cond_7
    :goto_5
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_8
    iget-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0, v8}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_6

    :cond_9
    iget-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->setChoiceMode(I)V

    :cond_a
    :goto_6
    iget-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->mRecycleOnMeasure:Z

    invoke-static {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$1902(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCustomBgTransplant:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setCustomTransplant(Z)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setIcon(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setMessage(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    const/4 v0, -0x2

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    const/4 v0, -0x3

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_7
    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setInverseBackgroundForced(Z)V

    :cond_8
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$902(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;Z)Z

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    :cond_9
    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->access$1000(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_a

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->createCenterListView(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V

    goto :goto_1

    :cond_a
    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->createListView(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V

    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mView:Landroid/view/View;

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingLeft:I

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingTop:I

    iget v5, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingRight:I

    iget v6, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setView(Landroid/view/View;)V

    :cond_d
    :goto_2
    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mAutoDismiss:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setAudoDismiss(Z)V

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;->mCustomBgTransplant:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setCustomTransplant(Z)V

    return-void
.end method
