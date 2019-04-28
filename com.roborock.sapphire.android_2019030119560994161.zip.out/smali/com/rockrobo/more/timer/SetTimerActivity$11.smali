.class Lcom/rockrobo/more/timer/SetTimerActivity$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/timer/SetTimerActivity;->showSubRepeatDialog()V
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

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$11;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$11;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$2100(Lcom/rockrobo/more/timer/SetTimerActivity;)[Z

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$11;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$2100(Lcom/rockrobo/more/timer/SetTimerActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    return-void

    :cond_2
    :goto_2
    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$11;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$2100(Lcom/rockrobo/more/timer/SetTimerActivity;)[Z

    move-result-object p2

    array-length p2, p2

    if-ge p1, p2, :cond_3

    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$11;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object p2

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$11;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$2100(Lcom/rockrobo/more/timer/SetTimerActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    invoke-virtual {p2, p1, v0}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->setWeekday(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$11;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$2000(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$11;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object p2

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$11;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-virtual {p2, v0}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->getRepeatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$11;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$11;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->calTimeDiff(Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$11;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    const v0, 0x7f0a0173

    invoke-virtual {p2, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$11;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$500(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
