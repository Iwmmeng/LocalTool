.class Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;


# direct methods
.method private constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$CheckedStateTracker;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$CheckedStateTracker;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$CheckedStateTracker;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    invoke-static {p2}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->access$300(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$CheckedStateTracker;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->access$302(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;Z)Z

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$CheckedStateTracker;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    invoke-static {p2}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->access$400(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;)I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$CheckedStateTracker;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$CheckedStateTracker;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->access$400(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;)I

    move-result v0

    invoke-static {p2, v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->access$500(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;IZ)V

    :cond_1
    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$CheckedStateTracker;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    invoke-static {p2, v1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->access$302(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;Z)Z

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$CheckedStateTracker;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    invoke-static {p2, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->access$600(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;I)V

    return-void
.end method
