.class public Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$AlertParams;,
        Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;,
        Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static final BIT_BUTTON_NEGATIVE:I = 0x2

.field private static final BIT_BUTTON_NEUTRAL:I = 0x4

.field private static final BIT_BUTTON_POSITIVE:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mAutoDismiss:Z

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomBgTransplant:Z

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mGravity:I

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListLayoutWithTitle:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mTransplantBg:Z

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x50

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mViewSpacingSpecified:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconId:I

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mCheckedItem:I

    iput-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mTransplantBg:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mAutoDismiss:Z

    iput-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mCustomBgTransplant:Z

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$1;-><init>(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)V

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    iput-object p3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    new-instance p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$ButtonHandler;

    invoke-direct {p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mHandler:Landroid/os/Handler;

    sget p1, Lcom/xiaomi/common/R$layout;->ml_alert_dialog:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mAlertDialogLayout:I

    sget p1, Lcom/xiaomi/common/R$layout;->ml_select_dialog:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListLayout:I

    sget p1, Lcom/xiaomi/common/R$layout;->ml_select_dialog_center:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListLayoutWithTitle:I

    sget p1, Lcom/xiaomi/common/R$layout;->ml_select_dialog_multichoice:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mMultiChoiceItemLayout:I

    sget p1, Lcom/xiaomi/common/R$layout;->ml_select_dialog_singlechoice:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mSingleChoiceItemLayout:I

    sget p1, Lcom/xiaomi/common/R$layout;->ml_select_dialog_item:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListItemLayout:I

    iput p4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mGravity:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mGravity:I

    return p0
.end method

.method static synthetic access$1100(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListLayoutWithTitle:I

    return p0
.end method

.method static synthetic access$1202(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1402(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListLayout:I

    return p0
.end method

.method static synthetic access$1600(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mMultiChoiceItemLayout:I

    return p0
.end method

.method static synthetic access$1700(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mSingleChoiceItemLayout:I

    return p0
.end method

.method static synthetic access$1800(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListItemLayout:I

    return p0
.end method

.method static synthetic access$1902(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mAutoDismiss:Z

    return p0
.end method

.method static synthetic access$700(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/content/DialogInterface;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$902(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mTransplantBg:Z

    return p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private centerButton(Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/xiaomi/common/R$drawable;->common_button:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZZLandroid/view/View;)V
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mTransplantBg:Z

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x106000d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iget-object v6, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iget-object v7, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iget-object v8, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iget-object v9, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iget-object v10, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    iget-object v11, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    iget-object v12, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    iget-object v13, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v13, 0x4

    new-array v14, v13, [Landroid/view/View;

    new-array v13, v13, [Z

    const/4 v15, 0x0

    if-eqz p5, :cond_0

    aput-object p1, v14, v15

    aput-boolean v15, v13, v15

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v15

    const/16 v4, 0x8

    const/16 v18, 0x0

    if-ne v15, v4, :cond_1

    move-object/from16 v4, v18

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    aput-object v4, v14, v16

    iget-object v4, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    aput-boolean v4, v13, v16

    const/4 v4, 0x1

    add-int/lit8 v16, v16, 0x1

    if-eqz p3, :cond_3

    aput-object p3, v14, v16

    iget-boolean v1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mForceInverseBackground:Z

    aput-boolean v1, v13, v16

    add-int/lit8 v16, v16, 0x1

    :cond_3
    if-eqz p4, :cond_4

    aput-object p6, v14, v16

    aput-boolean v4, v13, v16

    :cond_4
    move/from16 v19, v3

    move-object/from16 v4, v18

    const/4 v1, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_3
    array-length v3, v14

    if-ge v1, v3, :cond_a

    aget-object v3, v14, v1

    if-nez v3, :cond_5

    goto :goto_6

    :cond_5
    if-eqz v4, :cond_9

    if-nez v17, :cond_7

    if-eqz v15, :cond_6

    move v15, v10

    goto :goto_4

    :cond_6
    move v15, v6

    :goto_4
    invoke-virtual {v4, v15}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_7
    if-eqz v15, :cond_8

    move v15, v11

    goto :goto_4

    :cond_8
    move v15, v7

    goto :goto_4

    :goto_5
    const/16 v17, 0x1

    :cond_9
    aget-boolean v4, v13, v1

    move v15, v4

    move-object v4, v3

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_f

    if-eqz v17, :cond_d

    if-eqz v15, :cond_c

    if-eqz p4, :cond_b

    move v8, v5

    goto :goto_7

    :cond_b
    move v8, v12

    :cond_c
    :goto_7
    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    :cond_d
    if-eqz v15, :cond_e

    goto :goto_8

    :cond_e
    move/from16 v9, v19

    :goto_8
    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_f
    :goto_9
    iget-object v1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListView:Landroid/widget/ListView;

    iget-object v2, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mCheckedItem:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_10

    iget-object v1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListView:Landroid/widget/ListView;

    iget v2, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mCheckedItem:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v1, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListView:Landroid/widget/ListView;

    iget v2, v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mCheckedItem:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_10
    return-void
.end method

.method private setupButtons()Z
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/xiaomi/common/R$id;->button1:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/xiaomi/common/R$id;->button2:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/xiaomi/common/R$id;->button3:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    :goto_2
    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->shouldCenterSingleButton(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne v0, v1, :cond_3

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonPositive:Landroid/widget/Button;

    :goto_3
    invoke-direct {p0, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->centerButton(Landroid/widget/TextView;)V

    goto :goto_4

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_3

    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_3

    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/xiaomi/common/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcom/xiaomi/common/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcom/xiaomi/common/R$id;->scrollView:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v0, Lcom/xiaomi/common/R$id;->title_template:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/xiaomi/common/R$id;->icon:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v0, Lcom/xiaomi/common/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconId:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconId:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcom/xiaomi/common/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return v1
.end method

.method private setupView()V
    .locals 12

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/xiaomi/common/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct {p0, v3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setupButtons()Z

    move-result v5

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/xiaomi/common/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/xiaomi/common/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v0, 0x8

    if-nez v5, :cond_0

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcom/xiaomi/common/R$id;->customPanel:I

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcom/xiaomi/common/R$id;->custom:I

    invoke-virtual {v1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-boolean v8, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mViewSpacingSpecified:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mViewSpacingLeft:I

    iget v9, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mViewSpacingTop:I

    iget v10, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mViewSpacingRight:I

    iget v11, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mViewSpacingBottom:I

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mCustomBgTransplant:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mTransplantBg:Z

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mTransplantBg:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcom/xiaomi/common/R$id;->parentPanel:I

    invoke-virtual {v1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v8, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcom/xiaomi/common/R$id;->title_divider_line:I

    invoke-virtual {v1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v9, Lcom/xiaomi/common/R$id;->title_divider_line_bottom:I

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcom/xiaomi/common/R$id;->title_divider_line:I

    invoke-virtual {v1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcom/xiaomi/common/R$id;->title_divider_line_bottom:I

    invoke-virtual {v1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_6

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_6

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v7, v1, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZZLandroid/view/View;)V

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcom/xiaomi/common/R$id;->empty_view:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method private static shouldCenterSingleButton(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p1

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mView:Landroid/view/View;

    return-object v0
.end method

.method public installContent()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mGravity:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setupView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendDismissMessage()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setAudoDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mAutoDismiss:Z

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object p4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-void

    :pswitch_1
    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-void

    :pswitch_2
    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setCustomTransplant(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mCustomBgTransplant:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconId:I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mForceInverseBackground:Z

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mView:Landroid/view/View;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mViewSpacingSpecified:Z

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mViewSpacingLeft:I

    iput p3, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mViewSpacingTop:I

    iput p4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mViewSpacingRight:I

    iput p5, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->mViewSpacingBottom:I

    return-void
.end method
