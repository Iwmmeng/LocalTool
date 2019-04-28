.class public Lcom/rockrobo/more/MoreActivity;
.super Lcom/rockrobo/more/MoreBaseTimerTaskActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/more/MoreActivity$MoreListAdapter;,
        Lcom/rockrobo/more/MoreActivity$ViewHolder;,
        Lcom/rockrobo/more/MoreActivity$FindMeOnClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MORE_RETRY_LIMIT:I = 0x3

.field private static final MSG_CLEAR_MAP_DATA:I = 0xa

.field private static final MSG_CLEAR_MAP_DATA_FAIL:I = -0xa

.field private static final MSG_CONSUMABLE_DATA:I = 0x3

.field private static final MSG_CONSUMABLE_DATA_FAIL:I = -0x3

.field private static final MSG_FIND_ME:I = 0x5

.field private static final MSG_FIND_ME_FAIL:I = -0x5

.field private static final MSG_GET_PUSH_STATUS:I = 0x1

.field private static final MSG_GET_PUSH_STATUS_FAIL:I = -0x1

.field private static final MSG_GET_TIME_ZONE:I = 0x6

.field private static final MSG_GET_TIME_ZONE_FAIL:I = -0x6

.field private static final MSG_RESET_LOG_LEVEL:I = 0x8

.field private static final MSG_RESET_LOG_LEVEL_FAIL:I = 0x9

.field private static final MSG_SET_PUSH_STATUS:I = 0x2

.field private static final MSG_SET_PUSH_STATUS_FAIL:I = -0x2

.field private static final MSG_STATUS:I = 0xc

.field private static final MSG_STATUS_FAIL:I = -0xc

.field private static final MSG_UPDATE_FIRM:I = 0x4

.field private static final MSG_UPDATE_FIRM_FAIL:I = -0x4

.field private static final MSG_WAITING_MESSAGE_VERSION:I = 0x7

.field public static final PUSH_STATUS_ENABLE_EXCEPTION_ALERT_KEY:Ljava/lang/String; = "enable_exception_alert"

.field public static final PUSH_STATUS_IDENTITY_KEY:Ljava/lang/String; = "identify"

.field public static final PUSH_STATUS_SETTING_KEY:Ljava/lang/String; = "setting"

.field public static final PUSH_STATUS_US_ID_KEY:Ljava/lang/String; = "us_id"

.field private static final REQUEST_CODE_GENERAL_SETUP:I = 0xb

.field private static final REQUEST_CODE_REMOTE_CONTROLLER:I = 0xa

.field private static final WAITING_MESSAGE_VERSION_DELAY:J = 0x1f4L

.field public static final normalDeviceTitleIds:[I

.field public static final sharedDeviceTitleIds:[I


# instance fields
.field private activityStarting:Z

.field adapter:Landroid/widget/BaseAdapter;

.field private consumableRetrieveFailCount:I

.field private consumableViewHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

.field private getTimeZoneCnt:I

.field private hasNewFirmware:Z

.field private identify:Ljava/lang/String;

.field private isSwitchOn:Z

.field private listViewItems:[Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private needReLoadTimeZone:Z

.field private progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

.field private pushStatusGetRetryCnt:I

.field private regionCode:Ljava/lang/String;

.field private resetLogLevelCnt:I

.field private robotSetupHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

.field private robotStatus:Lcom/rockrobo/clean/RobotStatus;

.field private setupViewHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

.field private volatile statusLoading:Z

.field private usId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/MoreActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/MoreActivity;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rockrobo/more/MoreActivity;->normalDeviceTitleIds:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/rockrobo/more/MoreActivity;->sharedDeviceTitleIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a01be
        0x7f0a0201
        0x7f0a0227
        0x7f0a013b
        0x7f0a00db
        0x7f0a0073
        0x7f0a0019
        0x7f0a0040
        0x7f0a018d
        0x7f0a0073
        0x7f0a01b5
        0x7f0a00d3
    .end array-data

    :array_1
    .array-data 4
        0x7f0a0019
        0x7f0a01b5
        0x7f0a018d
        0x7f0a0073
        0x7f0a00d3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/rockrobo/more/MoreActivity;->usId:I

    const-string v0, ""

    iput-object v0, p0, Lcom/rockrobo/more/MoreActivity;->identify:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/more/MoreActivity;->pushStatusGetRetryCnt:I

    iput v0, p0, Lcom/rockrobo/more/MoreActivity;->getTimeZoneCnt:I

    iput-boolean v0, p0, Lcom/rockrobo/more/MoreActivity;->needReLoadTimeZone:Z

    iput v0, p0, Lcom/rockrobo/more/MoreActivity;->resetLogLevelCnt:I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v1, p0, Lcom/rockrobo/more/MoreActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-boolean v0, p0, Lcom/rockrobo/more/MoreActivity;->statusLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/MoreActivity;->activityStarting:Z

    iput v0, p0, Lcom/rockrobo/more/MoreActivity;->consumableRetrieveFailCount:I

    return-void
.end method

.method static synthetic access$100(Lcom/rockrobo/more/MoreActivity;)Lcom/rockrobo/clean/RobotStatus;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/MoreActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/MoreActivity;->listViewItems:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/rockrobo/more/MoreActivity;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/MoreActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/rockrobo/more/MoreActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/MoreActivity;->isSwitchOn:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/rockrobo/more/MoreActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/MoreActivity;->isSwitchOn:Z

    return p1
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/MoreActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/rockrobo/more/MoreActivity;)I
    .locals 0

    iget p0, p0, Lcom/rockrobo/more/MoreActivity;->usId:I

    return p0
.end method

.method static synthetic access$1600(Lcom/rockrobo/more/MoreActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/MoreActivity;->identify:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/rockrobo/more/MoreActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/MoreActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/rockrobo/more/MoreActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/MoreActivity;->hasNewFirmware:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/rockrobo/more/MoreActivity;Lcom/rockrobo/more/MoreActivity$ViewHolder;)Lcom/rockrobo/more/MoreActivity$ViewHolder;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/MoreActivity;->setupViewHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/rockrobo/more/MoreActivity;Lcom/rockrobo/more/MoreActivity$ViewHolder;)Lcom/rockrobo/more/MoreActivity$ViewHolder;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/MoreActivity;->robotSetupHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

    return-object p1
.end method

.method static synthetic access$202(Lcom/rockrobo/more/MoreActivity;Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/MoreActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/rockrobo/more/MoreActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/MoreActivity;->setupRobotSetupRedPoint()V

    return-void
.end method

.method static synthetic access$2202(Lcom/rockrobo/more/MoreActivity;Lcom/rockrobo/more/MoreActivity$ViewHolder;)Lcom/rockrobo/more/MoreActivity$ViewHolder;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/MoreActivity;->consumableViewHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/rockrobo/more/MoreActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/MoreActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$400(Lcom/rockrobo/more/MoreActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/MoreActivity;->activityStarting:Z

    return p0
.end method

.method static synthetic access$402(Lcom/rockrobo/more/MoreActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/MoreActivity;->activityStarting:Z

    return p1
.end method

.method static synthetic access$500(Lcom/rockrobo/more/MoreActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/MoreActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method static synthetic access$600(Lcom/rockrobo/more/MoreActivity;Lcom/rockrobo/xmplugin/Device;)[I
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/MoreActivity;->getListViewTitleIds(Lcom/rockrobo/xmplugin/Device;)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/rockrobo/more/MoreActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/MoreActivity;->openGeneralSetup()V

    return-void
.end method

.method static synthetic access$800(Lcom/rockrobo/more/MoreActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/MoreActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method static synthetic access$900(Lcom/rockrobo/more/MoreActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/MoreActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method private buildMsgPushSwitchKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "push_switch_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rockrobo/more/MoreActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v1}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/MoreActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getListViewTitleIds(Lcom/rockrobo/xmplugin/Device;)[I
    .locals 0

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->isShared()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/rockrobo/more/MoreActivity;->sharedDeviceTitleIds:[I

    return-object p1

    :cond_0
    sget-object p1, Lcom/rockrobo/more/MoreActivity;->normalDeviceTitleIds:[I

    return-object p1
.end method

.method private handleConsumableData(Landroid/os/Message;)V
    .locals 2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/rockrobo/more/consumable/ConsumableItemSet;->dataRetrieved:Z

    invoke-static {p1}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->buildConsumableDatas(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->consumableViewHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->hasConsumableExpired()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->consumableViewHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

    iget-object p1, p1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->redPoint:Landroid/widget/ImageView;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->consumableViewHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

    iget-object p1, p1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->redPoint:Landroid/widget/ImageView;

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleConsumableDataFail()V
    .locals 2

    sget-object v0, Lcom/rockrobo/more/MoreActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Consumable data retrieve failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/rockrobo/more/MoreActivity;->consumableRetrieveFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rockrobo/more/MoreActivity;->consumableRetrieveFailCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/more/MoreActivity;->loadConsumableData()V

    :cond_0
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

    iput-object p1, p0, Lcom/rockrobo/more/MoreActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    return-void
.end method

.method private handleTimeZoneMessage(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getMessageVersion()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getMessageVersion()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/RRUtils;->getTzidByPosix(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/more/MoreActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got time zone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v0}, Lcom/rockrobo/common/RobotInfo;->setTimeZoneId(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/rockrobo/common/RobotInfo;->setTimeZonePosix(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "olson"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "posix"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/rockrobo/more/MoreActivity;->setupRobotSetupRedPoint()V

    :cond_1
    return-void
.end method

.method private loadConsumableData()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/MoreActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadConsumableData(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private makeItemListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, Lcom/rockrobo/more/MoreActivity$2;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/MoreActivity$2;-><init>(Lcom/rockrobo/more/MoreActivity;)V

    return-object v0
.end method

.method private openGeneralSetup()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "enableRemoveLicense"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getApiLevel()I

    move-result v1

    sget-object v3, Lcom/rockrobo/more/MoreActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiJia API Level:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x40

    if-lt v1, v3, :cond_1

    sget-boolean v1, Lcom/rockrobo/config/TestConfig;->testOldOpenMoreMenu:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/rockrobo/more/MoreActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p0}, Lcom/rockrobo/more/MoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/rockrobo/more/MoreActivity;->regionCode:Ljava/lang/String;

    invoke-static {p0, v1, v3, v4}, Lcom/rockrobo/utils/RRFileUtils;->getLicensePath(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/util/Locale;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v3, "licenseContentUri"

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/rockrobo/more/MoreActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "license content uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/rockrobo/more/MoreActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p0}, Lcom/rockrobo/more/MoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/rockrobo/more/MoreActivity;->regionCode:Ljava/lang/String;

    invoke-static {p0, v1, v3, v4}, Lcom/rockrobo/utils/RRFileUtils;->getPrivacyPolicyPath(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/util/Locale;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v3, "privacyContentUri"

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/rockrobo/more/MoreActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "privacy content uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/rockrobo/more/MoreActivity;->mHostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    const/4 v3, 0x0

    const/16 v4, 0xb

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;->openMoreMenu(Ljava/util/ArrayList;ZILandroid/content/Intent;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/rockrobo/more/MoreActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0129

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    return-void
.end method

.method private resetLogLevel()V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/more/MoreActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/rockrobo/presenter/RobotPresenterI;->sendLogLevel(ILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private setupRobotSetupRedPoint()V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/more/MoreActivity;->robotSetupHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getMessageVersion()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getMessageVersion()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v0, v1, :cond_2

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getTimeZonePosix()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/rockrobo/utils/RRUtils;->getPosixByTzid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/rockrobo/more/MoreActivity;->robotSetupHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

    iget-object v0, v0, Lcom/rockrobo/more/MoreActivity$ViewHolder;->redPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/more/MoreActivity;->robotSetupHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

    iget-object v0, v0, Lcom/rockrobo/more/MoreActivity$ViewHolder;->redPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getTimeZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rockrobo/utils/RRUtils;->isSameTimeZone(Ljava/util/TimeZone;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected doCheckTask()V
    .locals 0

    return-void
.end method

.method protected doStatusTask()V
    .locals 3

    iget-boolean v0, p0, Lcom/rockrobo/more/MoreActivity;->statusLoading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/MoreActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/more/MoreActivity;->statusLoading:Z

    :cond_0
    return-void
.end method

.method public getActivityTitle()I
    .locals 1

    const v0, 0x7f0a013a

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f080009

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-virtual {p0}, Lcom/rockrobo/more/MoreActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/rockrobo/more/MoreActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0xc

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_0
    sget-object p1, Lcom/rockrobo/more/MoreActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "reset log level failed!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/rockrobo/more/MoreActivity;->resetLogLevelCnt:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/rockrobo/more/MoreActivity;->resetLogLevelCnt:I

    iget p1, p0, Lcom/rockrobo/more/MoreActivity;->resetLogLevelCnt:I

    if-ge p1, v4, :cond_1

    invoke-direct {p0}, Lcom/rockrobo/more/MoreActivity;->resetLogLevel()V

    return-void

    :cond_1
    invoke-virtual {p0, v5}, Lcom/rockrobo/more/MoreActivity;->setResult0(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/rockrobo/more/MoreActivity;->finish()V

    return-void

    :pswitch_1
    sget-object p1, Lcom/rockrobo/more/MoreActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "reset log level success"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/rockrobo/more/MoreActivity;->setResult0(I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getMessageVersion()I

    move-result p1

    if-eq p1, v3, :cond_2

    iput-boolean v5, p0, Lcom/rockrobo/more/MoreActivity;->needReLoadTimeZone:Z

    :goto_1
    invoke-virtual {p0}, Lcom/rockrobo/more/MoreActivity;->loadTimeZoneFromRobot()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :pswitch_3
    iput-boolean v2, p0, Lcom/rockrobo/more/MoreActivity;->needReLoadTimeZone:Z

    invoke-direct {p0, p1}, Lcom/rockrobo/more/MoreActivity;->handleTimeZoneMessage(Landroid/os/Message;)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/rockrobo/more/MoreActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a00d5

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreActivity;->handleUpdateFirmMessage(Landroid/os/Message;)V

    return-void

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/rockrobo/more/MoreActivity;->handleConsumableData(Landroid/os/Message;)V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-boolean p1, p0, Lcom/rockrobo/more/MoreActivity;->isSwitchOn:Z

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreActivity;->saveLocalStatus(Z)V

    return-void

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "us_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/MoreActivity;->usId:I

    const-string v0, "identify"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/MoreActivity;->identify:Ljava/lang/String;

    const-string v0, "setting"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "enable_exception_alert"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "enable_exception_alert"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lcom/rockrobo/more/MoreActivity;->isSwitchOn:Z

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-boolean p1, p0, Lcom/rockrobo/more/MoreActivity;->isSwitchOn:Z

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreActivity;->saveLocalStatus(Z)V

    sget-object p1, Lcom/rockrobo/more/MoreActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg push status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/rockrobo/more/MoreActivity;->isSwitchOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    :pswitch_9
    iget p1, p0, Lcom/rockrobo/more/MoreActivity;->pushStatusGetRetryCnt:I

    if-ge p1, v4, :cond_7

    iget p1, p0, Lcom/rockrobo/more/MoreActivity;->pushStatusGetRetryCnt:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/rockrobo/more/MoreActivity;->pushStatusGetRetryCnt:I

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/rockrobo/presenter/RobotPresenterI;->loadPushStatusFromServer(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    :pswitch_a
    iget-boolean p1, p0, Lcom/rockrobo/more/MoreActivity;->isSwitchOn:Z

    xor-int/2addr p1, v5

    iput-boolean p1, p0, Lcom/rockrobo/more/MoreActivity;->isSwitchOn:Z

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/rockrobo/more/MoreActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a01d2

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0}, Lcom/rockrobo/more/MoreActivity;->handleConsumableDataFail()V

    return-void

    :pswitch_c
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/rockrobo/more/MoreActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a00d4

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_d
    iget p1, p0, Lcom/rockrobo/more/MoreActivity;->getTimeZoneCnt:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/rockrobo/more/MoreActivity;->getTimeZoneCnt:I

    iget p1, p0, Lcom/rockrobo/more/MoreActivity;->getTimeZoneCnt:I

    if-ge p1, v1, :cond_4

    goto/16 :goto_1

    :cond_4
    iput-boolean v2, p0, Lcom/rockrobo/more/MoreActivity;->needReLoadTimeZone:Z

    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/rockrobo/more/MoreActivity;->handleStatus(Landroid/os/Message;)V

    :cond_6
    iput-boolean v2, p0, Lcom/rockrobo/more/MoreActivity;->statusLoading:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    sget-object v0, Lcom/rockrobo/more/MoreActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got JSONException, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :pswitch_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleUpdateFirmMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/smarthome/device/api/DeviceUpdateInfo;

    iget-object v0, p0, Lcom/rockrobo/more/MoreActivity;->setupViewHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/xiaomi/smarthome/device/api/DeviceUpdateInfo;->mHasNewFirmware:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->setupViewHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

    iget-object p1, p1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->redPoint:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/rockrobo/more/MoreActivity;->hasNewFirmware:Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->setupViewHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

    iget-object p1, p1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->redPoint:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/rockrobo/more/MoreActivity;->hasNewFirmware:Z

    :cond_1
    return-void
.end method

.method public loadTimeZoneFromRobot()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/MoreActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadTimeZone(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    sget-object v0, Lcom/rockrobo/more/MoreActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "request code:%d, result code:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    if-eqz p3, :cond_0

    const-string v1, "result_data"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v1, "removedLicense"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lcom/rockrobo/more/MoreActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Got removedLicense!"

    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/rockrobo/more/MoreActivity;->resetLogLevel()V

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/more/MoreActivity;->regionCode:Ljava/lang/String;

    invoke-static {p0, p3, v1}, Lcom/rockrobo/utils/PreferenceUtils;->removeLicenseAgreeStatus(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p0, p3}, Lcom/rockrobo/utils/PreferenceUtils;->removeUserImprovePlanStatus(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)V

    :try_start_0
    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->clearMapData(Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/rockrobo/presenter/PresenterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    sget-object v1, Lcom/rockrobo/more/MoreActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/rockrobo/presenter/PresenterException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-ne p1, v0, :cond_1

    if-ne p2, v4, :cond_1

    invoke-virtual {p0}, Lcom/rockrobo/more/MoreActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/rockrobo/more/MoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "firmware_new_key"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/rockrobo/more/MoreActivity;->hasNewFirmware:Z

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->getRegionCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/MoreActivity;->regionCode:Ljava/lang/String;

    invoke-direct {p0}, Lcom/rockrobo/more/MoreActivity;->buildMsgPushSwitchKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->hasPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/more/MoreActivity;->buildMsgPushSwitchKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "false"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/rockrobo/more/MoreActivity;->isSwitchOn:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/rockrobo/more/MoreActivity;->isSwitchOn:Z

    :goto_0
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadPushStatusFromServer(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/MoreActivity;->mInflater:Landroid/view/LayoutInflater;

    const p1, 0x7f060079

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/rockrobo/more/MoreActivity;->mListView:Landroid/widget/ListView;

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-direct {p0, p1}, Lcom/rockrobo/more/MoreActivity;->getListViewTitleIds(Lcom/rockrobo/xmplugin/Device;)[I

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/rockrobo/more/MoreActivity;->listViewItems:[Landroid/view/View;

    new-instance p1, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;-><init>(Lcom/rockrobo/more/MoreActivity;Lcom/rockrobo/more/MoreActivity$1;)V

    iput-object p1, p0, Lcom/rockrobo/more/MoreActivity;->adapter:Landroid/widget/BaseAdapter;

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/rockrobo/more/MoreActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/rockrobo/more/MoreActivity;->makeItemListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/MoreActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0600e1

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/MoreActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/MoreActivity$1;-><init>(Lcom/rockrobo/more/MoreActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0600df

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0600e2

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/MoreActivity;->activityStarting:Z

    iput v0, p0, Lcom/rockrobo/more/MoreActivity;->getTimeZoneCnt:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rockrobo/more/MoreActivity;->needReLoadTimeZone:Z

    iget-object v1, p0, Lcom/rockrobo/more/MoreActivity;->setupViewHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/rockrobo/more/MoreActivity;->hasNewFirmware:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rockrobo/more/MoreActivity;->setupViewHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

    iget-object v1, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->redPoint:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/rockrobo/more/MoreActivity;->setupViewHolder:Lcom/rockrobo/more/MoreActivity$ViewHolder;

    iget-object v1, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->redPoint:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/rockrobo/more/MoreActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/rockrobo/presenter/RobotPresenterI;->checkDeviceUpdateInfo(Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput v0, p0, Lcom/rockrobo/more/MoreActivity;->consumableRetrieveFailCount:I

    iget-object v0, p0, Lcom/rockrobo/more/MoreActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v0}, Lcom/rockrobo/xmplugin/Device;->isShared()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/rockrobo/more/MoreActivity;->loadConsumableData()V

    :cond_2
    iget-boolean v0, p0, Lcom/rockrobo/more/MoreActivity;->needReLoadTimeZone:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/rockrobo/more/MoreActivity;->loadTimeZoneFromRobot()V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/rockrobo/more/MoreActivity;->setupRobotSetupRedPoint()V

    return-void
.end method

.method protected resetTimerTaskVariables()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/MoreActivity;->statusLoading:Z

    return-void
.end method

.method public saveLocalStatus(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/rockrobo/more/MoreActivity;->buildMsgPushSwitchKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
