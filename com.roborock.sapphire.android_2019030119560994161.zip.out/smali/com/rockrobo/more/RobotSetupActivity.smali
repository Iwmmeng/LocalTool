.class public Lcom/rockrobo/more/RobotSetupActivity;
.super Lcom/rockrobo/more/MoreBaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;,
        Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;,
        Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;
    }
.end annotation


# static fields
.field public static final CARPET_MODE_CURRENT_HIGH_KEY:Ljava/lang/String; = "current_high"

.field public static final CARPET_MODE_CURRENT_INTEGRAL_KEY:Ljava/lang/String; = "current_integral"

.field public static final CARPET_MODE_CURRENT_LOW_KEY:Ljava/lang/String; = "current_low"

.field public static final CARPET_MODE_ENABLE_KEY:Ljava/lang/String; = "enable"

.field public static final CARPET_MODE_HIGH_VALUE:I = 0x1f4

.field public static final CARPET_MODE_INTEGRAL_VALUE:I = 0x1c2

.field public static final CARPET_MODE_LOW_VALUE:I = 0x190

.field public static final CARPET_MODE_STALL_TIME_KEY:Ljava/lang/String; = "stall_time"

.field public static final CARPET_MODE_STALL_TIME_VALUE:I = 0xa

.field public static final DEFAULT_ROBOT_TIME_ZONE_ID:Ljava/lang/String; = "Asia/Beijing"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MOP_MODE_OFF:I = 0x0

.field public static final MOP_MODE_ON:I = 0x1

.field private static final MOP_MODE_UNKNOWN:I = -0x1

.field private static final MSG_GET_CARPET_MODE:I = 0x7

.field private static final MSG_GET_CARPET_MODE_FAIL:I = -0x7

.field private static final MSG_GET_TIME_ZONE:I = 0x6

.field private static final MSG_GET_TIME_ZONE_FAIL:I = -0x6

.field private static final MSG_SET_CARPET_MODE_OFF:I = 0x9

.field private static final MSG_SET_CARPET_MODE_OFF_FAIL:I = -0x9

.field private static final MSG_SET_CARPET_MODE_ON:I = 0x8

.field private static final MSG_SET_CARPET_MODE_ON_FAIL:I = -0x8

.field private static final STATUS_TIMER_DELAY:I = 0x12c

.field private static final STATUS_TIMER_INTERVAL:I = 0x5dc

.field public static final TIMER_PERIOD:I = 0x3e8

.field public static final WAIT_MESSAGE_VER_DELAY_MILLIS:I = 0x1f4

.field public static final titleIds:[I


# instance fields
.field private activityStarting:Z

.field private carpetMode:Lcom/rockrobo/common/CarpetMode;

.field private carpetModeLoading:Z

.field private carpetModeSetting:Z

.field private carpetModeSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

.field private listAdapter:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

.field private listViewItems:[Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mopMode:I

.field private mopModeSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

.field private needCarpetReLoad:Z

.field private needSetCarpetModeOn:Z

.field private progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

.field private statusTask:Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;

.field private statusTimer:Ljava/util/Timer;

.field private timeZoneId:Ljava/lang/String;

.field private timeZoneLoading:Z

.field private timeZoneMismatchIndicator:Landroid/view/View;

.field private timeZoneSubTitleTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/RobotSetupActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/RobotSetupActivity;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rockrobo/more/RobotSetupActivity;->titleIds:[I

    return-void

    :array_0
    .array-data 4
        0x7f0a01c1
        0x7f0a01c5
        0x7f0a000a
        0x7f0a0136
        0x7f0a0142
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/rockrobo/more/MoreBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeSetting:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->needSetCarpetModeOn:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->needCarpetReLoad:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/rockrobo/more/RobotSetupActivity;->mopMode:I

    iput-boolean v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->activityStarting:Z

    return-void
.end method

.method static synthetic access$100(Lcom/rockrobo/more/RobotSetupActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/RobotSetupActivity;->activityStarting:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/rockrobo/more/RobotSetupActivity;)Lcom/rockrobo/common/CarpetMode;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetMode:Lcom/rockrobo/common/CarpetMode;

    return-object p0
.end method

.method static synthetic access$102(Lcom/rockrobo/more/RobotSetupActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->activityStarting:Z

    return p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/RobotSetupActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/rockrobo/more/RobotSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/RobotSetupActivity;->showCarpetModeSetProgressBar()V

    return-void
.end method

.method static synthetic access$1300(Lcom/rockrobo/more/RobotSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/RobotSetupActivity;->setCarpetModeOn()V

    return-void
.end method

.method static synthetic access$1400(Lcom/rockrobo/more/RobotSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/RobotSetupActivity;->setCarpetModeOff()V

    return-void
.end method

.method static synthetic access$1500(Lcom/rockrobo/more/RobotSetupActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneSubTitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/rockrobo/more/RobotSetupActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneSubTitleTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/rockrobo/more/RobotSetupActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneMismatchIndicator:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/rockrobo/more/RobotSetupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneIdAdjust(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/rockrobo/more/RobotSetupActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/rockrobo/more/RobotSetupActivity;)Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/RobotSetupActivity;->mopModeSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/rockrobo/more/RobotSetupActivity;Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;)Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->mopModeSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/rockrobo/more/RobotSetupActivity;)I
    .locals 0

    iget p0, p0, Lcom/rockrobo/more/RobotSetupActivity;->mopMode:I

    return p0
.end method

.method static synthetic access$2002(Lcom/rockrobo/more/RobotSetupActivity;I)I
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->mopMode:I

    return p1
.end method

.method static synthetic access$2100(Lcom/rockrobo/more/RobotSetupActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/RobotSetupActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/rockrobo/more/RobotSetupActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/RobotSetupActivity;->isTimeZoneGot()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/rockrobo/more/RobotSetupActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneLoading:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/rockrobo/more/RobotSetupActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneLoading:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/rockrobo/more/RobotSetupActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/RobotSetupActivity;->isCarpetModeGot()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/rockrobo/more/RobotSetupActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeLoading:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/rockrobo/more/RobotSetupActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeLoading:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/rockrobo/more/RobotSetupActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/RobotSetupActivity;->needCarpetReLoad:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/rockrobo/more/RobotSetupActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/RobotSetupActivity;->isCarpetModeOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/rockrobo/more/RobotSetupActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/RobotSetupActivity;->needSetCarpetModeOn:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/rockrobo/more/RobotSetupActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeSetting:Z

    return p0
.end method

.method static synthetic access$2902(Lcom/rockrobo/more/RobotSetupActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeSetting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/RobotSetupActivity;->listViewItems:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/rockrobo/more/RobotSetupActivity;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/RobotSetupActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$900(Lcom/rockrobo/more/RobotSetupActivity;)Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    return-object p0
.end method

.method static synthetic access$902(Lcom/rockrobo/more/RobotSetupActivity;Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;)Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    return-object p1
.end method

.method private buildCarpetModePrefKey()Ljava/lang/String;
    .locals 2

    const-string v0, "carpet_mode_key_"

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCarpetModeSet()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/rockrobo/common/CarpetMode;->ON:Lcom/rockrobo/common/CarpetMode;

    :goto_0
    invoke-static {v0}, Lcom/rockrobo/common/RobotInfo;->setCarpetMode(Lcom/rockrobo/common/CarpetMode;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/rockrobo/common/CarpetMode;->OFF:Lcom/rockrobo/common/CarpetMode;

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/rockrobo/more/RobotSetupActivity;->buildCarpetModePrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getCarpetMode()Lcom/rockrobo/common/CarpetMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockrobo/common/CarpetMode;->getValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->listAdapter:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    invoke-virtual {v0}, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private handleGetCarpetMode(Landroid/os/Message;)V
    .locals 5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "enable"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/rockrobo/common/CarpetMode;->OFF:Lcom/rockrobo/common/CarpetMode;

    invoke-static {p1}, Lcom/rockrobo/common/RobotInfo;->setCarpetMode(Lcom/rockrobo/common/CarpetMode;)V

    invoke-direct {p0}, Lcom/rockrobo/more/RobotSetupActivity;->buildCarpetModePrefKey()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/rockrobo/common/CarpetMode;->OFF:Lcom/rockrobo/common/CarpetMode;

    invoke-virtual {v1}, Lcom/rockrobo/common/CarpetMode;->getValue()I

    move-result v1

    invoke-static {p0, p1, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/rockrobo/common/CarpetMode;->ON:Lcom/rockrobo/common/CarpetMode;

    invoke-static {v0}, Lcom/rockrobo/common/RobotInfo;->setCarpetMode(Lcom/rockrobo/common/CarpetMode;)V

    invoke-direct {p0}, Lcom/rockrobo/more/RobotSetupActivity;->buildCarpetModePrefKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/common/CarpetMode;->ON:Lcom/rockrobo/common/CarpetMode;

    invoke-virtual {v1}, Lcom/rockrobo/common/CarpetMode;->getValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeSwitchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setChecked(Z)V

    const-string v0, "current_integral"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "current_high"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "current_low"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "stall_time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v4, 0x1c2

    if-ne v0, v4, :cond_1

    const/16 v0, 0x1f4

    if-ne v2, v0, :cond_1

    const/16 v0, 0x190

    if-ne v3, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    :cond_1
    iput-boolean v1, p0, Lcom/rockrobo/more/RobotSetupActivity;->needSetCarpetModeOn:Z

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->listAdapter:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    invoke-virtual {p1}, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private handleGetTimeZone(Landroid/os/Message;)V
    .locals 3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "olson"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "posix"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/rockrobo/common/RobotInfo;->setTimeZoneId(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/rockrobo/common/RobotInfo;->setTimeZonePosix(Ljava/lang/String;)V

    sget-object p1, Lcom/rockrobo/more/RobotSetupActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got time zone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneSubTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneIdAdjust(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p1}, Lcom/rockrobo/utils/PreferenceUtils;->buildTimeZoneSaveKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/rockrobo/utils/PreferenceUtils;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rockrobo/more/RobotSetupActivity;->setupTimeZoneMismatchIndicator()V

    return-void
.end method

.method private isCarpetModeGot()Z
    .locals 2

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getCarpetMode()Lcom/rockrobo/common/CarpetMode;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/common/CarpetMode;->UNKNOWN:Lcom/rockrobo/common/CarpetMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCarpetModeOn()Z
    .locals 2

    invoke-direct {p0}, Lcom/rockrobo/more/RobotSetupActivity;->isCarpetModeGot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getCarpetMode()Lcom/rockrobo/common/CarpetMode;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/common/CarpetMode;->ON:Lcom/rockrobo/common/CarpetMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTimeZoneGot()Z
    .locals 1

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getTimeZonePosix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getTimeZoneId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private makeItemListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, Lcom/rockrobo/more/RobotSetupActivity$2;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/RobotSetupActivity$2;-><init>(Lcom/rockrobo/more/RobotSetupActivity;)V

    return-object v0
.end method

.method private setCarpetModeOff()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->carpetModeOff(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private setCarpetModeOn()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->carpetModeOn(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private showCarpetModeSetProgressBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/rockrobo/more/RobotSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showNotCancellableProgressDialog(Landroid/app/Activity;Ljava/lang/String;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    return-void
.end method

.method private timeZoneIdAdjust(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "Asia/Shanghai"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Asia/Beijing"

    :cond_1
    return-object p1
.end method


# virtual methods
.method public getActivityTitle()I
    .locals 1

    const v0, 0x7f0a01be

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f08000f

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p0}, Lcom/rockrobo/more/RobotSetupActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/rockrobo/more/RobotSetupActivity;->LOG_TAG:Ljava/lang/String;

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

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_0
    iput-boolean v1, p0, Lcom/rockrobo/more/RobotSetupActivity;->needSetCarpetModeOn:Z

    iput-boolean v1, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeSetting:Z

    :pswitch_1
    invoke-direct {p0}, Lcom/rockrobo/more/RobotSetupActivity;->handleCarpetModeSet()V

    return-void

    :pswitch_2
    iput-boolean v1, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeLoading:Z

    iput-boolean v1, p0, Lcom/rockrobo/more/RobotSetupActivity;->needCarpetReLoad:Z

    invoke-direct {p0, p1}, Lcom/rockrobo/more/RobotSetupActivity;->handleGetCarpetMode(Landroid/os/Message;)V

    return-void

    :pswitch_3
    iput-boolean v1, p0, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneLoading:Z

    invoke-direct {p0, p1}, Lcom/rockrobo/more/RobotSetupActivity;->handleGetTimeZone(Landroid/os/Message;)V

    return-void

    :pswitch_4
    iput-boolean v1, p0, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneLoading:Z

    return-void

    :pswitch_5
    iput-boolean v1, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeLoading:Z

    return-void

    :pswitch_6
    iput-boolean v1, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeSetting:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/more/RobotSetupActivity;->LOG_TAG:Ljava/lang/String;

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

    :pswitch_7
    return-void

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadCarpetMode()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadCarpetModeStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadTimeZone()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadTimeZone(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p1}, Lcom/rockrobo/utils/PreferenceUtils;->buildTimeZoneSaveKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->hasPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p1}, Lcom/rockrobo/utils/PreferenceUtils;->buildTimeZoneSaveKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string p1, "Asia/Beijing"

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/rockrobo/more/RobotSetupActivity;->buildCarpetModePrefKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->hasPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/rockrobo/more/RobotSetupActivity;->buildCarpetModePrefKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/rockrobo/utils/PreferenceUtils;->getIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/rockrobo/common/CarpetMode;->fromValue(I)Lcom/rockrobo/common/CarpetMode;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetMode:Lcom/rockrobo/common/CarpetMode;

    goto :goto_3

    :cond_1
    sget-object p1, Lcom/rockrobo/common/CarpetMode;->OFF:Lcom/rockrobo/common/CarpetMode;

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->getMopModePreference(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->mopMode:I

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->mInflater:Landroid/view/LayoutInflater;

    const p1, 0x7f060057

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/RobotSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->mListView:Landroid/widget/ListView;

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    sget-object p1, Lcom/rockrobo/more/RobotSetupActivity;->titleIds:[I

    array-length p1, p1

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->listViewItems:[Landroid/view/View;

    new-instance p1, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;-><init>(Lcom/rockrobo/more/RobotSetupActivity;Lcom/rockrobo/more/RobotSetupActivity$1;)V

    iput-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->listAdapter:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->listAdapter:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/rockrobo/more/RobotSetupActivity;->makeItemListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0600e1

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/RobotSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/RobotSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/RobotSetupActivity$1;-><init>(Lcom/rockrobo/more/RobotSetupActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0600df

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/RobotSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0600e2

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/RobotSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->statusTask:Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;

    invoke-virtual {v0}, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;->cancel()Z

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->statusTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onResume()V

    sget-object v0, Lcom/rockrobo/more/RobotSetupActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->activityStarting:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->carpetModeSetting:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->needCarpetReLoad:Z

    new-instance v0, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;-><init>(Lcom/rockrobo/more/RobotSetupActivity;Lcom/rockrobo/more/RobotSetupActivity$1;)V

    iput-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->statusTask:Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->statusTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity;->statusTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/rockrobo/more/RobotSetupActivity;->statusTask:Lcom/rockrobo/more/RobotSetupActivity$StatusTimerTask;

    const-wide/16 v3, 0x12c

    const-wide/16 v5, 0x5dc

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public setupTimeZoneMismatchIndicator()V
    .locals 4

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getMessageVersion()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getMessageVersion()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v0, v1, :cond_1

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

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneMismatchIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity;->timeZoneMismatchIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getTimeZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rockrobo/utils/RRUtils;->isSameTimeZone(Ljava/util/TimeZone;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    return-void
.end method
