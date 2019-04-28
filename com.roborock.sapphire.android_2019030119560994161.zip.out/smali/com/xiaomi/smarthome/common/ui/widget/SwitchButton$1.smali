.class Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;->mCanceled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mAnimator:Landroid/animation/Animator;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iget p1, p1, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iget v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderPositionEnd:I

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    new-instance v1, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1$1;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;->mCanceled:Z

    return-void
.end method
