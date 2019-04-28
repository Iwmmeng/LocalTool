.class public Lcom/rockrobo/more/RemoteControllerActivity;
.super Lcom/rockrobo/more/MoreBaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/more/RemoteControllerActivity$RCType;
    }
.end annotation


# static fields
.field private static final CMD_BACK_TO_CHARGE:I = 0x4

.field private static final CMD_CLEAN:I = 0x3

.field private static final CMD_RC_START:I = 0x1

.field private static final CMD_SPOT_CLEAN:I = 0x2

.field public static final FAIL_RETRY_TIMES:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_BACK_TO_CHARGE:I = 0x11

.field private static final MSG_BACK_TO_CHARGE_FAILED:I = 0x12

.field private static final MSG_CLEAN:I = 0xf

.field private static final MSG_CLEAN_FAILED:I = 0x10

.field private static final MSG_HIDE_STARTING_LABEL:I = 0x1b

.field private static final MSG_LOCAL_PING:I = 0x18

.field private static final MSG_LOCAL_PING_FAIL:I = 0x19

.field private static final MSG_MSG_VER:I = 0x16

.field private static final MSG_MSG_VER_FAIL:I = 0x17

.field private static final MSG_PAUSE:I = 0xb

.field private static final MSG_PAUSE_DELAY:I = 0x1a

.field private static final MSG_PAUSE_FAIL:I = 0xc

.field public static final MSG_RC_ACTION:I = 0x3

.field public static final MSG_RC_CONTINUE:I = 0x4

.field private static final MSG_RC_ENTER:I = 0x5

.field private static final MSG_RC_ENTER_FAILED:I = 0x6

.field private static final MSG_RC_EXIT:I = 0xd

.field private static final MSG_RC_EXIT_DO:I = 0x1c

.field private static final MSG_RC_EXIT_FAIL:I = 0xe

.field public static final MSG_RC_RELEASED:I = 0x2

.field public static final MSG_RC_TOUCHED:I = 0x1

.field private static final MSG_SPOT_CLEAN:I = 0x9

.field private static final MSG_SPOT_CLEAN_FAILED:I = 0xa

.field private static final MSG_STATUS:I = 0x7

.field private static final MSG_STATUS_FAILED:I = 0x8

.field public static final RC_CMD_ACTUAL_DURATION:I = 0x1f4

.field private static final RC_CMD_DURATION:I = 0x5dc

.field public static final STARTING_LABEL_DURATION:I = 0x1770

.field public static final VOICE_COMPLETE_DURATION:I = 0x5dc


# instance fields
.field private backToChargeBtn:Lcom/rockrobo/ui/HeartBeatView;

.field private cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

.field private cmdInSending:Z

.field private currentCmd:I

.field private fingerOnRC:Z

.field private getMsgVerFailCnt:I

.field private initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

.field private localPingInProgress:Z

.field private mjSdkApiLevel:I

.field private networkReceiver:Landroid/content/BroadcastReceiver;

.field private networkType:Ljava/lang/Integer;

.field private networkTypeNotChanged:Z

.field private omega:D

.field private rcButton:Lcom/rockrobo/ui/rc/RRButtonRC;

.field private rcButtonCheckText:Landroid/widget/CheckedTextView;

.field private rcStick:Lcom/rockrobo/ui/rc/RRStickRC;

.field private rcStickCheckText:Landroid/widget/CheckedTextView;

.field private rcTouchOmega:D

.field private rcTouchVelocity:D

.field private rcType:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

.field private robotStatus:Lcom/rockrobo/clean/RobotStatus;

.field private seqNumber:I

.field private slideInLeft:Landroid/view/animation/Animation;

.field private slideInRight:Landroid/view/animation/Animation;

.field private slideOutLeft:Landroid/view/animation/Animation;

.field private slideOutRight:Landroid/view/animation/Animation;

.field private spotCleanBtn:Lcom/rockrobo/ui/HeartBeatView;

.field private startingLabel:Landroid/view/View;

.field private velocity:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/RemoteControllerActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/rockrobo/more/MoreBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->seqNumber:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->networkTypeNotChanged:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->networkType:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->fingerOnRC:Z

    sget-object v0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->STICK:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    iput-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcType:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/more/RemoteControllerActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method static synthetic access$100(Lcom/rockrobo/more/RemoteControllerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/RemoteControllerActivity;->toastMessage(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/rockrobo/more/RemoteControllerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->setRCTypeAnimate()V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/RemoteControllerActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/rockrobo/more/RemoteControllerActivity;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->networkType:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/rockrobo/more/RemoteControllerActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->networkType:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/rockrobo/more/RemoteControllerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->networkTypeNotChanged:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/rockrobo/more/RemoteControllerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->networkTypeNotChanged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/rockrobo/more/RemoteControllerActivity;ILcom/rockrobo/ui/HeartBeatView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rockrobo/more/RemoteControllerActivity;->enterCmdSending(ILcom/rockrobo/ui/HeartBeatView;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/rockrobo/more/RemoteControllerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendGetStatusCmd()V

    return-void
.end method

.method static synthetic access$1600(Lcom/rockrobo/more/RemoteControllerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->showInitProgressDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/rockrobo/more/RemoteControllerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->doLocalPing()V

    return-void
.end method

.method static synthetic access$200(Lcom/rockrobo/more/RemoteControllerActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method static synthetic access$300(Lcom/rockrobo/more/RemoteControllerActivity;)Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mHostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/rockrobo/more/RemoteControllerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->exitCmdSending()V

    return-void
.end method

.method static synthetic access$500(Lcom/rockrobo/more/RemoteControllerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendPauseCmd()V

    return-void
.end method

.method static synthetic access$700(Lcom/rockrobo/more/RemoteControllerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->cmdInSending:Z

    return p0
.end method

.method static synthetic access$800(Lcom/rockrobo/more/RemoteControllerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->fingerOnRC:Z

    return p0
.end method

.method static synthetic access$900(Lcom/rockrobo/more/RemoteControllerActivity;)Lcom/rockrobo/more/RemoteControllerActivity$RCType;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcType:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    return-object p0
.end method

.method static synthetic access$902(Lcom/rockrobo/more/RemoteControllerActivity;Lcom/rockrobo/more/RemoteControllerActivity$RCType;)Lcom/rockrobo/more/RemoteControllerActivity$RCType;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcType:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    return-object p1
.end method

.method private displayTimeStartingLabel()V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->startingLabel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private doLocalPing()V
    .locals 3

    iget v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mjSdkApiLevel:I

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->localPingInProgress:Z

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->localPing(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private enterCmdSending(ILcom/rockrobo/ui/HeartBeatView;)V
    .locals 0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/rockrobo/more/RemoteControllerActivity;->cmdInSending:Z

    iput p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->currentCmd:I

    return-void
.end method

.method private exitCmdSending()V
    .locals 3

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->startingLabelInDisplaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->cmdInSending:Z

    return-void

    :cond_0
    const-string v0, "Log"

    const-string v2, "----stop send message"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->cmdInSending:Z

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {v0}, Lcom/rockrobo/ui/HeartBeatView;->stopBeat()V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->backToChargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {v0}, Lcom/rockrobo/ui/HeartBeatView;->stopBeat()V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->spotCleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {v0}, Lcom/rockrobo/ui/HeartBeatView;->stopBeat()V

    return-void
.end method

.method private getRcMode()I
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcType:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    sget-object v1, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->STICK:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private handleMsgVersion(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "msg_ver"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/rockrobo/common/RobotInfo;->setMessageVersion(I)V

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->doLocalPing()V

    return-void
.end method

.method private handleMsgVersionFail()V
    .locals 3

    iget v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->getMsgVerFailCnt:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->getMsgVerFailCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->getMsgVerFailCnt:I

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendGetMessageVersionCmd()V

    return-void

    :cond_0
    const/4 v0, 0x0

    const v1, 0x7f0a013d

    const v2, 0x7f0a00e0

    invoke-direct {p0, v0, v1, v2}, Lcom/rockrobo/more/RemoteControllerActivity;->showAlertDialog(Ljava/lang/Integer;II)V

    return-void
.end method

.method private handlePauseDelayMessage()V
    .locals 1

    iget-boolean v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->cmdInSending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->currentCmd:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendBackToChargeCmd()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendCleanCmd()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendSpotCleanCmd()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendRCStartCmd()V

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->displayTimeStartingLabel()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handlePauseMessage()V
    .locals 4

    iget-boolean v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->cmdInSending:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SPOT_CLEAN:Lcom/rockrobo/clean/RobotStatus;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->currentCmd:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->currentCmd:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->handlePauseDelayMessage()V

    :cond_2
    return-void
.end method

.method private handleRCExitDoMessage()V
    .locals 1

    iget-boolean v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->cmdInSending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->currentCmd:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendBackToChargeCmd()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendCleanCmd()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendSpotCleanCmd()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleStatusMsg(Landroid/os/Message;)V
    .locals 4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    sget-object v0, Lcom/rockrobo/more/RemoteControllerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/rockrobo/clean/RobotStatus;->getEnum(I)Lcom/rockrobo/clean/RobotStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->UPDATING:Lcom/rockrobo/clean/RobotStatus;

    if-ne p1, v0, :cond_0

    const p1, 0x7f0a01aa

    :goto_0
    invoke-direct {p0, p1}, Lcom/rockrobo/more/RemoteControllerActivity;->toastMessage(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SPOT_CLEAN:Lcom/rockrobo/clean/RobotStatus;

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->currentCmd:I

    if-ne p1, v1, :cond_1

    const p1, 0x7f0a00ea

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->CLEAN:Lcom/rockrobo/clean/RobotStatus;

    const/4 v2, 0x3

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->currentCmd:I

    if-ne p1, v2, :cond_2

    const p1, 0x7f0a00e7

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->BACK_TO_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    const/4 v3, 0x4

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->currentCmd:I

    if-ne p1, v3, :cond_3

    const p1, 0x7f0a00e3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->FULL_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    if-ne p1, v0, :cond_5

    :cond_4
    iget p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->currentCmd:I

    if-ne p1, v3, :cond_5

    const p1, 0x7f0a00e6

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->FULL_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    if-ne p1, v0, :cond_7

    :cond_6
    iget p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->currentCmd:I

    if-ne p1, v1, :cond_7

    const p1, 0x7f0a0146

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    iget v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->currentCmd:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    sget-object v0, Lcom/rockrobo/more/RemoteControllerActivity$11;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->BACK_TO_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    invoke-static {p1, v0, v1}, Lcom/rockrobo/utils/RRUtils;->buildStatusChangePromptString(Landroid/content/res/Resources;Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/RobotStatus;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_9

    goto/16 :goto_7

    :cond_9
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

    if-ne p1, v0, :cond_a

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendBackToChargeCmd()V

    return-void

    :pswitch_1
    sget-object v0, Lcom/rockrobo/more/RemoteControllerActivity$11;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CLEAN:Lcom/rockrobo/clean/RobotStatus;

    invoke-static {p1, v0, v1}, Lcom/rockrobo/utils/RRUtils;->buildStatusChangePromptString(Landroid/content/res/Resources;Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/RobotStatus;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_b

    goto :goto_7

    :cond_b
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

    if-ne p1, v0, :cond_c

    :goto_3
    goto :goto_5

    :cond_c
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendCleanCmd()V

    return-void

    :pswitch_3
    sget-object v0, Lcom/rockrobo/more/RemoteControllerActivity$11;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_4

    :pswitch_4
    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SPOT_CLEAN:Lcom/rockrobo/clean/RobotStatus;

    invoke-static {p1, v0, v1}, Lcom/rockrobo/utils/RRUtils;->buildStatusChangePromptString(Landroid/content/res/Resources;Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/RobotStatus;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_d

    goto :goto_7

    :cond_d
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

    if-ne p1, v0, :cond_e

    :goto_5
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendRCExitCmd()V

    return-void

    :cond_e
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendSpotCleanCmd()V

    return-void

    :pswitch_5
    sget-object v0, Lcom/rockrobo/more/RemoteControllerActivity$11;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    goto :goto_6

    :pswitch_6
    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

    invoke-static {p1, v0, v1}, Lcom/rockrobo/utils/RRUtils;->buildStatusChangePromptString(Landroid/content/res/Resources;Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/RobotStatus;)Ljava/lang/String;

    move-result-object p1

    :goto_6
    if-eqz p1, :cond_f

    :goto_7
    invoke-direct {p0, p1}, Lcom/rockrobo/more/RemoteControllerActivity;->showStatus2PauseDialog(Ljava/lang/String;)V

    return-void

    :cond_f
    iget p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->seqNumber:I

    if-nez p1, :cond_10

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendRCStartCmd()V

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

    if-eq p1, v0, :cond_12

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->startingLabelInDisplaying()Z

    move-result p1

    if-nez p1, :cond_12

    sget-object p1, Lcom/rockrobo/more/RemoteControllerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Display starting label because seq number is 0"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->displayTimeStartingLabel()V

    return-void

    :cond_10
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

    if-eq p1, v0, :cond_11

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->startingLabelInDisplaying()Z

    move-result p1

    if-nez p1, :cond_11

    sget-object p1, Lcom/rockrobo/more/RemoteControllerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Display starting label when robot status changed!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->displayTimeStartingLabel()V

    :cond_11
    sget-object p1, Lcom/rockrobo/clean/RobotStatus;->REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->exitCmdSending()V

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->supplyMoveCmd()V

    :cond_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private jumpToMain()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/RemoteControllerActivity;->setResult0(I)V

    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->finish()V

    return-void
.end method

.method private registerNetTypeReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/more/RemoteControllerActivity;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendBackToChargeCmd()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->charge(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private sendCleanCmd()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->clean(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private sendGetMessageVersionCmd()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private sendGetStatusCmd()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private sendPauseCmd()V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/rockrobo/presenter/RobotPresenterI;->pause(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method private sendRCExitCmd()V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    iget v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->seqNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->seqNumber:I

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/rockrobo/presenter/RobotPresenterI;->exitRemoteController(ILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private sendRCMoveCmd()V
    .locals 10

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v8, p0, Lcom/rockrobo/more/RemoteControllerActivity;->seqNumber:I

    add-int/lit8 v0, v8, 0x1

    iput v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->seqNumber:I

    iget-object v2, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->getRcMode()I

    move-result v3

    iget-wide v4, p0, Lcom/rockrobo/more/RemoteControllerActivity;->omega:D

    iget-wide v6, p0, Lcom/rockrobo/more/RemoteControllerActivity;->velocity:D

    const/16 v9, 0x5dc

    invoke-interface/range {v2 .. v9}, Lcom/rockrobo/presenter/RobotPresenterI;->sendRemoteControllerMove(IDDII)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private sendRCStartCmd()V
    .locals 3

    iget v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->seqNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->seqNumber:I

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->startRemoteController(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private sendSpotCleanCmd()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->spot(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private setRCType()V
    .locals 4

    sget-object v0, Lcom/rockrobo/more/RemoteControllerActivity$11;->$SwitchMap$com$rockrobo$more$RemoteControllerActivity$RCType:[I

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcType:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    invoke-virtual {v1}, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcButtonCheckText:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcStickCheckText:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcStick:Lcom/rockrobo/ui/rc/RRStickRC;

    invoke-virtual {v0, v3}, Lcom/rockrobo/ui/rc/RRStickRC;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcButton:Lcom/rockrobo/ui/rc/RRButtonRC;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/rc/RRButtonRC;->setVisibility(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcButtonCheckText:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcStickCheckText:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcStick:Lcom/rockrobo/ui/rc/RRStickRC;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/rc/RRStickRC;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcButton:Lcom/rockrobo/ui/rc/RRButtonRC;

    invoke-virtual {v0, v3}, Lcom/rockrobo/ui/rc/RRButtonRC;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRCTypeAnimate()V
    .locals 3

    sget-object v0, Lcom/rockrobo/more/RemoteControllerActivity$11;->$SwitchMap$com$rockrobo$more$RemoteControllerActivity$RCType:[I

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcType:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    invoke-virtual {v1}, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcButtonCheckText:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcStickCheckText:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcButton:Lcom/rockrobo/ui/rc/RRButtonRC;

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->slideOutLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/rc/RRButtonRC;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcStick:Lcom/rockrobo/ui/rc/RRStickRC;

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->slideInRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/rc/RRStickRC;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcButtonCheckText:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcStickCheckText:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcStick:Lcom/rockrobo/ui/rc/RRStickRC;

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->slideOutRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/rc/RRStickRC;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcButton:Lcom/rockrobo/ui/rc/RRButtonRC;

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->slideInLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/rc/RRButtonRC;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupCmdButton(II)Lcom/rockrobo/ui/HeartBeatView;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rockrobo/ui/HeartBeatView;

    new-instance v0, Lcom/rockrobo/more/RemoteControllerActivity$9;

    invoke-direct {v0, p0, p2}, Lcom/rockrobo/more/RemoteControllerActivity$9;-><init>(Lcom/rockrobo/more/RemoteControllerActivity;I)V

    invoke-virtual {p1, v0}, Lcom/rockrobo/ui/HeartBeatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private showAlertDialog(Ljava/lang/Integer;II)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showAlertDialog(Landroid/app/Activity;Ljava/lang/Integer;IIZ)V

    return-void
.end method

.method private showFirmwareUpdateAlertDialog(II)V
    .locals 5

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setCancelable(Z)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    const p1, 0x7f0a00dd

    new-instance p2, Lcom/rockrobo/more/RemoteControllerActivity$1;

    invoke-direct {p2, p0}, Lcom/rockrobo/more/RemoteControllerActivity$1;-><init>(Lcom/rockrobo/more/RemoteControllerActivity;)V

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    const p1, 0x7f0a0009

    new-instance p2, Lcom/rockrobo/more/RemoteControllerActivity$2;

    invoke-direct {p2, p0}, Lcom/rockrobo/more/RemoteControllerActivity$2;-><init>(Lcom/rockrobo/more/RemoteControllerActivity;)V

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    new-instance p1, Lcom/rockrobo/more/RemoteControllerActivity$3;

    invoke-direct {p1, p0}, Lcom/rockrobo/more/RemoteControllerActivity$3;-><init>(Lcom/rockrobo/more/RemoteControllerActivity;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setDismissCallBack(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private showInitProgressDialog()V
    .locals 3

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    new-instance v1, Lcom/rockrobo/more/RemoteControllerActivity$10;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/RemoteControllerActivity$10;-><init>(Lcom/rockrobo/more/RemoteControllerActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method private showStatus2PauseDialog(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcTouchVelocity:D

    iput-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcTouchOmega:D

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    new-instance p1, Lcom/rockrobo/more/RemoteControllerActivity$4;

    invoke-direct {p1, p0}, Lcom/rockrobo/more/RemoteControllerActivity$4;-><init>(Lcom/rockrobo/more/RemoteControllerActivity;)V

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    new-instance p1, Lcom/rockrobo/more/RemoteControllerActivity$5;

    invoke-direct {p1, p0}, Lcom/rockrobo/more/RemoteControllerActivity$5;-><init>(Lcom/rockrobo/more/RemoteControllerActivity;)V

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private startingLabelInDisplaying()Z
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->startingLabel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private supplyMoveCmd()V
    .locals 5

    iget-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcTouchOmega:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcTouchVelocity:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcTouchOmega:D

    iput-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->omega:D

    iget-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcTouchVelocity:D

    iput-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->velocity:D

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendRCMoveCmd()V

    :cond_1
    return-void
.end method

.method private toastMessage(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->exitCmdSending()V

    return-void
.end method


# virtual methods
.method public getActivityTitle()I
    .locals 1

    const v0, 0x7f0a01b5

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f08000e

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/rockrobo/more/RemoteControllerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const v2, 0x7f0a013d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->handleRCExitDoMessage()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->startingLabel:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->handlePauseDelayMessage()V

    return-void

    :pswitch_4
    iput-boolean v4, p0, Lcom/rockrobo/more/RemoteControllerActivity;->localPingInProgress:Z

    iput-boolean v5, p0, Lcom/rockrobo/more/RemoteControllerActivity;->networkTypeNotChanged:Z

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->networkType:Ljava/lang/Integer;

    const v0, 0x7f0a00e0

    if-nez p1, :cond_1

    invoke-direct {p0, v3, v2, v0}, Lcom/rockrobo/more/RemoteControllerActivity;->showAlertDialog(Ljava/lang/Integer;II)V

    return-void

    :cond_1
    const p1, 0x7f0a0148

    invoke-direct {p0, v3, p1, v0}, Lcom/rockrobo/more/RemoteControllerActivity;->showAlertDialog(Ljava/lang/Integer;II)V

    return-void

    :pswitch_5
    iput-boolean v4, p0, Lcom/rockrobo/more/RemoteControllerActivity;->localPingInProgress:Z

    iput-boolean v5, p0, Lcom/rockrobo/more/RemoteControllerActivity;->networkTypeNotChanged:Z

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->initProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->supplyMoveCmd()V

    return-void

    :pswitch_6
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->handleMsgVersionFail()V

    return-void

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/rockrobo/more/RemoteControllerActivity;->handleMsgVersion(Landroid/os/Message;)V

    return-void

    :pswitch_8
    sget-object p1, Lcom/rockrobo/clean/RobotStatus;->BACK_TO_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->exitCmdSending()V

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->backToChargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->stopBeatImmediately()V

    :goto_1
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->jumpToMain()V

    return-void

    :pswitch_9
    sget-object p1, Lcom/rockrobo/clean/RobotStatus;->CLEAN:Lcom/rockrobo/clean/RobotStatus;

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->exitCmdSending()V

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->stopBeatImmediately()V

    goto :goto_1

    :pswitch_a
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1c

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :pswitch_b
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->handlePauseMessage()V

    return-void

    :pswitch_c
    sget-object p1, Lcom/rockrobo/clean/RobotStatus;->SPOT_CLEAN:Lcom/rockrobo/clean/RobotStatus;

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->exitCmdSending()V

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->spotCleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->stopBeatImmediately()V

    goto :goto_1

    :pswitch_d
    iget-boolean v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->cmdInSending:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/rockrobo/more/RemoteControllerActivity;->handleStatusMsg(Landroid/os/Message;)V

    return-void

    :pswitch_e
    invoke-direct {p0, v2}, Lcom/rockrobo/more/RemoteControllerActivity;->toastMessage(I)V

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->exitCmdSending()V

    return-void

    :pswitch_f
    sget-object p1, Lcom/rockrobo/clean/RobotStatus;->REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->exitCmdSending()V

    goto :goto_0

    :pswitch_10
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

    if-ne p1, v0, :cond_5

    iget v8, p0, Lcom/rockrobo/more/RemoteControllerActivity;->seqNumber:I

    add-int/lit8 p1, v8, 0x1

    iput p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->seqNumber:I

    iget-object v2, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->getRcMode()I

    move-result v3

    iget-wide v4, p0, Lcom/rockrobo/more/RemoteControllerActivity;->omega:D

    iget-wide v6, p0, Lcom/rockrobo/more/RemoteControllerActivity;->velocity:D

    const/16 v9, 0x5dc

    invoke-interface/range {v2 .. v9}, Lcom/rockrobo/presenter/RobotPresenterI;->sendRemoteControllerMove(IDDII)V

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/rockrobo/more/remotecontroller/RCParams;

    invoke-virtual {p1}, Lcom/rockrobo/more/remotecontroller/RCParams;->getOmega()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->omega:D

    invoke-virtual {p1}, Lcom/rockrobo/more/remotecontroller/RCParams;->getVelocity()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->velocity:D

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->cmdInSending:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->localPingInProgress:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendRCMoveCmd()V

    return-void

    :cond_3
    iget-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->omega:D

    iput-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcTouchOmega:D

    iget-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->velocity:D

    iput-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcTouchVelocity:D

    return-void

    :pswitch_12
    iput-boolean v4, p0, Lcom/rockrobo/more/RemoteControllerActivity;->fingerOnRC:Z

    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->updateButtonsStat()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcTouchOmega:D

    iput-wide v2, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcTouchVelocity:D

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-wide v2, p0, Lcom/rockrobo/more/RemoteControllerActivity;->omega:D

    iput-wide v2, p0, Lcom/rockrobo/more/RemoteControllerActivity;->velocity:D

    iget v10, p0, Lcom/rockrobo/more/RemoteControllerActivity;->seqNumber:I

    add-int/lit8 p1, v10, 0x1

    iput p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->seqNumber:I

    iget-object v4, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->getRcMode()I

    move-result v5

    iget-wide v6, p0, Lcom/rockrobo/more/RemoteControllerActivity;->omega:D

    iget-wide v8, p0, Lcom/rockrobo/more/RemoteControllerActivity;->velocity:D

    const/16 v11, 0x5dc

    invoke-interface/range {v4 .. v11}, Lcom/rockrobo/presenter/RobotPresenterI;->sendRemoteControllerMove(IDDII)V

    return-void

    :pswitch_13
    iput-boolean v5, p0, Lcom/rockrobo/more/RemoteControllerActivity;->fingerOnRC:Z

    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->updateButtonsStat()V

    iget-boolean v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->cmdInSending:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->networkTypeNotChanged:Z

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/rockrobo/more/remotecontroller/RCParams;

    invoke-virtual {p1}, Lcom/rockrobo/more/remotecontroller/RCParams;->getOmega()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcTouchOmega:D

    invoke-virtual {p1}, Lcom/rockrobo/more/remotecontroller/RCParams;->getVelocity()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcTouchVelocity:D

    sget-object p1, Lcom/rockrobo/more/RemoteControllerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "touch omega:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcTouchOmega:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",touch velocity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcTouchVelocity:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5, v3}, Lcom/rockrobo/more/RemoteControllerActivity;->enterCmdSending(ILcom/rockrobo/ui/HeartBeatView;)V

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendGetStatusCmd()V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->showInitProgressDialog()V

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->doLocalPing()V
    :try_end_0
    .catch Lcom/rockrobo/presenter/PresenterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/more/RemoteControllerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException, message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :catch_1
    move-exception p1

    sget-object v0, Lcom/rockrobo/more/RemoteControllerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PresenterException, message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/rockrobo/presenter/PresenterException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_b
        :pswitch_e
        :pswitch_a
        :pswitch_e
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0600a0

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rockrobo/ui/rc/RRStickRC;

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcStick:Lcom/rockrobo/ui/rc/RRStickRC;

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcStick:Lcom/rockrobo/ui/rc/RRStickRC;

    new-instance v0, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/rockrobo/more/remotecontroller/NavigateStickListener;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, v0}, Lcom/rockrobo/ui/rc/RRStickRC;->setOnNavigateListener(Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;)V

    const p1, 0x7f06009d

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rockrobo/ui/rc/RRButtonRC;

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcButton:Lcom/rockrobo/ui/rc/RRButtonRC;

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcButton:Lcom/rockrobo/ui/rc/RRButtonRC;

    new-instance v0, Lcom/rockrobo/more/remotecontroller/ButtonRCStateChangeListener;

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/rockrobo/more/remotecontroller/ButtonRCStateChangeListener;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, v0}, Lcom/rockrobo/ui/rc/RRButtonRC;->setOnButtonStateChangeListener(Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCListenerI;)V

    const-string p1, "rc_type_"

    invoke-static {p1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyAccountId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->UNKNOWN:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    invoke-static {v0}, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->access$600(Lcom/rockrobo/more/RemoteControllerActivity$RCType;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/rockrobo/utils/PreferenceUtils;->getIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->int2RCType(I)Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcType:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcType:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    sget-object v1, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->UNKNOWN:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->BUTTON:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    iput-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcType:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcType:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    invoke-static {v0}, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->access$600(Lcom/rockrobo/more/RemoteControllerActivity$RCType;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/rockrobo/utils/PreferenceUtils;->saveIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    const p1, 0x7f010008

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->slideInRight:Landroid/view/animation/Animation;

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->slideInRight:Landroid/view/animation/Animation;

    new-instance v0, Lcom/rockrobo/common/ShowHideAnimationListener;

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcStick:Lcom/rockrobo/ui/rc/RRStickRC;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/rockrobo/common/ShowHideAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const p1, 0x7f01000a

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->slideOutRight:Landroid/view/animation/Animation;

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->slideOutRight:Landroid/view/animation/Animation;

    new-instance v0, Lcom/rockrobo/common/ShowHideAnimationListener;

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcStick:Lcom/rockrobo/ui/rc/RRStickRC;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/rockrobo/common/ShowHideAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const p1, 0x7f010007

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->slideInLeft:Landroid/view/animation/Animation;

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->slideInLeft:Landroid/view/animation/Animation;

    new-instance v0, Lcom/rockrobo/common/ShowHideAnimationListener;

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcButton:Lcom/rockrobo/ui/rc/RRButtonRC;

    invoke-direct {v0, v1, v2}, Lcom/rockrobo/common/ShowHideAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const p1, 0x7f010009

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->slideOutLeft:Landroid/view/animation/Animation;

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->slideOutLeft:Landroid/view/animation/Animation;

    new-instance v0, Lcom/rockrobo/common/ShowHideAnimationListener;

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcButton:Lcom/rockrobo/ui/rc/RRButtonRC;

    invoke-direct {v0, v1, v3}, Lcom/rockrobo/common/ShowHideAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const p1, 0x7f0600c0

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/rockrobo/more/RemoteControllerActivity;->setupCmdButton(II)Lcom/rockrobo/ui/HeartBeatView;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->spotCleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    const p1, 0x7f06001b

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/rockrobo/more/RemoteControllerActivity;->setupCmdButton(II)Lcom/rockrobo/ui/HeartBeatView;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    const p1, 0x7f06001a

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/rockrobo/more/RemoteControllerActivity;->setupCmdButton(II)Lcom/rockrobo/ui/HeartBeatView;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->backToChargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    const p1, 0x7f06009e

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcButtonCheckText:Landroid/widget/CheckedTextView;

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcButtonCheckText:Landroid/widget/CheckedTextView;

    new-instance v0, Lcom/rockrobo/more/RemoteControllerActivity$6;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/RemoteControllerActivity$6;-><init>(Lcom/rockrobo/more/RemoteControllerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0600a1

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcStickCheckText:Landroid/widget/CheckedTextView;

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcStickCheckText:Landroid/widget/CheckedTextView;

    new-instance v0, Lcom/rockrobo/more/RemoteControllerActivity$7;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/RemoteControllerActivity$7;-><init>(Lcom/rockrobo/more/RemoteControllerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->setRCType()V

    new-instance p1, Lcom/rockrobo/more/RemoteControllerActivity$8;

    invoke-direct {p1, p0}, Lcom/rockrobo/more/RemoteControllerActivity$8;-><init>(Lcom/rockrobo/more/RemoteControllerActivity;)V

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->networkReceiver:Landroid/content/BroadcastReceiver;

    const p1, 0x7f06009f

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->startingLabel:Landroid/view/View;

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getApiLevel()I

    move-result p1

    iput p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mjSdkApiLevel:I

    sget-object p1, Lcom/rockrobo/more/RemoteControllerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MJ SDK api level is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mjSdkApiLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mjSdkApiLevel:I

    const/16 v0, 0x20

    if-ge p1, v0, :cond_1

    const p1, 0x7f0a0235

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x7f0a0234

    const v1, 0x7f0a00e0

    invoke-direct {p0, p1, v0, v1}, Lcom/rockrobo/more/RemoteControllerActivity;->showAlertDialog(Ljava/lang/Integer;II)V

    return-void

    :cond_1
    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getMessageVersion()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->sendGetMessageVersionCmd()V

    :goto_0
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->showInitProgressDialog()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->doLocalPing()V

    goto :goto_0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onPause()V

    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    iget v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->seqNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->seqNumber:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->exitRemoteController(ILjava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/rockrobo/presenter/PresenterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/RemoteControllerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PresenterException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/rockrobo/presenter/PresenterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onResume()V

    invoke-direct {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->registerNetTypeReceiver()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/rockrobo/more/RemoteControllerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->rcStick:Lcom/rockrobo/ui/rc/RRStickRC;

    invoke-virtual {v0}, Lcom/rockrobo/ui/rc/RRStickRC;->recycle()V

    :cond_0
    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onStop()V

    return-void
.end method

.method public updateButtonsStat()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    iget-boolean v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->fingerOnRC:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->spotCleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    iget-boolean v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->fingerOnRC:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity;->backToChargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    iget-boolean v1, p0, Lcom/rockrobo/more/RemoteControllerActivity;->fingerOnRC:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setEnabled(Z)V

    return-void
.end method
