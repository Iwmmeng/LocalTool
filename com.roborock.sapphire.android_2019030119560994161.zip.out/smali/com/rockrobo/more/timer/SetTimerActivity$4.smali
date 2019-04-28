.class Lcom/rockrobo/more/timer/SetTimerActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/timer/SetTimerActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$4;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;II)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$4;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$702(Lcom/rockrobo/more/timer/SetTimerActivity;Z)Z

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$4;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object p1

    iput p2, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$4;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object p1

    iput p3, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$4;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$800(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p2, p3}, Lcom/rockrobo/more/timer/PlugTimer;->formatTime(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$4;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    iget-object p3, p0, Lcom/rockrobo/more/timer/SetTimerActivity$4;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p3}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/rockrobo/more/timer/SetTimerActivity;->calTimeDiff(Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$4;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    const p3, 0x7f0a0173

    invoke-virtual {p2, p3}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$4;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$500(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$4;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$500(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$4;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$900(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    return-void
.end method
