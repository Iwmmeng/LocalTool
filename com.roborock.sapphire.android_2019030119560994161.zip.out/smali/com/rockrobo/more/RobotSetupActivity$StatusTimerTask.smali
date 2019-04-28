.class Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/RobotSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/RobotSetupActivity;


# direct methods
.method private constructor <init>(Lcom/rockrobo/more/RobotSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockrobo/more/RobotSetupActivity;Lcom/rockrobo/more/RobotSetupActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;-><init>(Lcom/rockrobo/more/RobotSetupActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$2200(Lcom/rockrobo/more/RobotSetupActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$2300(Lcom/rockrobo/more/RobotSetupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0, v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$2302(Lcom/rockrobo/more/RobotSetupActivity;Z)Z

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/RobotSetupActivity;->loadTimeZone()V

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$2400(Lcom/rockrobo/more/RobotSetupActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$2500(Lcom/rockrobo/more/RobotSetupActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$2600(Lcom/rockrobo/more/RobotSetupActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0, v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$2502(Lcom/rockrobo/more/RobotSetupActivity;Z)Z

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/RobotSetupActivity;->loadCarpetMode()V

    :cond_3
    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$2700(Lcom/rockrobo/more/RobotSetupActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$2800(Lcom/rockrobo/more/RobotSetupActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$2900(Lcom/rockrobo/more/RobotSetupActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0, v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$2902(Lcom/rockrobo/more/RobotSetupActivity;Z)Z

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$1300(Lcom/rockrobo/more/RobotSetupActivity;)V
    :try_end_0
    .catch Lcom/rockrobo/presenter/PresenterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/rockrobo/more/RobotSetupActivity;->access$1100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCarpetModeOn failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/rockrobo/presenter/PresenterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
