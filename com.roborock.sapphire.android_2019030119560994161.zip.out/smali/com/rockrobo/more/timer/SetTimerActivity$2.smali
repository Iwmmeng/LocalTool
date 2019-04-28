.class Lcom/rockrobo/more/timer/SetTimerActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$2;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$2;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$200(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$2;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->highLightTimerOn(Z)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$2;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->lowLightCleanMode(Z)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$2;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$400(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$2;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object v0

    iget v0, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$2;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$400(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$2;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object v0

    iget v0, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$2;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$500(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$2;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$2;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->calTimeDiff(Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$2;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    const v1, 0x7f0a0173

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$2;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$500(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
