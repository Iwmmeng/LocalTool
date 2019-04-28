.class Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/clean/CleanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapViewAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/clean/CleanActivity;

.field private final view:Landroid/view/View;

.field private final visible:Z


# direct methods
.method public constructor <init>(Lcom/rockrobo/clean/CleanActivity;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->visible:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    invoke-static {}, Lcom/rockrobo/clean/CleanActivity;->access$1300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationEnd Entry!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rockrobo/clean/CleanActivity;->access$5902(Lcom/rockrobo/clean/CleanActivity;Z)Z

    iget-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->visible:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->view:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$800(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/map/MapViewI;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$2200(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/clean/RobotStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v1}, Lcom/rockrobo/clean/CleanActivity;->access$6000(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/clean/CleanStrategy;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/rockrobo/map/MapViewI;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/CleanStrategy;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/rockrobo/clean/CleanActivity;->access$5902(Lcom/rockrobo/clean/CleanActivity;Z)Z

    invoke-static {}, Lcom/rockrobo/clean/CleanActivity;->access$1300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationStart entry!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->visible:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/rockrobo/clean/CleanActivity;->access$1300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Set view to visible!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$800(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/map/MapViewI;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$2200(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/clean/RobotStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v1}, Lcom/rockrobo/clean/CleanActivity;->access$6000(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/clean/CleanStrategy;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/rockrobo/map/MapViewI;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/CleanStrategy;)V

    :cond_0
    return-void
.end method
