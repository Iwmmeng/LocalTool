.class Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/clean/CleanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RobotStatusTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/clean/CleanActivity;


# direct methods
.method private constructor <init>(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockrobo/clean/CleanActivity;Lcom/rockrobo/clean/CleanActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getMessageVersion()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$3200(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$3300(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object v0

    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, -0xdd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/rockrobo/presenter/RobotPresenterI;->loadMessageVersion(Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0, v2}, Lcom/rockrobo/clean/CleanActivity;->access$3202(Lcom/rockrobo/clean/CleanActivity;Z)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$3400(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$3500(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$3600(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object v0

    const/16 v1, 0xdc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, -0xdc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/rockrobo/presenter/RobotPresenterI;->loadLocationLang(Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0, v2}, Lcom/rockrobo/clean/CleanActivity;->access$3502(Lcom/rockrobo/clean/CleanActivity;Z)Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$3700(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getMessageVersion()I

    move-result v0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_5

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$3800(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getFirmwareFeatures()[I

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$3900(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object v0

    const/16 v3, 0xde

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, -0xde

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/rockrobo/presenter/RobotPresenterI;->loadFirmwareFeatures(Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0, v2}, Lcom/rockrobo/clean/CleanActivity;->access$3802(Lcom/rockrobo/clean/CleanActivity;Z)Z

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getFirmwareFeatures()[I

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->setEmptyFirmwareFeatures()V

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$4000(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0, v2}, Lcom/rockrobo/clean/CleanActivity;->access$4002(Lcom/rockrobo/clean/CleanActivity;Z)Z

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$4100(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/rockrobo/presenter/RobotPresenterI;->loadStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_7
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$4200(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$4300(Lcom/rockrobo/clean/CleanActivity;)V

    :cond_8
    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getCountryIn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$4400(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0, v2}, Lcom/rockrobo/clean/CleanActivity;->access$4402(Lcom/rockrobo/clean/CleanActivity;Z)Z

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$4500(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object v0

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, -0xe0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/rockrobo/presenter/RobotPresenterI;->loadCountryIn(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_9
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$4600(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockrobo/xmplugin/Device;->isShared()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$4700(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$4800(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0, v2}, Lcom/rockrobo/clean/CleanActivity;->access$4802(Lcom/rockrobo/clean/CleanActivity;Z)Z

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$4900(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object v0

    const/16 v1, 0xd3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, -0xd3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/rockrobo/presenter/RobotPresenterI;->loadTimeZone(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_b
    sget-boolean v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->dataRetrieved:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$5000(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0, v2}, Lcom/rockrobo/clean/CleanActivity;->access$5002(Lcom/rockrobo/clean/CleanActivity;Z)Z

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$5100(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object v0

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, -0x73

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/rockrobo/presenter/RobotPresenterI;->loadConsumableData(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_c
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$5200(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$5300(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0, v2}, Lcom/rockrobo/clean/CleanActivity;->access$5302(Lcom/rockrobo/clean/CleanActivity;Z)Z

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$5400(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, -0xcc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/rockrobo/presenter/RobotPresenterI;->loadLogLevel(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_d
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$5200(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$5500(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$5600(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0, v2}, Lcom/rockrobo/clean/CleanActivity;->access$5602(Lcom/rockrobo/clean/CleanActivity;Z)Z

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v1}, Lcom/rockrobo/clean/CleanActivity;->access$5700(Lcom/rockrobo/clean/CleanActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/rockrobo/clean/CleanActivity;->access$5800(Lcom/rockrobo/clean/CleanActivity;I)V

    :cond_e
    return-void
.end method
