.class Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/clean/CleanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeBarAnimatorUpdateListener"
.end annotation


# static fields
.field public static final PHASE_1:F = 0.7f


# instance fields
.field private final in:Z

.field final synthetic this$0:Lcom/rockrobo/clean/CleanActivity;


# direct methods
.method public constructor <init>(Lcom/rockrobo/clean/CleanActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->in:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-static {}, Lcom/rockrobo/clean/CleanActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animated value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$6100(Lcom/rockrobo/clean/CleanActivity;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v1}, Lcom/rockrobo/clean/CleanActivity;->access$400(Lcom/rockrobo/clean/CleanActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0, v1}, Lcom/rockrobo/clean/CleanActivity;->access$6102(Lcom/rockrobo/clean/CleanActivity;Landroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    :cond_0
    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->in:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float p1, v0, p1

    :goto_0
    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->in:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$400(Lcom/rockrobo/clean/CleanActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v2}, Lcom/rockrobo/clean/CleanActivity;->access$6200(Lcom/rockrobo/clean/CleanActivity;)F

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/rockrobo/clean/CleanActivity;->access$6300(Lcom/rockrobo/clean/CleanActivity;FF)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$400(Lcom/rockrobo/clean/CleanActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->in:Z

    if-nez v0, :cond_3

    cmpl-float v0, p1, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$400(Lcom/rockrobo/clean/CleanActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v2}, Lcom/rockrobo/clean/CleanActivity;->access$6200(Lcom/rockrobo/clean/CleanActivity;)F

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/rockrobo/clean/CleanActivity;->access$6300(Lcom/rockrobo/clean/CleanActivity;FF)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$400(Lcom/rockrobo/clean/CleanActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    goto :goto_1

    :cond_3
    :goto_2
    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3f333333    # 0.7f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_4

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$6200(Lcom/rockrobo/clean/CleanActivity;)F

    move-result v0

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v2}, Lcom/rockrobo/clean/CleanActivity;->access$6400(Lcom/rockrobo/clean/CleanActivity;)F

    move-result v2

    mul-float v2, v2, p1

    div-float/2addr v2, v1

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v2}, Lcom/rockrobo/clean/CleanActivity;->access$6200(Lcom/rockrobo/clean/CleanActivity;)F

    move-result v2

    iget-object v3, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v3}, Lcom/rockrobo/clean/CleanActivity;->access$6500(Lcom/rockrobo/clean/CleanActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v4}, Lcom/rockrobo/clean/CleanActivity;->access$6200(Lcom/rockrobo/clean/CleanActivity;)F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr p1, v1

    mul-float v3, v3, p1

    div-float/2addr v3, v0

    add-float v0, v2, v3

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$6400(Lcom/rockrobo/clean/CleanActivity;)F

    move-result v2

    :goto_3
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1, v0, v2}, Lcom/rockrobo/clean/CleanActivity;->access$6300(Lcom/rockrobo/clean/CleanActivity;FF)V

    return-void
.end method
