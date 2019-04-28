.class Lcom/rockrobo/more/TimerListActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/TimerListActivity;->showTimerLastOperationFailDialog(Lcom/rockrobo/more/timer/PlugTimer;)V
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

    iput-object p1, p0, Lcom/rockrobo/more/TimerListActivity$9;->this$0:Lcom/rockrobo/more/TimerListActivity;

    iput-object p2, p0, Lcom/rockrobo/more/TimerListActivity$9;->val$timer:Lcom/rockrobo/more/timer/PlugTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/rockrobo/more/TimerListActivity$9;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-virtual {p2}, Lcom/rockrobo/more/TimerListActivity;->activity()Landroid/app/Activity;

    move-result-object p2

    const-class v0, Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "plug.timer"

    iget-object v1, p0, Lcom/rockrobo/more/TimerListActivity$9;->val$timer:Lcom/rockrobo/more/timer/PlugTimer;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "bundle"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "action.add.plug.timer"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "device_did"

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity$9;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {v0}, Lcom/rockrobo/more/TimerListActivity;->access$1400(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/rockrobo/more/TimerListActivity$9;->this$0:Lcom/rockrobo/more/TimerListActivity;

    const-class v0, Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/rockrobo/more/TimerListActivity;->startActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
