.class public Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;,
        Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$CheckedStateTracker;,
        Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$OnCheckedChangeListener;,
        Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mCheckedId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mProtectFromCheckedChange:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->setOrientation(I)V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mCheckedId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mProtectFromCheckedChange:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->setOrientation(I)V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mProtectFromCheckedChange:Z

    return p0
.end method

.method static synthetic access$302(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mCheckedId:I

    return p0
.end method

.method static synthetic access$500(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method private init()V
    .locals 2

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$CheckedStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$CheckedStateTracker;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$1;)V

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$1;)V

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mPassThroughListener:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mPassThroughListener:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private setCheckedId(I)V
    .locals 1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mCheckedId:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mOnCheckedChangeListener:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$OnCheckedChangeListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mOnCheckedChangeListener:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$OnCheckedChangeListener;

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mCheckedId:I

    invoke-interface {p1, p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;I)V

    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/RadioButton;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->findRadioButton(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    instance-of v0, p1, Landroid/widget/RadioButton;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mProtectFromCheckedChange:Z

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mCheckedId:I

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->findRadioButton(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v4, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$1;

    invoke-direct {v4, p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$1;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;Landroid/widget/RadioButton;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mProtectFromCheckedChange:Z

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mCheckedId:I

    if-eq v2, v1, :cond_1

    :goto_0
    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mCheckedId:I

    invoke-direct {p0, v1, v3}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->setCheckedStateForView(IZ)V

    :cond_1
    iput-boolean v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mProtectFromCheckedChange:Z

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->setCheckedId(I)V

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public check(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mCheckedId:I

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mCheckedId:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mCheckedId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->setCheckedStateForView(IZ)V

    :cond_1
    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->setCheckedStateForView(IZ)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->setCheckedId(I)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$LayoutParams;

    return p1
.end method

.method public clearCheck()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->check(I)V

    return-void
.end method

.method public findRadioButton(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->findRadioButton(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mCheckedId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mProtectFromCheckedChange:Z

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mCheckedId:I

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->setCheckedStateForView(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mProtectFromCheckedChange:Z

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->setCheckedId(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mOnCheckedChangeListener:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->mPassThroughListener:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;->access$202(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method
