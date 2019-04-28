.class Lcom/rockrobo/more/timer/SetTimerActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/timer/SetTimerActivity;->initTitleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/timer/SetTimerActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$9;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$9;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$1600(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/PlugTimer;

    move-result-object p1

    iget-boolean v0, p1, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$9;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a017f

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$9;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$1800(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/TimerCommonManager;

    move-result-object v0

    iget-object v2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$9;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v2}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$1700(Lcom/rockrobo/more/timer/SetTimerActivity;)Z

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/rockrobo/more/timer/TimerCommonManager;->isTimerAlreadyExist(Lcom/rockrobo/more/timer/PlugTimer;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$9;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a016a

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$9;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$000(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show()V

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$9;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$1800(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/TimerCommonManager;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$9;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$1200(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/PlugTimer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/rockrobo/more/timer/TimerCommonManager;->setTimer(Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V

    return-void
.end method
