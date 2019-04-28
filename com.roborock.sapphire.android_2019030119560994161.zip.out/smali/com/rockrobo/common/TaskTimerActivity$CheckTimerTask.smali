.class Lcom/rockrobo/common/TaskTimerActivity$CheckTimerTask;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/common/TaskTimerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/common/TaskTimerActivity;


# direct methods
.method public constructor <init>(Lcom/rockrobo/common/TaskTimerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/common/TaskTimerActivity$CheckTimerTask;->this$0:Lcom/rockrobo/common/TaskTimerActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    invoke-virtual {p1}, Lcom/rockrobo/common/TaskTimerActivity;->initCheckTask()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/common/TaskTimerActivity$CheckTimerTask;->this$0:Lcom/rockrobo/common/TaskTimerActivity;

    const-string v1, "Start to doCheckTask!"

    invoke-static {v0, v1}, Lcom/rockrobo/common/TaskTimerActivity;->access$000(Lcom/rockrobo/common/TaskTimerActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rockrobo/common/TaskTimerActivity$CheckTimerTask;->this$0:Lcom/rockrobo/common/TaskTimerActivity;

    invoke-virtual {v0}, Lcom/rockrobo/common/TaskTimerActivity;->doCheckTask()V

    iget-object v0, p0, Lcom/rockrobo/common/TaskTimerActivity$CheckTimerTask;->this$0:Lcom/rockrobo/common/TaskTimerActivity;

    const-string v1, "End of doCheckTask"

    invoke-static {v0, v1}, Lcom/rockrobo/common/TaskTimerActivity;->access$000(Lcom/rockrobo/common/TaskTimerActivity;Ljava/lang/String;)V

    return-void
.end method
