.class Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;

    iput-boolean p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1$1;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iget-boolean v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1$1;->val$isChecked:Z

    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method
