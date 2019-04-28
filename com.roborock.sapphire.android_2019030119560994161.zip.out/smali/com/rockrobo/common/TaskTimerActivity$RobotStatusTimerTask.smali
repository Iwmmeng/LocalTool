.class Lcom/rockrobo/common/TaskTimerActivity$RobotStatusTimerTask;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/common/TaskTimerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RobotStatusTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/common/TaskTimerActivity;


# direct methods
.method public constructor <init>(Lcom/rockrobo/common/TaskTimerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/common/TaskTimerActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/common/TaskTimerActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    invoke-virtual {p1}, Lcom/rockrobo/common/TaskTimerActivity;->initStatusTask()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/common/TaskTimerActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/common/TaskTimerActivity;

    const-string v1, "Start to doStatusTask!"

    invoke-static {v0, v1}, Lcom/rockrobo/common/TaskTimerActivity;->access$000(Lcom/rockrobo/common/TaskTimerActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rockrobo/common/TaskTimerActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/common/TaskTimerActivity;

    invoke-virtual {v0}, Lcom/rockrobo/common/TaskTimerActivity;->doStatusTask()V

    iget-object v0, p0, Lcom/rockrobo/common/TaskTimerActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/common/TaskTimerActivity;

    const-string v1, "End of doStatusTask!"

    invoke-static {v0, v1}, Lcom/rockrobo/common/TaskTimerActivity;->access$000(Lcom/rockrobo/common/TaskTimerActivity;Ljava/lang/String;)V

    return-void
.end method
