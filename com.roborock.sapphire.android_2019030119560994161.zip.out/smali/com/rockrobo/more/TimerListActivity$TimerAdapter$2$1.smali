.class Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2$1;->this$2:Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSceneFailed(I)V
    .locals 0

    return-void
.end method

.method public onGetSceneSuccess()V
    .locals 0

    return-void
.end method

.method public onSetSceneFailed()V
    .locals 0

    return-void
.end method

.method public onSetSceneSuccess(Lcom/rockrobo/more/timer/CommonTimer;)V
    .locals 2

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/rockrobo/more/timer/CommonTimer;->status:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2$1;->this$2:Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;

    iget-object p1, p1, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;->this$1:Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/TimerListActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2$1;->this$2:Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;

    iget-object p1, p1, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;->this$1:Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/TimerListActivity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2$1;->this$2:Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;

    iget-object p1, p1, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;->this$1:Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/TimerListActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a01d6

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    return-void

    :cond_1
    return-void
.end method
