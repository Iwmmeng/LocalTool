.class public Lcom/rockrobo/more/VolumeAdjustActivity;
.super Lcom/rockrobo/more/MoreBaseTimerTaskActivity;


# static fields
.field public static final FAIL_RETRY_TIMES:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_AUDITION_FAIL:I = -0x3

.field private static final MSG_AUDITION_SUCCESS:I = 0x3

.field private static final MSG_GET_VER_FAIL:I = -0x4

.field private static final MSG_GET_VER_SUCCESS:I = 0x4

.field private static final MSG_GET_VOLUME_FAIL:I = -0x1

.field private static final MSG_GET_VOLUME_SUCCESS:I = 0x1

.field private static final MSG_SET_VOLUME_FAIL:I = -0x2

.field private static final MSG_SET_VOLUME_SUCCESS:I = 0x2

.field private static final MSG_STATUS:I = 0x5

.field private static final MSG_STATUS_FAIL:I = -0x5

.field private static final PROGRESS_MAX:I = 0x41

.field private static final VOLUME_MAX:I = 0x5f

.field private static final VOLUME_MIN:I = 0x1e


# instance fields
.field private getMsgVerFailCnt:I

.field private getVolumeFailCnt:I

.field private new_progress:I

.field private oldProgress:I

.field private progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

.field private robotStatus:Lcom/rockrobo/clean/RobotStatus;

.field private seekBar:Landroid/widget/SeekBar;

.field private volatile statusLoading:Z

.field private volatile volumeGot:Z

.field private volatile volumeLoading:Z

.field private volumeTry:Landroid/widget/Button;

.field private xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/VolumeAdjustActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/VolumeAdjustActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->getMsgVerFailCnt:I

    iput v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->getVolumeFailCnt:I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-boolean v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->volumeGot:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->volumeLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->statusLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/more/VolumeAdjustActivity;)I
    .locals 0

    iget p0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->new_progress:I

    return p0
.end method

.method static synthetic access$002(Lcom/rockrobo/more/VolumeAdjustActivity;I)I
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->new_progress:I

    return p1
.end method

.method static synthetic access$100(Lcom/rockrobo/more/VolumeAdjustActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/VolumeAdjustActivity;->sendSetVolumeCmd(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/rockrobo/more/VolumeAdjustActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->robotIsUpdating()Z

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lcom/rockrobo/more/VolumeAdjustActivity;Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/rockrobo/more/VolumeAdjustActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->sendAuditionCmd()V

    return-void
.end method

.method private handleStatus(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/rockrobo/clean/RobotStatus;->getEnum(I)Lcom/rockrobo/clean/RobotStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    return-void
.end method

.method private robotIsUpdating()Z
    .locals 2

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->UPDATING:Lcom/rockrobo/clean/RobotStatus;

    iget-object v1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private sendAuditionCmd()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->sendTestVolume(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private sendGetMessageVersionCmd()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private sendGetVolumeCmd()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadVolume(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private sendSetVolumeCmd(I)V
    .locals 3

    add-int/lit8 p1, p1, 0x1e

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->sendVolume(ILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private showInitProgressDialog()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    new-instance v1, Lcom/rockrobo/more/VolumeAdjustActivity$4;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/VolumeAdjustActivity$4;-><init>(Lcom/rockrobo/more/VolumeAdjustActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected doCheckTask()V
    .locals 0

    return-void
.end method

.method protected doStatusTask()V
    .locals 4

    iget-boolean v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->statusLoading:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/rockrobo/presenter/RobotPresenterI;->loadStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-boolean v1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->statusLoading:Z

    :cond_0
    iget-boolean v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->volumeGot:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->volumeLoading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/rockrobo/presenter/RobotPresenterI;->loadVolume(Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-boolean v1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->volumeLoading:Z

    :cond_1
    return-void
.end method

.method public getActivityTitle()I
    .locals 1

    const v0, 0x7f0a01c5

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f080019

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-virtual {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f0a00e0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const v4, 0x7f0a013d

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/rockrobo/more/VolumeAdjustActivity;->handleStatus(Landroid/os/Message;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    :pswitch_2
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "msg_ver"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/rockrobo/common/RobotInfo;->setMessageVersion(I)V

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    :cond_2
    invoke-direct {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->sendGetVolumeCmd()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    :cond_3
    invoke-direct {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->robotIsUpdating()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0, v6}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a00eb

    invoke-static {p1, v0, v6}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    return-void

    :pswitch_4
    iget p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->new_progress:I

    iput p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->oldProgress:I

    invoke-direct {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->robotIsUpdating()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-direct {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->sendAuditionCmd()V

    return-void

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1e

    iput-boolean v5, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->volumeGot:Z

    iput p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->oldProgress:I

    iput p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->new_progress:I

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->seekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->oldProgress:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :pswitch_6
    iget p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->getVolumeFailCnt:I

    if-ge p1, v3, :cond_5

    iget p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->getVolumeFailCnt:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->getVolumeFailCnt:I

    invoke-direct {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->sendGetVolumeCmd()V

    return-void

    :cond_5
    iput-boolean v6, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->volumeLoading:Z

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    :cond_6
    :goto_2
    invoke-static {p0, v2, v4, v1, v5}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showAlertDialog(Landroid/app/Activity;Ljava/lang/Integer;IIZ)V

    return-void

    :pswitch_7
    invoke-virtual {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->seekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->oldProgress:I

    goto :goto_1

    :pswitch_8
    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    :cond_7
    invoke-virtual {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    iget p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->getMsgVerFailCnt:I

    if-ge p1, v3, :cond_8

    iget p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->getMsgVerFailCnt:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->getMsgVerFailCnt:I

    invoke-direct {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->sendGetMessageVersionCmd()V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->xqProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    goto :goto_2

    :goto_3
    :pswitch_a
    iput-boolean v6, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->statusLoading:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    sget-object v0, Lcom/rockrobo/more/VolumeAdjustActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0x28

    iput p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->oldProgress:I

    const p1, 0x7f0600e1

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/VolumeAdjustActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0600df

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/VolumeAdjustActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/rockrobo/more/VolumeAdjustActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/VolumeAdjustActivity$1;-><init>(Lcom/rockrobo/more/VolumeAdjustActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0600aa

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/VolumeAdjustActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->seekBar:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->seekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x41

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->seekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->oldProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    const p1, 0x7f06010f

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/VolumeAdjustActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->volumeTry:Landroid/widget/Button;

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/rockrobo/more/VolumeAdjustActivity$2;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/VolumeAdjustActivity$2;-><init>(Lcom/rockrobo/more/VolumeAdjustActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->volumeTry:Landroid/widget/Button;

    new-instance v0, Lcom/rockrobo/more/VolumeAdjustActivity$3;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/VolumeAdjustActivity$3;-><init>(Lcom/rockrobo/more/VolumeAdjustActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getMessageVersion()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->sendGetMessageVersionCmd()V

    invoke-direct {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->showInitProgressDialog()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/rockrobo/more/VolumeAdjustActivity;->sendGetVolumeCmd()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->onDestroy()V

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected resetTimerTaskVariables()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->statusLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity;->volumeLoading:Z

    return-void
.end method
