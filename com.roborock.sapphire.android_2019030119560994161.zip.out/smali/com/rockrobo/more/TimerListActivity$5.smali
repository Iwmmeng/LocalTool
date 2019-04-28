.class Lcom/rockrobo/more/TimerListActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/TimerListActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/TimerListActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/TimerListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/TimerListActivity$5;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$5;->this$0:Lcom/rockrobo/more/TimerListActivity;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/rockrobo/more/TimerListActivity;->access$900(Lcom/rockrobo/more/TimerListActivity;I)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity$5;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/TimerListActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0a0126

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setMessage(I)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0a0155

    new-instance v1, Lcom/rockrobo/more/TimerListActivity$5$1;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/TimerListActivity$5$1;-><init>(Lcom/rockrobo/more/TimerListActivity$5;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity$5;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/TimerListActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/rockrobo/more/timer/PlugTimer;

    invoke-direct {v1, v0}, Lcom/rockrobo/more/timer/PlugTimer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, v1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, v3, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    iget-object v3, v1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v3, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    iget-object v2, v1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->setRepeat(I)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "plug.timer"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "bundle"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "action.add.plug.timer"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "device_did"

    iget-object v1, p0, Lcom/rockrobo/more/TimerListActivity$5;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {v1}, Lcom/rockrobo/more/TimerListActivity;->access$1000(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity$5;->this$0:Lcom/rockrobo/more/TimerListActivity;

    const-class v1, Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/rockrobo/more/TimerListActivity;->startActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
