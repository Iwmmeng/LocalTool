.class Lcom/rockrobo/more/timer/SetTimerActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/timer/SetTimerActivity;->showClearOnBtn()V
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

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$7;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$7;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$7;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$1200(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/PlugTimer;

    move-result-object v0

    iget-object v0, v0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v0}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-static {p1, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$302(Lcom/rockrobo/more/timer/SetTimerActivity;Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$7;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$400(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$7;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object v0

    iget v0, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$7;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$400(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$7;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object v0

    iget v0, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$7;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$702(Lcom/rockrobo/more/timer/SetTimerActivity;Z)Z

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$7;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$1300(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/Button;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$7;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$800(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f0a0170

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
