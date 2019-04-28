.class Lcom/rockrobo/more/timer/SetTimerActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/timer/SetTimerActivity;->showRepeatDialog()V
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

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$1900(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    goto :goto_1

    :pswitch_1
    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object p2

    const/16 v0, 0x41

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object p2

    const/16 v0, 0x3e

    goto :goto_0

    :pswitch_3
    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object p2

    const/16 v0, 0x7f

    goto :goto_0

    :pswitch_4
    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->setRepeat(I)V

    :goto_1
    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object p2

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-virtual {p2, v0}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->getRepeatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    const v1, 0x7f0a017c

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    const v1, 0x7f0a017d

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    const v0, 0x7f0a0176

    invoke-virtual {p2, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$2000(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->calTimeDiff(Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    const v1, 0x7f0a0173

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$10;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$500(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
