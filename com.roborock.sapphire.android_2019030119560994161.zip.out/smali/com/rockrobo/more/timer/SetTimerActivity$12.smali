.class Lcom/rockrobo/more/timer/SetTimerActivity$12;
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

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$12;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$12;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object p2

    iget-object p2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    array-length p2, p2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$12;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$2100(Lcom/rockrobo/more/timer/SetTimerActivity;)[Z

    move-result-object p2

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$12;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object v0

    iget-object v0, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    aget-boolean v0, v0, p1

    aput-boolean v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
