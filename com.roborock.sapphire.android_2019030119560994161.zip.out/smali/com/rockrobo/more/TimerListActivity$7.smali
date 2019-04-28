.class Lcom/rockrobo/more/TimerListActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/TimerListActivity;->deleteTimer(Lcom/rockrobo/more/timer/PlugTimer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/TimerListActivity;

.field final synthetic val$timer:Lcom/rockrobo/more/timer/PlugTimer;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/TimerListActivity;Lcom/rockrobo/more/timer/PlugTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/TimerListActivity$7;->this$0:Lcom/rockrobo/more/TimerListActivity;

    iput-object p2, p0, Lcom/rockrobo/more/TimerListActivity$7;->val$timer:Lcom/rockrobo/more/timer/PlugTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$7;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {p1}, Lcom/rockrobo/more/TimerListActivity;->access$1100(Lcom/rockrobo/more/TimerListActivity;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show()V

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$7;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {p1}, Lcom/rockrobo/more/TimerListActivity;->access$000(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/more/timer/TimerCommonManager;

    move-result-object p1

    iget-object p2, p0, Lcom/rockrobo/more/TimerListActivity$7;->val$timer:Lcom/rockrobo/more/timer/PlugTimer;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/rockrobo/more/timer/TimerCommonManager;->deleteTimer(Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$7;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {p1}, Lcom/rockrobo/more/TimerListActivity;->access$1200(Lcom/rockrobo/more/TimerListActivity;)V

    return-void
.end method
