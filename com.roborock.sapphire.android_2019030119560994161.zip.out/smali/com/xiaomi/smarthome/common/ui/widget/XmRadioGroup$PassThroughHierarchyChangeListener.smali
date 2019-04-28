.class Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;


# direct methods
.method private constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;)V

    return-void
.end method

.method static synthetic access$202(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    const/4 v1, -0x1

    if-ne p1, v0, :cond_2

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/RadioButton;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    invoke-static {v1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->access$700(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    if-ne p1, v0, :cond_3

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->findRadioButton(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setId(I)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/widget/RadioButton;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->findRadioButton(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method
