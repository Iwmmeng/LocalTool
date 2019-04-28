.class public Lcom/rockrobo/clean/CleanActivity;
.super Lcom/rockrobo/xmplugin/RRBaseActivity;

# interfaces
.implements Lcom/rockrobo/clean/PropChangedListenerI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;,
        Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;,
        Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;,
        Lcom/rockrobo/clean/CleanActivity$MainViewTouchListener;,
        Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;
    }
.end annotation


# static fields
.field public static final BATTERY_KEY:Ljava/lang/String; = "battery"

.field private static final CHARGE_FULL_KEY_PROMPT_PREFIX:Ljava/lang/String; = "charge_full_key_prompt"

.field private static final CHECK_TIMER_INTERVAL:I = 0x1f4

.field public static final CLEAN_AREA_KEY:Ljava/lang/String; = "clean_area"

.field public static final CLEAN_TIME_KEY:Ljava/lang/String; = "clean_time"

.field public static final ERROR_CODE_PUSH_EVENT:Ljava/lang/String; = "error_code"

.field public static final FIRMWARE_NEW_INTENT_KEY:Ljava/lang/String; = "firmware_new_key"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAP_FAIL_TIMES_LIMIT:I = 0x3

.field private static final MAP_RETRIEVE_INTERVAL_IN_FREEZE_STATE:J = 0x3a98L

.field public static final MODE_KEY:Ljava/lang/String; = "fan_power"

.field private static final MSG_BACK_TO_DOCK:I = 0x4

.field private static final MSG_BACK_TO_DOCK_NEARBY:I = 0x18

.field private static final MSG_BACK_TO_ORIGIN_FAIL:I = -0x5

.field private static final MSG_BACK_TO_ORIGIN_SUCCESS:I = 0x5

.field private static final MSG_BIN_FULL:I = 0x19

.field private static final MSG_CHARGE:I = 0xe2

.field private static final MSG_CHARGE_FAIL:I = -0xe2

.field private static final MSG_CHECK_MAP:I = 0x67

.field private static final MSG_CLEAN:I = 0xe4

.field private static final MSG_CLEAN_COMPLETE:I = 0x2

.field private static final MSG_CLEAN_FAIL:I = -0xe4

.field private static final MSG_CONSUMABLE_DATA:I = 0x73

.field private static final MSG_CONSUMABLE_DATA_FAIL:I = -0x73

.field private static final MSG_COUNTRY_IN:I = 0xe0

.field private static final MSG_COUNTRY_IN_FAIL:I = -0xe0

.field private static final MSG_DEVICE_OFF_LINE:I = 0x6f

.field private static final MSG_DEVICE_ON_LINE:I = 0xd5

.field private static final MSG_DOCK_NO_MAP:I = 0xd

.field private static final MSG_ERROR_CODE:I = 0x11

.field private static final MSG_FIRMWARE_FEATURES:I = 0xde

.field private static final MSG_FIRMWARE_FEATURES_FAIL:I = -0xde

.field private static final MSG_HIDE_TOAST:I = 0x75

.field public static final MSG_LICENCE_DOWNLOAD:I = 0xd7

.field private static final MSG_LOCATION_LANG:I = 0xdc

.field private static final MSG_LOCATION_LANG_FAIL:I = -0xdc

.field private static final MSG_LOG_LEVEL:I = 0xcc

.field private static final MSG_LOG_LEVEL_FAIL:I = -0xcc

.field private static final MSG_LOW_POWER_BACK:I = 0x3

.field private static final MSG_MAP:I = 0xd6

.field private static final MSG_MAP_BUTTON_CLICKED:I = 0xda

.field private static final MSG_MAP_FAIL:I = -0xd6

.field private static final MSG_MAP_NAME:I = 0xc

.field private static final MSG_MAP_NAME_FAIL:I = -0xc

.field private static final MSG_MESSAGE_VERSION:I = 0xdd

.field private static final MSG_MESSAGE_VERSION_FAIL:I = -0xdd

.field private static final MSG_MOP_MODE_ENTRY:I = 0xd9

.field private static final MSG_NO_DISTURB_END:I = 0x9

.field private static final MSG_NO_DISTURB_START:I = 0x8

.field private static final MSG_PAUSE:I = 0xe3

.field private static final MSG_PAUSE_FAIL:I = -0xe3

.field private static final MSG_POWER_RESUME_CLEAN:I = 0x7

.field public static final MSG_PRIVACY_DOWNLOAD:I = 0xd8

.field private static final MSG_RC_EXITED:I = 0xce

.field private static final MSG_RC_EXIT_FAIL:I = -0xce

.field private static final MSG_RELOCATE_FAIL:I = -0xd

.field private static final MSG_SET_LOG_LEVEL:I = 0x71

.field private static final MSG_SET_LOG_LEVEL_FAIL:I = -0x71

.field private static final MSG_SET_MODE:I = 0xdb

.field private static final MSG_SET_MODE_FAIL:I = -0xdb

.field private static final MSG_SHOW_COUNTRY_SELECTION_DIALOG:I = 0xe1

.field private static final MSG_SHOW_LICENSE_DIALOG:I = 0x70

.field private static final MSG_SHOW_ROBOT_LOCATION_INVALIDATE_DIALOG:I = 0xdf

.field private static final MSG_SPOT_IN_CHARGE:I = 0x6b

.field private static final MSG_STATUS:I = 0x1

.field private static final MSG_STATUS_FAIL:I = -0x1

.field public static final MSG_STATUS_NO_DISTURB_KEY:Ljava/lang/String; = "dnd_enabled"

.field private static final MSG_SUBSCRIBE:I = 0xe5

.field private static final MSG_SUBSCRIBE_FAIL:I = -0xe5

.field private static final MSG_TIMED_CLEAN_CANCEL:I = 0x1a

.field private static final MSG_TIMED_CLEAN_END:I = 0xb

.field private static final MSG_TIMED_CLEAN_START:I = 0xa

.field private static final MSG_TIME_ZONE:I = 0xd3

.field private static final MSG_TIME_ZONE_FAIL:I = -0xd3

.field private static final MSG_UNSUBSCRIBE:I = 0xe6

.field private static final MSG_UNSUBSCRIBE_FAIL:I = -0xe6

.field private static final MSG_UPDATE_FIRM:I = 0x64

.field private static final MSG_UPDATE_FIRM_FAIL:I = -0x64

.field private static final NO_DISTURB_KEY_PROMPT_PREFIX:Ljava/lang/String; = "no_disturb_key_prompt"

.field private static final RC_RETRY_CNT:I = 0x7

.field private static final REQUEST_CODE_MORE_ACTIVITY:I = 0x1

.field public static final RESULT_CODE_JUMP_BACK_FROM_LICENSE_REMOVED:I = 0x1

.field public static final STATE_KEY:Ljava/lang/String; = "state"

.field public static final STATUS_KEY_CLEAN_STRATEGY:Ljava/lang/String; = "clean_strategy"

.field private static final STATUS_TIMER_DELAY:I = 0x12c

.field private static final STATUS_TIMER_INTERVAL:I = 0x5dc

.field private static final TIMED_CLEAN_START_STATUS_CANCELED:I = 0x66

.field private static final TIMED_CLEAN_START_STATUS_IDX:I = 0x1

.field private static final TIMED_CLEAN_START_STATUS_STARTED:I = 0x0

.field private static final TOAST_DURATION:J = 0xbb8L


# instance fields
.field private actionBar:Landroid/view/View;

.field private actionBarSlideIn:Landroid/view/animation/Animation;

.field private actionBarSlideOut:Landroid/view/animation/Animation;

.field private areaValue:I

.field private batteryValue:I

.field private chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

.field private chargeFullPrompted:Z

.field private checkTask:Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;

.field private cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

.field private cleanInfo:Lcom/rockrobo/common/CleanInfo;

.field private cleanMode:Lcom/rockrobo/common/CleanMode;

.field private cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

.field private volatile consumableDataLoading:Z

.field private consumableExpired:Z

.field private volatile countryInLoading:Z

.field private volatile countrySelecting:Z

.field private dockFailPrompted:Z

.field private durationValue:I

.field private errorArrow:Landroid/widget/ImageView;

.field private errorBinFullClosed:Z

.field private errorClose:Landroid/widget/ImageView;

.field private errorCode:I

.field private errorContent:Landroid/widget/TextView;

.field private errorStrainerClosed:Z

.field private errorTitle:Landroid/widget/TextView;

.field private errorTraceClosed:Z

.field private errorView:Landroid/view/View;

.field private volatile firmwareFeaturesLoading:Z

.field private hasNewFirmware:Z

.field private keyFrameContainer:Landroid/widget/FrameLayout;

.field private lastMapRetrieveTime:J

.field private volatile licenseAgreed:Z

.field private licenseContent:Ljava/lang/String;

.field private volatile licenseDialogInProgress:Z

.field private volatile localLogLevel:I

.field private volatile locationInvalidDialogShowing:Z

.field private volatile locationLangLoading:Z

.field private volatile logLevelLoading:Z

.field private volatile logLevelSetting:Z

.field private mainView:Lcom/rockrobo/ui/mainview/MainViewI;

.field private mainViewCover:Landroid/view/View;

.field private mainViewCoverFadeIn:Landroid/view/animation/Animation;

.field private mainViewCoverFadeOut:Landroid/view/animation/Animation;

.field private mainViewCoverFadeOutForModeBar:Landroid/view/animation/Animation;

.field private mapDrawn:Z

.field private mapInfo:Lcom/rockrobo/map/MapInfo;

.field private mapLoadingFailCount:I

.field private mapRetriever:Lcom/rockrobo/map/MapRetriever;

.field private mapShareBuilder:Lcom/rockrobo/map/MapShareBuilder;

.field private mapView:Lcom/rockrobo/map/MapViewI;

.field private mapViewAnimateInProgress:Z

.field private mapViewContainer:Landroid/widget/RelativeLayout;

.field private mapViewHide:Landroid/widget/ImageView;

.field private mapViewShare:Landroid/widget/ImageView;

.field private mapViewSlideIn:Landroid/view/animation/Animation;

.field private mapViewSlideOut:Landroid/view/animation/Animation;

.field private volatile messageVersionLoading:Z

.field private modeBar:Landroid/widget/LinearLayout;

.field private modeBarBottomMarginEnd:F

.field private modeBarBottomMarginStart:F

.field private modeBarFullButton:Lcom/rockrobo/ui/HeartBeatView;

.field private modeBarHeight:F

.field private modeBarInAnimator:Landroid/animation/ValueAnimator;

.field private modeBarLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private modeBarMopButton:Lcom/rockrobo/ui/HeartBeatView;

.field private modeBarOutAnimator:Landroid/animation/ValueAnimator;

.field private modeBarPowerButton:Lcom/rockrobo/ui/HeartBeatView;

.field private modeBarSilentButton:Lcom/rockrobo/ui/HeartBeatView;

.field private modeBarStandardButton:Lcom/rockrobo/ui/HeartBeatView;

.field private modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

.field private mopModeEntry:Z

.field private moreButton:Landroid/widget/ImageView;

.field private noDisturb:Ljava/lang/Integer;

.field private noDisturbPrompted:Z

.field private volatile policyDownloadTask:Lcom/rockrobo/clean/RawFileLoadAsyncTask;

.field private preMapName:Ljava/lang/String;

.field private privacyPolicyContent:Ljava/lang/String;

.field private rcExitRetries:I

.field private redPointView:Landroid/view/View;

.field private regionCode:Ljava/lang/String;

.field private robotLogLevel:I

.field private robotStatus:Lcom/rockrobo/clean/RobotStatus;

.field private volatile statusLoading:Z

.field private statusTask:Ljava/util/TimerTask;

.field private subtitle:Landroid/widget/TextView;

.field private volatile timeZoneLoading:Z

.field private timer:Ljava/util/Timer;

.field private title:Landroid/widget/TextView;

.field private toastImage:Landroid/widget/ImageView;

.field private toastText:Landroid/widget/TextView;

.field private toastView:Landroid/view/View;

.field private warningCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/clean/CleanActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/rockrobo/xmplugin/RRBaseActivity;-><init>()V

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorCode:I

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->warningCode:I

    const/16 v1, -0x6f

    iput v1, p0, Lcom/rockrobo/clean/CleanActivity;->robotLogLevel:I

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->hasNewFirmware:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->consumableExpired:Z

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->rcExitRetries:I

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapDrawn:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->preMapName:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/rockrobo/clean/CleanActivity;->mopModeEntry:Z

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapLoadingFailCount:I

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorStrainerClosed:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorBinFullClosed:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorTraceClosed:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewAnimateInProgress:Z

    iput-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sget-object v2, Lcom/rockrobo/clean/CleanStrategy;->UNKNOWN:Lcom/rockrobo/clean/CleanStrategy;

    iput-object v2, p0, Lcom/rockrobo/clean/CleanActivity;->cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

    iput-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->policyDownloadTask:Lcom/rockrobo/clean/RawFileLoadAsyncTask;

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->locationLangLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->countryInLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->messageVersionLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->firmwareFeaturesLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->locationInvalidDialogShowing:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->licenseAgreed:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->consumableDataLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->logLevelLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->timeZoneLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->statusLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->logLevelSetting:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->licenseDialogInProgress:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->countrySelecting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/clean/CleanActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->moreButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/rockrobo/clean/CleanActivity;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->buttonDisabled(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->hideMapView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/rockrobo/clean/CleanActivity;)I
    .locals 0

    iget p0, p0, Lcom/rockrobo/clean/CleanActivity;->errorCode:I

    return p0
.end method

.method static synthetic access$1200(Lcom/rockrobo/clean/CleanActivity;)I
    .locals 0

    iget p0, p0, Lcom/rockrobo/clean/CleanActivity;->warningCode:I

    return p0
.end method

.method static synthetic access$1202(Lcom/rockrobo/clean/CleanActivity;I)I
    .locals 0

    iput p1, p0, Lcom/rockrobo/clean/CleanActivity;->warningCode:I

    return p1
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->hideErrorView()V

    return-void
.end method

.method static synthetic access$1502(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->errorStrainerClosed:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->errorTraceClosed:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->errorBinFullClosed:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/ui/ListHeartbeatView;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/clean/CleanActivity;->hasNewFirmware:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/rockrobo/clean/CleanActivity;Lcom/rockrobo/common/CleanMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->sendCleanMode(Lcom/rockrobo/common/CleanMode;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->showModeBar()V

    return-void
.end method

.method static synthetic access$2200(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/clean/RobotStatus;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->exitRemoteController()V

    return-void
.end method

.method static synthetic access$2400(Lcom/rockrobo/clean/CleanActivity;Landroid/content/DialogInterface;Lcom/rockrobo/clean/RobotStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rockrobo/clean/CleanActivity;->doPause(Landroid/content/DialogInterface;Lcom/rockrobo/clean/RobotStatus;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->saveLocalUserCountry()V

    return-void
.end method

.method static synthetic access$2600(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->uploadUserCountryToFDS()V

    return-void
.end method

.method static synthetic access$2700(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/clean/CleanActivity;->countrySelecting:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->countrySelecting:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->exitPlugin()V

    return-void
.end method

.method static synthetic access$2900(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->userAgreedLicense()V

    return-void
.end method

.method static synthetic access$3000(Lcom/rockrobo/clean/CleanActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->keyFrameContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->moveDownMapButton()V

    return-void
.end method

.method static synthetic access$3200(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/clean/CleanActivity;->messageVersionLoading:Z

    return p0
.end method

.method static synthetic access$3202(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->messageVersionLoading:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->robotLocationLangGot()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/clean/CleanActivity;->locationLangLoading:Z

    return p0
.end method

.method static synthetic access$3502(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->locationLangLoading:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/clean/CleanActivity;->licenseAgreed:Z

    return p0
.end method

.method static synthetic access$3800(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/clean/CleanActivity;->firmwareFeaturesLoading:Z

    return p0
.end method

.method static synthetic access$3802(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->firmwareFeaturesLoading:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$400(Lcom/rockrobo/clean/CleanActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBar:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/clean/CleanActivity;->statusLoading:Z

    return p0
.end method

.method static synthetic access$4002(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->statusLoading:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->isMapViewVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->loadMap()V

    return-void
.end method

.method static synthetic access$4400(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/clean/CleanActivity;->countryInLoading:Z

    return p0
.end method

.method static synthetic access$4402(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->countryInLoading:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->timeZoneGot()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4800(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/clean/CleanActivity;->timeZoneLoading:Z

    return p0
.end method

.method static synthetic access$4802(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->timeZoneLoading:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$500(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->hideModeBar()V

    return-void
.end method

.method static synthetic access$5000(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/clean/CleanActivity;->consumableDataLoading:Z

    return p0
.end method

.method static synthetic access$5002(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->consumableDataLoading:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->logLevelGot()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/clean/CleanActivity;->logLevelLoading:Z

    return p0
.end method

.method static synthetic access$5302(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->logLevelLoading:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->logLevelMatch()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5600(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/clean/CleanActivity;->logLevelSetting:Z

    return p0
.end method

.method static synthetic access$5602(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->logLevelSetting:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/rockrobo/clean/CleanActivity;)I
    .locals 0

    iget p0, p0, Lcom/rockrobo/clean/CleanActivity;->localLogLevel:I

    return p0
.end method

.method static synthetic access$5800(Lcom/rockrobo/clean/CleanActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->syncLogLevel(I)V

    return-void
.end method

.method static synthetic access$5902(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewAnimateInProgress:Z

    return p1
.end method

.method static synthetic access$600(Lcom/rockrobo/clean/CleanActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewShare:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/clean/CleanStrategy;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/rockrobo/clean/CleanActivity;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object p0
.end method

.method static synthetic access$6102(Lcom/rockrobo/clean/CleanActivity;Landroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/rockrobo/clean/CleanActivity;)F
    .locals 0

    iget p0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarBottomMarginStart:F

    return p0
.end method

.method static synthetic access$6300(Lcom/rockrobo/clean/CleanActivity;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rockrobo/clean/CleanActivity;->setBottomMargin(FF)V

    return-void
.end method

.method static synthetic access$6400(Lcom/rockrobo/clean/CleanActivity;)F
    .locals 0

    iget p0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarHeight:F

    return p0
.end method

.method static synthetic access$6500(Lcom/rockrobo/clean/CleanActivity;)F
    .locals 0

    iget p0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarBottomMarginEnd:F

    return p0
.end method

.method static synthetic access$6600(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->robotLocationValid()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6700(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/clean/CleanActivity;->locationInvalidDialogShowing:Z

    return p0
.end method

.method static synthetic access$6702(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->locationInvalidDialogShowing:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/clean/RawFileLoadAsyncTask;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->policyDownloadTask:Lcom/rockrobo/clean/RawFileLoadAsyncTask;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/rockrobo/clean/CleanActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/clean/CleanActivity;->licenseDialogInProgress:Z

    return p0
.end method

.method static synthetic access$6902(Lcom/rockrobo/clean/CleanActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->licenseDialogInProgress:Z

    return p1
.end method

.method static synthetic access$700(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/map/MapShareBuilder;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->mapShareBuilder:Lcom/rockrobo/map/MapShareBuilder;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$702(Lcom/rockrobo/clean/CleanActivity;Lcom/rockrobo/map/MapShareBuilder;)Lcom/rockrobo/map/MapShareBuilder;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapShareBuilder:Lcom/rockrobo/map/MapShareBuilder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/map/MapViewI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->mapView:Lcom/rockrobo/map/MapViewI;

    return-object p0
.end method

.method static synthetic access$900(Lcom/rockrobo/clean/CleanActivity;)Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/CleanActivity;->mHostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    return-object p0
.end method

.method private addCleanModeResources()V
    .locals 5

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p0, v0}, Lcom/rockrobo/utils/PreferenceUtils;->getMopModePreference(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    sget-object v1, Lcom/rockrobo/common/CleanMode;->MOP:Lcom/rockrobo/common/CleanMode;

    const v2, 0x7f050006

    const v3, 0x7f050007

    const v4, 0x7f0a0138

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/rockrobo/ui/ListHeartbeatView;->addChangeImageText(Lcom/rockrobo/common/CleanMode;III)V

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    sget-object v1, Lcom/rockrobo/common/CleanMode;->SILENT:Lcom/rockrobo/common/CleanMode;

    const v2, 0x7f05000a

    const v3, 0x7f05000b

    const v4, 0x7f0a0131

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/rockrobo/ui/ListHeartbeatView;->addChangeImageText(Lcom/rockrobo/common/CleanMode;III)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    sget-object v1, Lcom/rockrobo/common/CleanMode;->STANDARD:Lcom/rockrobo/common/CleanMode;

    const v2, 0x7f05000c

    const v3, 0x7f05000d

    const v4, 0x7f0a0132

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/rockrobo/ui/ListHeartbeatView;->addChangeImageText(Lcom/rockrobo/common/CleanMode;III)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    sget-object v1, Lcom/rockrobo/common/CleanMode;->POWER:Lcom/rockrobo/common/CleanMode;

    const v2, 0x7f050008

    const v3, 0x7f050009

    const v4, 0x7f0a0130

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/rockrobo/ui/ListHeartbeatView;->addChangeImageText(Lcom/rockrobo/common/CleanMode;III)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    sget-object v1, Lcom/rockrobo/common/CleanMode;->FULL:Lcom/rockrobo/common/CleanMode;

    const v2, 0x7f050004

    const v3, 0x7f050005

    const v4, 0x7f0a012d

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/rockrobo/ui/ListHeartbeatView;->addChangeImageText(Lcom/rockrobo/common/CleanMode;III)V

    return-void
.end method

.method private buttonDisabled(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const v1, 0x3ec28f5c    # 0.38f

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpl-float p1, v1, p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private disableButton(Landroid/widget/ImageView;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const p2, 0x3ec28f5c    # 0.38f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private disableMapShare()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewShare:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/rockrobo/clean/CleanActivity;->disableButton(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private disableMore()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->moreButton:Landroid/widget/ImageView;

    const v1, 0x7f05022d

    invoke-direct {p0, v0, v1}, Lcom/rockrobo/clean/CleanActivity;->disableButton(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private doLoadMap()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadMapName(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private doPause(Landroid/content/DialogInterface;Lcom/rockrobo/clean/RobotStatus;)V
    .locals 4

    sget-object v0, Lcom/rockrobo/clean/CleanActivity$21;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    invoke-virtual {p2}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    sget-object v1, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/rockrobo/clean/RobotStatus;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    :goto_0
    invoke-virtual {v0}, Lcom/rockrobo/ui/HeartBeatView;->startBeat()V

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/rockrobo/ui/HeartBeatView;->startBeat()V

    invoke-direct {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->pauseRobot(Lcom/rockrobo/ui/HeartBeatView;)V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doShowKeyRemind(III)V
    .locals 4

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->keyFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity;->keyFrameContainer:Landroid/widget/FrameLayout;

    const v3, 0x7f08001f

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->keyFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$19;

    invoke-direct {v1, p0}, Lcom/rockrobo/clean/CleanActivity$19;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f060065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f060063

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f060064

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f060062

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/rockrobo/clean/CleanActivity$20;

    invoke-direct {p2, p0}, Lcom/rockrobo/clean/CleanActivity$20;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->moveUpMapButton()V

    return-void
.end method

.method private enableButton(Landroid/widget/ImageView;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->buttonDisabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private enableMapShare()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewShare:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/rockrobo/clean/CleanActivity;->enableButton(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private enableMore()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->moreButton:Landroid/widget/ImageView;

    const v1, 0x7f05022c

    invoke-direct {p0, v0, v1}, Lcom/rockrobo/clean/CleanActivity;->enableButton(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private exitPlugin()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->regionCode:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->removeLicenseRelatedPrefs(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->finish()V

    return-void
.end method

.method private exitRemoteController()V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0xce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->exitRemoteController(ILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private handleConsumableData(Landroid/os/Message;)V
    .locals 2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/json/JSONObject;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/rockrobo/more/consumable/ConsumableItemSet;->dataRetrieved:Z

    invoke-static {p1}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->buildConsumableDatas(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->hasConsumableExpired()Z

    move-result p1

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->consumableExpired:Z

    iget-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->consumableExpired:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->redPointView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private handleCountryIn(Landroid/os/Message;)V
    .locals 3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got country in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/rockrobo/common/RobotInfo;->setCountryIn(Ljava/lang/String;)V

    return-void
.end method

.method private handleErrorCode(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->isWarning(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/rockrobo/clean/CleanActivity;->warningCode:I

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->updateWarnUi()V

    :cond_0
    return-void
.end method

.method private handleGetFirmwareFeatures(Landroid/os/Message;)V
    .locals 3

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/rockrobo/common/RobotInfo;->setFirmwareFeatures([I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->setEmptyFirmwareFeatures()V

    return-void
.end method

.method private handleLicenseDownloadOK()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->policyDownloadTask:Lcom/rockrobo/clean/RawFileLoadAsyncTask;

    iget-object v0, v0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->licenseContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->licenseContent:Ljava/lang/String;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity;->regionCode:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/rockrobo/utils/RRFileUtils;->getLicensePath(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/util/Locale;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->licenseContent:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/RRFileUtils;->saveStringToFileUtf8(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->enableMore()V

    return-void
.end method

.method private handleLocationLang(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockrobo/common/RobotInfo;->setRobotLocation(Ljava/lang/String;)V

    const-string v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/rockrobo/common/RobotInfo;->setRobotLanguage(Ljava/lang/String;)V

    sget-object p1, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleLogLevel(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/clean/CleanActivity;->robotLogLevel:I

    return-void
.end method

.method private handleMap(Landroid/os/Message;)V
    .locals 2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/rockrobo/map/MapInfo;

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapInfo:Lcom/rockrobo/map/MapInfo;

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapInfo:Lcom/rockrobo/map/MapInfo;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapView:Lcom/rockrobo/map/MapViewI;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-interface {p1, v0}, Lcom/rockrobo/map/MapViewI;->setMapInfo(Lcom/rockrobo/map/MapInfo;)V

    sget-object p1, Lcom/rockrobo/clean/RobotStatus;->SPOT_CLEAN:Lcom/rockrobo/clean/RobotStatus;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {p1, v0}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->enableMapShare()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapInfo:Lcom/rockrobo/map/MapInfo;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-interface {p1}, Lcom/rockrobo/map/MapViewI;->setMapLoadingFailed()V

    sget-object p1, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mapInfo is null"

    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-interface {p1}, Lcom/rockrobo/map/MapViewI;->setMapLoadingFailed()V

    sget-object p1, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mapInfo invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleMessageVersion(Landroid/os/Message;)V
    .locals 3

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "msg_ver"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "msg_ver"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/rockrobo/common/RobotInfo;->setMessageVersion(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessageVersion JSONException, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private handlePause(Landroid/os/Message;)V
    .locals 0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->stopBeat()V

    return-void
.end method

.method private handlePrivacyDownloadOK()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->policyDownloadTask:Lcom/rockrobo/clean/RawFileLoadAsyncTask;

    iget-object v0, v0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->privacyPolicyContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->privacyPolicyContent:Ljava/lang/String;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity;->regionCode:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/rockrobo/utils/RRFileUtils;->getPrivacyPolicyPath(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/util/Locale;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->privacyPolicyContent:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/RRFileUtils;->saveStringToFileUtf8(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->enableMore()V

    return-void
.end method

.method private handleSetMode(Landroid/os/Message;)V
    .locals 0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/rockrobo/common/CleanMode;

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanMode:Lcom/rockrobo/common/CleanMode;

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->setModeBarCleanMode(Lcom/rockrobo/common/CleanMode;)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->setModeButtonResources(Lcom/rockrobo/common/CleanMode;)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/ListHeartbeatView;->stopBeat()V

    return-void
.end method

.method private handleSetModeFail()V
    .locals 3

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a013d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    invoke-virtual {v0}, Lcom/rockrobo/ui/ListHeartbeatView;->stopBeat()V

    return-void
.end method

.method private handleTimeCleanStart(Landroid/os/Message;)V
    .locals 3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    const-wide/16 v0, 0xbb8

    if-nez p1, :cond_0

    const/16 p1, 0xa

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/rockrobo/clean/CleanActivity;->showToast(IJ)V

    return-void

    :cond_0
    const/16 v2, 0x66

    if-ne p1, v2, :cond_1

    const/16 p1, 0x1a

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleTimeZone(Landroid/os/Message;)V
    .locals 3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "olson"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "posix"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Lcom/rockrobo/common/RobotInfo;->setTimeZoneId(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/rockrobo/common/RobotInfo;->setTimeZonePosix(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p1}, Lcom/rockrobo/utils/PreferenceUtils;->buildTimeZoneSaveKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->isShared()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getTimeZoneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->redPointView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private handleTimedCleanEnd(Landroid/os/Message;)V
    .locals 2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0xb

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/rockrobo/clean/CleanActivity;->showToast(IJ)V

    :cond_0
    return-void
.end method

.method private hasWarning()Z
    .locals 1

    iget v0, p0, Lcom/rockrobo/clean/CleanActivity;->warningCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hideErrorView()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->moveDownMapButton()V

    return-void
.end method

.method private hideMapView()V
    .locals 2

    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewAnimateInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewSlideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->actionBar:Landroid/view/View;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->actionBarSlideIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCover:Landroid/view/View;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCoverFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private hideModeBar()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCover:Landroid/view/View;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCoverFadeOutForModeBar:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private isMapViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isModeBarVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isWarning(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private loadMap()V
    .locals 6

    sget-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMap entry! lastMapRetrieveTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/rockrobo/clean/CleanActivity;->lastMapRetrieveTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->shouldRetrieveMap()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->doLoadMap()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/clean/CleanActivity;->lastMapRetrieveTime:J

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rockrobo/clean/CleanActivity;->lastMapRetrieveTime:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3a98

    cmp-long v2, v4, v0

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private logLevelGot()Z
    .locals 2

    iget v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotLogLevel:I

    const/16 v1, -0x6f

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private logLevelMatch()Z
    .locals 2

    iget v0, p0, Lcom/rockrobo/clean/CleanActivity;->localLogLevel:I

    iget v1, p0, Lcom/rockrobo/clean/CleanActivity;->robotLogLevel:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private moveDownMapButton()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->keyFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainView:Lcom/rockrobo/ui/mainview/MainViewI;

    invoke-interface {v0}, Lcom/rockrobo/ui/mainview/MainViewI;->mapButtonDown()V

    :cond_0
    return-void
.end method

.method private moveUpMapButton()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->keyFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainView:Lcom/rockrobo/ui/mainview/MainViewI;

    invoke-interface {v0}, Lcom/rockrobo/ui/mainview/MainViewI;->mapButtonUp()V

    :cond_1
    return-void
.end method

.method private pauseRobot(Lcom/rockrobo/ui/HeartBeatView;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0xe3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0xe3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/rockrobo/presenter/RobotPresenterI;->pause(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method private placeRedPoint()V
    .locals 4

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getMessageVersion()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getMessageVersion()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v0, v1, :cond_2

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getTimeZoneId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->consumableExpired:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->hasNewFirmware:Z

    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->redPointView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getTimeZoneId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getTimeZoneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->consumableExpired:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->hasNewFirmware:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->redPointView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private readChargeFullPromptStatus()Z
    .locals 2

    const-string v0, "charge_full_key_prompt"

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/rockrobo/utils/PreferenceUtils;->hasPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readLocalLogLevel()I
    .locals 1

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->isEUServer()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->isRUServer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    return v0

    :cond_1
    :goto_0
    const/16 v0, 0x8

    return v0
.end method

.method private readLocalUserCountry()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->regionCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildUserCountryPrefKey(Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/rockrobo/utils/PreferenceUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockrobo/common/RobotInfo;->setUserCountry(Ljava/lang/String;)V

    return-void
.end method

.method private readNoDisturbPromptStatus()Z
    .locals 2

    const-string v0, "no_disturb_key_prompt"

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/rockrobo/utils/PreferenceUtils;->hasPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private robotLocationLangGot()Z
    .locals 1

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getRobotLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getRobotLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private robotLocationValid()Z
    .locals 1

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->isCNRobot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->isCNServer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private saveChargeFullPromptStatus()V
    .locals 2

    const-string v0, "charge_full_key_prompt"

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Y"

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveLocalUserCountry()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->regionCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildUserCountryPrefKey(Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getUserCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveNoDisturbPromptStatus()V
    .locals 2

    const-string v0, "no_disturb_key_prompt"

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Y"

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendCleanMode(Lcom/rockrobo/common/CleanMode;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0xdb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0xdb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->sendCleanMode(Lcom/rockrobo/common/CleanMode;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private setActionBarActive()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/ListHeartbeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    return-void
.end method

.method private setActionBarSleeping()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/ListHeartbeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    return-void
.end method

.method private setBottomMargin(FF)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBar:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setModeBarActive()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarMopButton:Lcom/rockrobo/ui/HeartBeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarSilentButton:Lcom/rockrobo/ui/HeartBeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarStandardButton:Lcom/rockrobo/ui/HeartBeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarPowerButton:Lcom/rockrobo/ui/HeartBeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarFullButton:Lcom/rockrobo/ui/HeartBeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    return-void
.end method

.method private setModeBarCleanMode(Lcom/rockrobo/common/CleanMode;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setModeBarSleeping()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarMopButton:Lcom/rockrobo/ui/HeartBeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarSilentButton:Lcom/rockrobo/ui/HeartBeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarStandardButton:Lcom/rockrobo/ui/HeartBeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarPowerButton:Lcom/rockrobo/ui/HeartBeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarFullButton:Lcom/rockrobo/ui/HeartBeatView;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    return-void
.end method

.method private setModeButtonResources(Lcom/rockrobo/common/CleanMode;)V
    .locals 3

    sget-object v0, Lcom/rockrobo/clean/CleanActivity$21;->$SwitchMap$com$rockrobo$common$CleanMode:[I

    invoke-virtual {p1}, Lcom/rockrobo/common/CleanMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    const v0, 0x7f050004

    const v1, 0x7f050005

    const v2, 0x7f0a012d

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    const v0, 0x7f050008

    const v1, 0x7f050009

    const v2, 0x7f0a0130

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    const v0, 0x7f05000c

    const v1, 0x7f05000d

    const v2, 0x7f0a0132

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    const v0, 0x7f05000a

    const v1, 0x7f05000b

    const v2, 0x7f0a0131

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    const v0, 0x7f050006

    const v1, 0x7f050007

    const v2, 0x7f0a012e

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/rockrobo/ui/ListHeartbeatView;->setResources(III)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupChargeButton()V
    .locals 2

    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/ui/HeartBeatView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$10;

    invoke-direct {v1, p0}, Lcom/rockrobo/clean/CleanActivity$10;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupCleanButton()V
    .locals 2

    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/ui/HeartBeatView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$11;

    invoke-direct {v1, p0}, Lcom/rockrobo/clean/CleanActivity$11;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupErrorView()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorView:Landroid/view/View;

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$6;

    invoke-direct {v1, p0}, Lcom/rockrobo/clean/CleanActivity$6;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$7;

    invoke-direct {v1, p0}, Lcom/rockrobo/clean/CleanActivity$7;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupMapView()V
    .locals 1

    const v0, 0x7f06006f

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f06006e

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/map/MapViewI;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->isCNServer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->setupMapViewHideButton(Z)V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->setupMapViewShareButton()V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->setupMapViewHideButton(Z)V

    return-void
.end method

.method private setupMapViewHideButton(Z)V
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewHide:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0400eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0400e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0400e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x9

    goto :goto_0

    :goto_1
    const/16 p1, 0xc

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewHide:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewHide:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewHide:Landroid/widget/ImageView;

    const v0, 0x7f050144

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewHide:Landroid/widget/ImageView;

    new-instance v0, Lcom/rockrobo/clean/CleanActivity$5;

    invoke-direct {v0, p0}, Lcom/rockrobo/clean/CleanActivity$5;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewHide:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setupMapViewShareButton()V
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewShare:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0400eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0400e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0400e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewShare:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewShare:Landroid/widget/ImageView;

    const v1, 0x7f050147

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->disableMapShare()V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewShare:Landroid/widget/ImageView;

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$4;

    invoke-direct {v1, p0}, Lcom/rockrobo/clean/CleanActivity$4;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setupModeBar()V
    .locals 2

    const v0, 0x7f060073

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBar:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBar:Landroid/widget/LinearLayout;

    const v1, 0x7f060075

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/ui/HeartBeatView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarMopButton:Lcom/rockrobo/ui/HeartBeatView;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarMopButton:Lcom/rockrobo/ui/HeartBeatView;

    invoke-direct {p0, v1, v0}, Lcom/rockrobo/clean/CleanActivity;->setupModeBarButton(ILcom/rockrobo/ui/HeartBeatView;)V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->setupModeBarMopButton()V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBar:Landroid/widget/LinearLayout;

    const v1, 0x7f060077

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/ui/HeartBeatView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarSilentButton:Lcom/rockrobo/ui/HeartBeatView;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarSilentButton:Lcom/rockrobo/ui/HeartBeatView;

    invoke-direct {p0, v1, v0}, Lcom/rockrobo/clean/CleanActivity;->setupModeBarButton(ILcom/rockrobo/ui/HeartBeatView;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBar:Landroid/widget/LinearLayout;

    const v1, 0x7f060078

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/ui/HeartBeatView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarStandardButton:Lcom/rockrobo/ui/HeartBeatView;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarStandardButton:Lcom/rockrobo/ui/HeartBeatView;

    invoke-direct {p0, v1, v0}, Lcom/rockrobo/clean/CleanActivity;->setupModeBarButton(ILcom/rockrobo/ui/HeartBeatView;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBar:Landroid/widget/LinearLayout;

    const v1, 0x7f060076

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/ui/HeartBeatView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarPowerButton:Lcom/rockrobo/ui/HeartBeatView;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarPowerButton:Lcom/rockrobo/ui/HeartBeatView;

    invoke-direct {p0, v1, v0}, Lcom/rockrobo/clean/CleanActivity;->setupModeBarButton(ILcom/rockrobo/ui/HeartBeatView;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBar:Landroid/widget/LinearLayout;

    const v1, 0x7f060074

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/ui/HeartBeatView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarFullButton:Lcom/rockrobo/ui/HeartBeatView;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarFullButton:Lcom/rockrobo/ui/HeartBeatView;

    invoke-direct {p0, v1, v0}, Lcom/rockrobo/clean/CleanActivity;->setupModeBarButton(ILcom/rockrobo/ui/HeartBeatView;)V

    return-void
.end method

.method private setupModeBarAnimator()V
    .locals 7

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0400be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarBottomMarginStart:F

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0400ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarBottomMarginEnd:F

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0400ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarHeight:F

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarInAnimator:Landroid/animation/ValueAnimator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarInAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;

    const/4 v5, 0x1

    invoke-direct {v2, p0, v5}, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;-><init>(Lcom/rockrobo/clean/CleanActivity;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070005

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/rockrobo/clean/CleanActivity$ModeBarAnimatorUpdateListener;-><init>(Lcom/rockrobo/clean/CleanActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCover:Landroid/view/View;

    const v1, 0x7f010003

    invoke-virtual {p0, v0, v1, v2}, Lcom/rockrobo/clean/CleanActivity;->setupAnimation(Landroid/view/View;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCoverFadeOutForModeBar:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCoverFadeOutForModeBar:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setupModeBarButton(ILcom/rockrobo/ui/HeartBeatView;)V
    .locals 1

    new-instance v0, Lcom/rockrobo/clean/CleanActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/rockrobo/clean/CleanActivity$8;-><init>(Lcom/rockrobo/clean/CleanActivity;I)V

    invoke-virtual {p2, v0}, Lcom/rockrobo/ui/HeartBeatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupModeBarMopButton()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p0, v0}, Lcom/rockrobo/utils/PreferenceUtils;->getMopModePreference(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarMopButton:Lcom/rockrobo/ui/HeartBeatView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-direct {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->setModeBarCleanMode(Lcom/rockrobo/common/CleanMode;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarMopButton:Lcom/rockrobo/ui/HeartBeatView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->setVisibility(I)V

    return-void
.end method

.method private setupModeButton()V
    .locals 2

    sget-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setupModeButton entry!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/ui/ListHeartbeatView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->addCleanModeResources()V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$9;

    invoke-direct {v1, p0}, Lcom/rockrobo/clean/CleanActivity$9;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/ListHeartbeatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private shouldRetrieveMap()Z
    .locals 2

    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapDrawn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0}, Lcom/rockrobo/clean/RobotStatus;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

    sget-object v1, Lcom/rockrobo/clean/CleanStrategy;->WALL_ALONG:Lcom/rockrobo/clean/CleanStrategy;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private showCountrySelectDialog()V
    .locals 4

    new-instance v0, Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->activity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity;->regionCode:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/rockrobo/dialog/CountrySelectDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sget-object v1, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "region code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/rockrobo/clean/CleanActivity;->regionCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$14;

    invoke-direct {v1, p0, v0}, Lcom/rockrobo/clean/CleanActivity$14;-><init>(Lcom/rockrobo/clean/CleanActivity;Lcom/rockrobo/dialog/CountrySelectDialog;)V

    invoke-virtual {v0, v1}, Lcom/rockrobo/dialog/CountrySelectDialog;->setPositiveButtonListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$15;

    invoke-direct {v1, p0, v0}, Lcom/rockrobo/clean/CleanActivity$15;-><init>(Lcom/rockrobo/clean/CleanActivity;Lcom/rockrobo/dialog/CountrySelectDialog;)V

    invoke-virtual {v0, v1}, Lcom/rockrobo/dialog/CountrySelectDialog;->setNegativeButtonListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$16;

    invoke-direct {v1, p0}, Lcom/rockrobo/clean/CleanActivity$16;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    invoke-virtual {v0, v1}, Lcom/rockrobo/dialog/CountrySelectDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/rockrobo/dialog/CountrySelectDialog;->show()V

    return-void
.end method

.method private showDockFailKeyPrompt(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->dockFailPrompted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->dockFailPrompted:Z

    const v0, 0x7f050117

    invoke-direct {p0, p1, p2, v0}, Lcom/rockrobo/clean/CleanActivity;->doShowKeyRemind(III)V

    :cond_0
    return-void
.end method

.method private showErrorView()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->moveUpMapButton()V

    return-void
.end method

.method private showLicenseDialog()V
    .locals 8

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getApiLevel()I

    move-result v0

    const/16 v1, 0x30

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0234

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->licenseContent:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->policyDownloadTask:Lcom/rockrobo/clean/RawFileLoadAsyncTask;

    iget-object v0, v0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->licenseContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->licenseContent:Ljava/lang/String;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->policyDownloadTask:Lcom/rockrobo/clean/RawFileLoadAsyncTask;

    iget-object v0, v0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->privacyPolicyContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->privacyPolicyContent:Ljava/lang/String;

    :cond_1
    const v0, 0x7f0a0101

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0a0104

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->licenseContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    const v0, 0x7f0a0189

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->privacyPolicyContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mHostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    new-instance v7, Lcom/rockrobo/clean/CleanActivity$18;

    invoke-direct {v7, p0}, Lcom/rockrobo/clean/CleanActivity$18;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    invoke-interface/range {v1 .. v7}, Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;->showUserLicenseDialog(Ljava/lang/String;Ljava/lang/String;Landroid/text/Spanned;Ljava/lang/String;Landroid/text/Spanned;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showLocationInvalidDialog()V
    .locals 4

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a01bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/rockrobo/clean/CleanActivity$17;

    invoke-direct {v2, p0}, Lcom/rockrobo/clean/CleanActivity$17;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    const v3, 0x7f0a00e0

    invoke-static {v0, v1, v3, v2}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showAlertDialog(Landroid/content/Context;Ljava/lang/Integer;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private showMapView()V
    .locals 2

    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewAnimateInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCover:Landroid/view/View;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCoverFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewSlideIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->actionBar:Landroid/view/View;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->actionBarSlideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private showModeBar()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCover:Landroid/view/View;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCoverFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBarInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startClean()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0xe4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0xe4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->clean(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private syncLogLevel(I)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0x71

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->sendLogLevel(ILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private timeZoneGot()Z
    .locals 1

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getTimeZoneId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getTimeZonePosix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private unSubscribeProperty()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0xe6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0xe6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->unSubscribeDevice(Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v0, p0}, Lcom/rockrobo/xmplugin/Device;->removePropChangedListener(Lcom/rockrobo/clean/PropChangedListenerI;)V

    return-void
.end method

.method private updateErrorUI()V
    .locals 5

    iget v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorCode:I

    const/16 v1, 0x284

    const/16 v2, 0x14

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorTraceClosed:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorBinFullClosed:Z

    if-eqz v0, :cond_3

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorStrainerClosed:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->showErrorView()V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorArrow:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorCode:I

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorClose:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorClose:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iput v4, p0, Lcom/rockrobo/clean/CleanActivity;->warningCode:I

    iget v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorCode:I

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->updateErrorContent(I)V

    return-void
.end method

.method private updateErrorWarningView()V
    .locals 2

    sget-object v0, Lcom/rockrobo/clean/CleanActivity$21;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorCode:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorCode:I

    invoke-direct {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->isWarning(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->hideErrorView()V

    return-void

    :pswitch_1
    iget v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorCode:I

    invoke-direct {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->isWarning(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->updateErrorUI()V

    return-void

    :cond_0
    iget v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorCode:I

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->warningCode:I

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->updateWarnUi()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->hasWarning()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->hideErrorView()V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/rockrobo/clean/CleanActivity;->batteryValue:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->FULL_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateKeyPrompt(Lorg/json/JSONObject;)V
    .locals 3

    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->noDisturbPrompted:Z

    const v1, 0x7f050117

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "dnd_enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dnd_enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->noDisturb:Ljava/lang/Integer;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->noDisturb:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->noDisturb:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_1

    iput-boolean v2, p0, Lcom/rockrobo/clean/CleanActivity;->noDisturbPrompted:Z

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->saveNoDisturbPromptStatus()V

    const p1, 0x7f0a00fe

    const v0, 0x7f0a00fb

    invoke-direct {p0, p1, v0, v1}, Lcom/rockrobo/clean/CleanActivity;->doShowKeyRemind(III)V

    :cond_1
    iget-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->chargeFullPrompted:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->FULL_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/rockrobo/clean/CleanActivity;->batteryValue:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    :cond_2
    iput-boolean v2, p0, Lcom/rockrobo/clean/CleanActivity;->chargeFullPrompted:Z

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->saveChargeFullPromptStatus()V

    const p1, 0x7f0a00fd

    const v0, 0x7f0a00fa

    invoke-direct {p0, p1, v0, v1}, Lcom/rockrobo/clean/CleanActivity;->doShowKeyRemind(III)V

    :cond_3
    return-void
.end method

.method private updateUI(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->updateErrorWarningView()V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->updateActionBarAndSubTitle(Lcom/rockrobo/clean/RobotStatus;)V

    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->updateKeyPrompt(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException in updateUI(),message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private uploadUserCountryToFDS()V
    .locals 7

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getAccountId()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/rockrobo/xmplugin/UserCountryInfoUploader;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v1}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v1}, Lcom/rockrobo/xmplugin/Device;->isShared()Z

    move-result v4

    iget-object v5, p0, Lcom/rockrobo/clean/CleanActivity;->regionCode:Ljava/lang/String;

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getUserCountry()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/rockrobo/xmplugin/UserCountryInfoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private userAgreedLicense()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->regionCode:Ljava/lang/String;

    const-string v2, "Y"

    invoke-static {p0, v0, v1, v2}, Lcom/rockrobo/utils/PreferenceUtils;->saveLicenseAgreeStatus(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->licenseAgreed:Z

    return-void
.end method


# virtual methods
.method charge()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {v0}, Lcom/rockrobo/ui/HeartBeatView;->startBeat()V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0xe2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0xe2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->charge(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method clean()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {v0}, Lcom/rockrobo/ui/HeartBeatView;->startBeat()V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->startClean()V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public handleMapNameMessage(Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->preMapName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->preMapName:Ljava/lang/String;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapRetriever:Lcom/rockrobo/map/MapRetriever;

    if-nez v0, :cond_3

    new-instance v0, Lcom/rockrobo/map/MapRetriever;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd6

    const/16 v3, -0xd6

    invoke-direct {v0, v1, v2, v3}, Lcom/rockrobo/map/MapRetriever;-><init>(Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapRetriever:Lcom/rockrobo/map/MapRetriever;

    :cond_3
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapRetriever:Lcom/rockrobo/map/MapRetriever;

    invoke-virtual {v0, p1}, Lcom/rockrobo/map/MapRetriever;->setObjName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapRetriever:Lcom/rockrobo/map/MapRetriever;

    invoke-virtual {p1}, Lcom/rockrobo/map/MapRetriever;->retrieve()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMapNameMessage JSONException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1

    const/4 v2, 0x1

    const-wide/16 v3, 0xbb8

    packed-switch v0, :pswitch_data_2

    const/4 v5, 0x3

    const v6, 0x7f0a00f9

    const v7, 0x7f0a00fc

    packed-switch v0, :pswitch_data_3

    const/16 v8, 0x8

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    packed-switch v0, :pswitch_data_8

    sparse-switch v0, :sswitch_data_0

    return-void

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handleTimeZone(Landroid/os/Message;)V

    iput-boolean v1, p0, Lcom/rockrobo/clean/CleanActivity;->timeZoneLoading:Z

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->handleRCExitedMessage()V

    return-void

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handleLogLevel(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastView:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    return-void

    :sswitch_4
    iput-boolean v1, p0, Lcom/rockrobo/clean/CleanActivity;->consumableDataLoading:Z

    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handleConsumableData(Landroid/os/Message;)V

    return-void

    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handleUpdateFirmMessage(Landroid/os/Message;)V

    return-void

    :sswitch_6
    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handleErrorCode(Landroid/os/Message;)V

    return-void

    :pswitch_0
    :sswitch_7
    invoke-direct {p0, v7, v6}, Lcom/rockrobo/clean/CleanActivity;->showDockFailKeyPrompt(II)V

    return-void

    :sswitch_8
    iput-boolean v1, p0, Lcom/rockrobo/clean/CleanActivity;->consumableDataLoading:Z

    return-void

    :goto_0
    :sswitch_9
    iput-boolean v1, p0, Lcom/rockrobo/clean/CleanActivity;->logLevelLoading:Z

    return-void

    :sswitch_a
    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->handleRCExitFailMessage()V

    return-void

    :goto_1
    :sswitch_b
    iput-boolean v1, p0, Lcom/rockrobo/clean/CleanActivity;->timeZoneLoading:Z

    return-void

    :sswitch_c
    iget p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapLoadingFailCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapLoadingFailCount:I

    iget p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapLoadingFailCount:I

    if-le p1, v5, :cond_1

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-interface {p1}, Lcom/rockrobo/map/MapViewI;->setMapLoadingFailed()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapRetriever:Lcom/rockrobo/map/MapRetriever;

    invoke-virtual {p1}, Lcom/rockrobo/map/MapRetriever;->retrieve()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->showCountrySelectDialog()V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handleCountryIn(Landroid/os/Message;)V

    :sswitch_d
    iput-boolean v1, p0, Lcom/rockrobo/clean/CleanActivity;->countryInLoading:Z

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->showLocationInvalidDialog()V

    return-void

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handleGetFirmwareFeatures(Landroid/os/Message;)V

    :goto_2
    iput-boolean v1, p0, Lcom/rockrobo/clean/CleanActivity;->firmwareFeaturesLoading:Z

    return-void

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handleMessageVersion(Landroid/os/Message;)V

    goto/16 :goto_4

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handleLocationLang(Landroid/os/Message;)V

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handleSetMode(Landroid/os/Message;)V

    return-void

    :pswitch_8
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->showMapView()V

    return-void

    :pswitch_9
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->handlePrivacyDownloadOK()V

    return-void

    :pswitch_a
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->handleLicenseDownloadOK()V

    return-void

    :pswitch_b
    iput v1, p0, Lcom/rockrobo/clean/CleanActivity;->mapLoadingFailCount:I

    iput-boolean v2, p0, Lcom/rockrobo/clean/CleanActivity;->mapDrawn:Z

    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handleMap(Landroid/os/Message;)V

    return-void

    :pswitch_c
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->enableMore()V

    return-void

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/rockrobo/clean/CleanActivity;->robotLogLevel:I

    :sswitch_e
    iput-boolean v1, p0, Lcom/rockrobo/clean/CleanActivity;->logLevelSetting:Z

    return-void

    :pswitch_e
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->showLicenseDialog()V

    return-void

    :pswitch_f
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->subtitle:Landroid/widget/TextView;

    const v0, 0x7f0a0154

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    sget-object p1, Lcom/rockrobo/clean/RobotStatus;->DEVICE_OFFLINE:Lcom/rockrobo/clean/RobotStatus;

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->updateActionBarAndSubTitle(Lcom/rockrobo/clean/RobotStatus;)V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->disableMore()V

    return-void

    :pswitch_10
    const/16 p1, 0x284

    iput p1, p0, Lcom/rockrobo/clean/CleanActivity;->warningCode:I

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->updateWarnUi()V

    return-void

    :pswitch_11
    const/16 p1, 0x18

    invoke-virtual {p0, p1, v3, v4}, Lcom/rockrobo/clean/CleanActivity;->showToast(IJ)V

    return-void

    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handleMapNameMessage(Landroid/os/Message;)V

    return-void

    :pswitch_13
    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handleTimedCleanEnd(Landroid/os/Message;)V

    return-void

    :pswitch_14
    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handleTimeCleanStart(Landroid/os/Message;)V

    return-void

    :pswitch_15
    const/16 p1, 0x9

    invoke-virtual {p0, p1, v3, v4}, Lcom/rockrobo/clean/CleanActivity;->showToast(IJ)V

    return-void

    :pswitch_16
    invoke-virtual {p0, v8, v3, v4}, Lcom/rockrobo/clean/CleanActivity;->showToast(IJ)V

    return-void

    :pswitch_17
    const/4 p1, 0x7

    invoke-virtual {p0, p1, v3, v4}, Lcom/rockrobo/clean/CleanActivity;->showToast(IJ)V

    return-void

    :pswitch_18
    const/4 p1, 0x4

    invoke-virtual {p0, p1, v3, v4}, Lcom/rockrobo/clean/CleanActivity;->showToast(IJ)V

    return-void

    :pswitch_19
    invoke-virtual {p0, v5, v3, v4}, Lcom/rockrobo/clean/CleanActivity;->showToast(IJ)V

    return-void

    :pswitch_1a
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v3, v4}, Lcom/rockrobo/clean/CleanActivity;->showToast(IJ)V

    return-void

    :pswitch_1b
    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handleStatus(Landroid/os/Message;)V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->enableMore()V

    :sswitch_f
    iput-boolean v1, p0, Lcom/rockrobo/clean/CleanActivity;->statusLoading:Z

    return-void

    :pswitch_1c
    iget p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapLoadingFailCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapLoadingFailCount:I

    return-void

    :pswitch_1d
    const/16 p1, -0xd

    invoke-virtual {p0, p1, v3, v4}, Lcom/rockrobo/clean/CleanActivity;->showToast(IJ)V

    return-void

    :pswitch_1e
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->handleSetModeFail()V

    return-void

    :goto_3
    :pswitch_1f
    iput-boolean v1, p0, Lcom/rockrobo/clean/CleanActivity;->locationLangLoading:Z

    return-void

    :goto_4
    :pswitch_20
    iput-boolean v1, p0, Lcom/rockrobo/clean/CleanActivity;->messageVersionLoading:Z

    return-void

    :pswitch_21
    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->setEmptyFirmwareFeatures()V

    goto/16 :goto_2

    :pswitch_22
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    :goto_5
    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->stopBeat()V

    return-void

    :pswitch_23
    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->handlePause(Landroid/os/Message;)V

    return-void

    :pswitch_24
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/rockrobo/presenter/PresenterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got PresenterException! message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/rockrobo/presenter/PresenterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/rockrobo/presenter/PresenterException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p1

    sget-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got JSONException! message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :pswitch_25
    :sswitch_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0xe6
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xde
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0xd
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x18
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x6f
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xd5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xda
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_25
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0xe0 -> :sswitch_d
        -0xd6 -> :sswitch_c
        -0xd3 -> :sswitch_b
        -0xce -> :sswitch_a
        -0xcc -> :sswitch_9
        -0x73 -> :sswitch_8
        -0x71 -> :sswitch_e
        -0x64 -> :sswitch_10
        -0x5 -> :sswitch_7
        -0x1 -> :sswitch_f
        0x11 -> :sswitch_6
        0x64 -> :sswitch_5
        0x73 -> :sswitch_4
        0x75 -> :sswitch_3
        0xcc -> :sswitch_2
        0xce -> :sswitch_1
        0xd3 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleRCExitFailMessage()V
    .locals 3

    iget v0, p0, Lcom/rockrobo/clean/CleanActivity;->rcExitRetries:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->rcExitRetries:I

    iget v0, p0, Lcom/rockrobo/clean/CleanActivity;->rcExitRetries:I

    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->exitRemoteController()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->rcExitRetries:I

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/rockrobo/utils/RRUtils;->toastNetFail(Landroid/app/Activity;I)V

    return-void
.end method

.method public handleRCExitedMessage()V
    .locals 3

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->updateActionBarAndSubTitle(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->rcExitRetries:I

    return-void
.end method

.method protected handleStatus(Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getMessageVersion()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "msg_ver"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/rockrobo/common/RobotInfo;->setMessageVersion(I)V

    :cond_0
    const-string v1, "fan_power"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/rockrobo/common/CleanMode;->valueOf(I)Lcom/rockrobo/common/CleanMode;

    move-result-object v1

    iput-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanMode:Lcom/rockrobo/common/CleanMode;

    sget-object v1, Lcom/rockrobo/common/CleanMode;->MOP:Lcom/rockrobo/common/CleanMode;

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {v1, v2}, Lcom/rockrobo/common/CleanMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/rockrobo/clean/CleanActivity;->mopModeEntry:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xd9

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/rockrobo/clean/CleanActivity;->showToast(IJ)V

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->mopModeEntry:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->mopModeEntry:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-direct {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->setModeButtonResources(Lcom/rockrobo/common/CleanMode;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-direct {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->setModeBarCleanMode(Lcom/rockrobo/common/CleanMode;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/ListHeartbeatView;->setChangedMode(Lcom/rockrobo/common/CleanMode;)V

    const-string v0, "clean_area"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/rockrobo/utils/RRUtils;->calcCleanArea(J)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->areaValue:I

    const-string v0, "battery"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x64

    :goto_1
    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->batteryValue:I

    const-string v0, "clean_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->durationValue:I

    const-string v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/rockrobo/clean/RobotStatus;->getEnum(I)Lcom/rockrobo/clean/RobotStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainView:Lcom/rockrobo/ui/mainview/MainViewI;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-interface {v0, v1}, Lcom/rockrobo/ui/mainview/MainViewI;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    new-instance v0, Lcom/rockrobo/common/CleanInfo;

    iget v1, p0, Lcom/rockrobo/clean/CleanActivity;->areaValue:I

    iget v2, p0, Lcom/rockrobo/clean/CleanActivity;->durationValue:I

    iget v3, p0, Lcom/rockrobo/clean/CleanActivity;->batteryValue:I

    invoke-direct {v0, v1, v2, v3}, Lcom/rockrobo/common/CleanInfo;-><init>(III)V

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainView:Lcom/rockrobo/ui/mainview/MainViewI;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    invoke-interface {v0, v1}, Lcom/rockrobo/ui/mainview/MainViewI;->setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->isMapViewVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "clean_strategy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "clean_strategy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/rockrobo/clean/CleanStrategy;->fromValue(I)Lcom/rockrobo/clean/CleanStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

    :cond_4
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapView:Lcom/rockrobo/map/MapViewI;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity;->cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/map/MapViewI;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/CleanStrategy;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapView:Lcom/rockrobo/map/MapViewI;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    invoke-interface {v0, v1}, Lcom/rockrobo/map/MapViewI;->setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SPOT_CLEAN:Lcom/rockrobo/clean/RobotStatus;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewShare:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->buttonDisabled(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->disableMapShare()V

    :cond_5
    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorCode:I

    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->updateUI(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status info analyze excepted with msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected handleUpdateFirmMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/smarthome/device/api/DeviceUpdateInfo;

    iget-object v0, p1, Lcom/xiaomi/smarthome/device/api/DeviceUpdateInfo;->mCurVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/rockrobo/common/RobotInfo;->setFirmwareVersion(Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/xiaomi/smarthome/device/api/DeviceUpdateInfo;->mHasNewFirmware:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->isShared()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->redPointView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->hasNewFirmware:Z

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->hasNewFirmware:Z

    return-void
.end method

.method initViews()V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mHostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    const v1, 0x7f0600de

    invoke-virtual {p0, v1}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;->setTitleBarPadding(Landroid/view/View;)V

    const v0, 0x7f0600e0

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->redPointView:Landroid/view/View;

    const v0, 0x7f060067

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->title:Landroid/widget/TextView;

    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->subtitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->subtitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f060061

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorTitle:Landroid/widget/TextView;

    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorContent:Landroid/widget/TextView;

    const v0, 0x7f06005e

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorClose:Landroid/widget/ImageView;

    const v0, 0x7f06005d

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorArrow:Landroid/widget/ImageView;

    const v0, 0x7f0600e1

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/rockrobo/clean/CleanActivity$1;

    invoke-direct {v2, p0}, Lcom/rockrobo/clean/CleanActivity$1;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600df

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->moreButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->moreButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->moreButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$2;

    invoke-direct {v1, p0}, Lcom/rockrobo/clean/CleanActivity$2;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->disableMore()V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->setupCleanButton()V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->setupChargeButton()V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->setupModeBar()V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->setupModeButton()V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->setupErrorView()V

    const v0, 0x7f06006b

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/rockrobo/ui/OpenGLMainView;

    new-instance v2, Lcom/rockrobo/clean/CleanActivity$MainViewTouchListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/rockrobo/clean/CleanActivity$MainViewTouchListener;-><init>(Lcom/rockrobo/clean/CleanActivity;Lcom/rockrobo/clean/CleanActivity$1;)V

    iget-object v3, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {v1, v0, v2, v3}, Lcom/rockrobo/ui/OpenGLMainView;-><init>(Landroid/opengl/GLSurfaceView;Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;Lcom/rockrobo/clean/RobotStatus;)V

    iput-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mainView:Lcom/rockrobo/ui/mainview/MainViewI;

    const v0, 0x7f06006a

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->toastView:Landroid/view/View;

    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->toastText:Landroid/widget/TextView;

    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    const v0, 0x7f060056

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->keyFrameContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCover:Landroid/view/View;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCover:Landroid/view/View;

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$3;

    invoke-direct {v1, p0}, Lcom/rockrobo/clean/CleanActivity$3;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->setupMapView()V

    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->actionBar:Landroid/view/View;

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->setupAnimations()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    sget-object p3, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "request code:%d, result code:%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_1

    if-eq p2, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->isMapViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->hideMapView()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->isModeBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->hideModeBar()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/rockrobo/xmplugin/RRBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->init()V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/rockrobo/more/consumable/ConsumableItemSet;->dataRetrieved:Z

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/rockrobo/more/timer/DeviceManager;->getInstance(Landroid/content/Context;)Lcom/rockrobo/more/timer/DeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v1}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v0, v1, v2}, Lcom/rockrobo/more/timer/DeviceManager;->putDevice(Ljava/lang/String;Lcom/xiaomi/smarthome/device/api/BaseDevice;)V

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->getRegionCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->regionCode:Ljava/lang/String;

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->isCNServer()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cn"

    invoke-static {v0}, Lcom/rockrobo/common/RobotInfo;->setUserCountry(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->readLocalUserCountry()V

    :goto_0
    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getUserCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->licenseAgreed:Z

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->regionCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildLicenceAgreePrefKey(Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/rockrobo/utils/PreferenceUtils;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->regionCode:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->readLicenseAgreeStatus(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->licenseAgreed:Z

    :goto_1
    iget-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->licenseAgreed:Z

    if-nez v0, :cond_2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->syncLogLevel(I)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->readLocalLogLevel()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->localLogLevel:I

    :goto_2
    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity;->regionCode:Ljava/lang/String;

    invoke-static {p0, v1, v0, v2}, Lcom/rockrobo/utils/RRFileUtils;->getLicensePath(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/util/Locale;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/rockrobo/utils/RRFileUtils;->readUtf8StringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->licenseContent:Ljava/lang/String;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity;->regionCode:Ljava/lang/String;

    invoke-static {p0, v1, v0, v2}, Lcom/rockrobo/utils/RRFileUtils;->getPrivacyPolicyPath(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/util/Locale;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/rockrobo/utils/RRFileUtils;->readUtf8StringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->privacyPolicyContent:Ljava/lang/String;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->licenseContent:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->privacyPolicyContent:Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "To get license from raw!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;

    invoke-direct {v0, p0}, Lcom/rockrobo/clean/RawFileLoadAsyncTask;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->policyDownloadTask:Lcom/rockrobo/clean/RawFileLoadAsyncTask;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->policyDownloadTask:Lcom/rockrobo/clean/RawFileLoadAsyncTask;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->setHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->policyDownloadTask:Lcom/rockrobo/clean/RawFileLoadAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity;->regionCode:Ljava/lang/String;

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    const/high16 p1, 0x7f080000

    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->setContentView(I)V

    const-string p1, "user_guide_"

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->hasPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "user_guide_"

    const-string v0, "true"

    invoke-static {p0, p1, v0}, Lcom/rockrobo/utils/PreferenceUtils;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-class v0, Lcom/rockrobo/clean/productguide/UserGuideActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/rockrobo/clean/CleanActivity;->startActivity(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_5
    const p1, 0x7f06004a

    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->errorView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->readCleanMode()Lcom/rockrobo/common/CleanMode;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->initViews()V

    sget-object p1, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->updateActionBarAndSubTitle(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->setModeButtonResources(Lcom/rockrobo/common/CleanMode;)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity;->setModeBarCleanMode(Lcom/rockrobo/common/CleanMode;)V

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "error_code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/clean/CleanActivity;->errorCode:I

    sget-object p1, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error code from intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/clean/CleanActivity;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->showErrorView()V

    iget p1, p0, Lcom/rockrobo/clean/CleanActivity;->errorCode:I

    const/16 v0, 0x284

    if-ne p1, v0, :cond_7

    iget p1, p0, Lcom/rockrobo/clean/CleanActivity;->errorCode:I

    iput p1, p0, Lcom/rockrobo/clean/CleanActivity;->warningCode:I

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->updateWarnUi()V

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->hideErrorView()V

    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mHostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    invoke-interface {p1}, Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;->enableWhiteTranslucentStatus()V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->readChargeFullPromptStatus()Z

    move-result p1

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->chargeFullPrompted:Z

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->readNoDisturbPromptStatus()Z

    move-result p1

    iput-boolean p1, p0, Lcom/rockrobo/clean/CleanActivity;->noDisturbPrompted:Z

    new-instance p1, Lcom/rockrobo/map/MapRetriever;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd6

    const/16 v2, -0xd6

    invoke-direct {p1, v0, v1, v2}, Lcom/rockrobo/map/MapRetriever;-><init>(Landroid/os/Handler;II)V

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mapRetriever:Lcom/rockrobo/map/MapRetriever;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/rockrobo/xmplugin/RRBaseActivity;->onPause()V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->unSubscribeProperty()V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->statusTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->checkTask:Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;

    invoke-virtual {v0}, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;->cancel()Z

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->saveLocalCleanMode()V

    return-void
.end method

.method public onPropChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11

    sget-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xb

    const/4 v3, 0x3

    const/4 v4, 0x7

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/16 v9, 0xa

    const/4 v10, 0x2

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "event.low_power_back"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "event.robot_timed_ended"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "event.relocate_fail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "event.no_disturb_end"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "event.clean_complete"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "event.power_resume_clean"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "event.robot_timed_started"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_7
    const-string v1, "event.back_to_origin_succ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_8
    const-string v1, "event.back_to_origin_fail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_9
    const-string v1, "event.no_disturb_start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_a
    const-string v1, "event.error_code"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_b
    const-string v1, "event.back_to_dock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_c
    const-string v1, "event.bin_full"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_d
    const-string v1, "event.back_to_dock_nearby"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    sget-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown property name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const/16 p1, 0x18

    goto :goto_2

    :pswitch_1
    const/16 p1, 0x11

    goto :goto_2

    :pswitch_2
    const/16 p1, 0x19

    goto :goto_2

    :pswitch_3
    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_3

    :pswitch_4
    iput v9, v0, Landroid/os/Message;->what:I

    goto :goto_3

    :pswitch_5
    iput v7, v0, Landroid/os/Message;->what:I

    goto :goto_3

    :pswitch_6
    iput v8, v0, Landroid/os/Message;->what:I

    goto :goto_3

    :pswitch_7
    iput v4, v0, Landroid/os/Message;->what:I

    goto :goto_3

    :pswitch_8
    const/4 p1, -0x5

    goto :goto_2

    :pswitch_9
    iput v5, v0, Landroid/os/Message;->what:I

    goto :goto_3

    :pswitch_a
    iput v6, v0, Landroid/os/Message;->what:I

    goto :goto_3

    :pswitch_b
    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_3

    :pswitch_c
    iput v10, v0, Landroid/os/Message;->what:I

    goto :goto_3

    :pswitch_d
    const/16 p1, -0xd

    :goto_2
    iput p1, v0, Landroid/os/Message;->what:I

    :goto_3
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6858f8b5 -> :sswitch_d
        -0x626ac865 -> :sswitch_c
        -0x5fe6470d -> :sswitch_b
        -0x5e6d7e68 -> :sswitch_a
        -0x42889308 -> :sswitch_9
        -0x3ae74629 -> :sswitch_8
        -0x3ae11305 -> :sswitch_7
        -0x37e1d6f0 -> :sswitch_6
        -0x2dc86f7b -> :sswitch_5
        0x6768c43 -> :sswitch_4
        0x120b5ef1 -> :sswitch_3
        0x25117f84 -> :sswitch_2
        0x60648b09 -> :sswitch_1
        0x64870380 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public onResume()V
    .locals 14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapDrawn:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->consumableDataLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->logLevelLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->timeZoneLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->statusLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->logLevelSetting:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->countryInLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->locationLangLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->messageVersionLoading:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/CleanActivity;->firmwareFeaturesLoading:Z

    const/16 v1, -0x6f

    iput v1, p0, Lcom/rockrobo/clean/CleanActivity;->robotLogLevel:I

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->getMopModePreference(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v3, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    const/4 v4, 0x0

    sget-object v5, Lcom/rockrobo/common/CleanMode;->MOP:Lcom/rockrobo/common/CleanMode;

    const v6, 0x7f050006

    const v7, 0x7f050007

    const v8, 0x7f0a0138

    invoke-virtual/range {v3 .. v8}, Lcom/rockrobo/ui/ListHeartbeatView;->insertCleanModeResource(Lcom/rockrobo/common/CleanMode;Lcom/rockrobo/common/CleanMode;III)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    sget-object v2, Lcom/rockrobo/common/CleanMode;->MOP:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {v1, v2}, Lcom/rockrobo/ui/ListHeartbeatView;->removeButtonResource(Lcom/rockrobo/common/CleanMode;)V

    :goto_0
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->setupModeBarMopButton()V

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/rockrobo/presenter/RobotPresenterI;->checkDeviceUpdateInfo(Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v1}, Lcom/rockrobo/xmplugin/Device;->updateDeviceStatus()V

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v2}, Lcom/rockrobo/xmplugin/Device;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/rockrobo/clean/CleanActivity$RobotStatusTimerTask;-><init>(Lcom/rockrobo/clean/CleanActivity;Lcom/rockrobo/clean/CleanActivity$1;)V

    iput-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->statusTask:Ljava/util/TimerTask;

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;

    invoke-direct {v1, p0}, Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    iput-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->checkTask:Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->timer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity;->timer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/rockrobo/clean/CleanActivity;->statusTask:Ljava/util/TimerTask;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x5dc

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object v8, p0, Lcom/rockrobo/clean/CleanActivity;->timer:Ljava/util/Timer;

    iget-object v9, p0, Lcom/rockrobo/clean/CleanActivity;->checkTask:Lcom/rockrobo/clean/CleanActivity$CheckTimerTask;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x1f4

    invoke-virtual/range {v8 .. v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->toastView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {p0, v1}, Lcom/rockrobo/clean/CleanActivity;->updateActionBarAndSubTitle(Lcom/rockrobo/clean/RobotStatus;)V

    iput v0, p0, Lcom/rockrobo/clean/CleanActivity;->rcExitRetries:I

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v0}, Lcom/rockrobo/xmplugin/Device;->isShared()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->placeRedPoint()V

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainView:Lcom/rockrobo/ui/mainview/MainViewI;

    invoke-interface {v0}, Lcom/rockrobo/ui/mainview/MainViewI;->resume()V

    invoke-super {p0}, Lcom/rockrobo/xmplugin/RRBaseActivity;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainView:Lcom/rockrobo/ui/mainview/MainViewI;

    invoke-interface {v0}, Lcom/rockrobo/ui/mainview/MainViewI;->exit()V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-interface {v0}, Lcom/rockrobo/map/MapViewI;->exit()V

    :cond_0
    invoke-super {p0}, Lcom/rockrobo/xmplugin/RRBaseActivity;->onStop()V

    return-void
.end method

.method pause(Lcom/rockrobo/clean/RobotStatus;)V
    .locals 3

    sget-object v0, Lcom/rockrobo/clean/CleanActivity$21;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    invoke-virtual {p1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/rockrobo/clean/CleanActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/rockrobo/clean/RobotStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a015e

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a015d

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a015b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0155

    new-instance v2, Lcom/rockrobo/clean/CleanActivity$13;

    invoke-direct {v2, p0, p1}, Lcom/rockrobo/clean/CleanActivity$13;-><init>(Lcom/rockrobo/clean/CleanActivity;Lcom/rockrobo/clean/RobotStatus;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0a0009

    new-instance v1, Lcom/rockrobo/clean/CleanActivity$12;

    invoke-direct {v1, p0}, Lcom/rockrobo/clean/CleanActivity$12;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readCleanMode()Lcom/rockrobo/common/CleanMode;
    .locals 2

    const-string v0, "clean_mode_"

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->getIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/rockrobo/common/CleanMode;->valueOf(I)Lcom/rockrobo/common/CleanMode;

    move-result-object v0

    return-object v0
.end method

.method public saveLocalCleanMode()V
    .locals 2

    const-string v0, "clean_mode_"

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {v1}, Lcom/rockrobo/common/CleanMode;->getFanPower()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public setupAnimation(Landroid/view/View;IZ)Landroid/view/animation/Animation;
    .locals 1

    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    new-instance v0, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;

    invoke-direct {v0, p0, p1, p3}, Lcom/rockrobo/clean/CleanActivity$MapViewAnimationListener;-><init>(Lcom/rockrobo/clean/CleanActivity;Landroid/view/View;Z)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object p2
.end method

.method public setupAnimations()V
    .locals 5

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCover:Landroid/view/View;

    const/4 v1, 0x1

    const v2, 0x7f010002

    invoke-virtual {p0, v0, v2, v1}, Lcom/rockrobo/clean/CleanActivity;->setupAnimation(Landroid/view/View;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCoverFadeIn:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCover:Landroid/view/View;

    const/4 v2, 0x0

    const v3, 0x7f010003

    invoke-virtual {p0, v0, v3, v2}, Lcom/rockrobo/clean/CleanActivity;->setupAnimation(Landroid/view/View;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCoverFadeOut:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mainViewCoverFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->actionBar:Landroid/view/View;

    const/high16 v3, 0x7f010000

    invoke-virtual {p0, v0, v3, v1}, Lcom/rockrobo/clean/CleanActivity;->setupAnimation(Landroid/view/View;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->actionBarSlideIn:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->actionBar:Landroid/view/View;

    const v3, 0x7f010001

    invoke-virtual {p0, v0, v3, v2}, Lcom/rockrobo/clean/CleanActivity;->setupAnimation(Landroid/view/View;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->actionBarSlideOut:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewContainer:Landroid/widget/RelativeLayout;

    const v3, 0x7f010004

    invoke-virtual {p0, v0, v3, v1}, Lcom/rockrobo/clean/CleanActivity;->setupAnimation(Landroid/view/View;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewSlideIn:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f010005

    invoke-virtual {p0, v0, v1, v2}, Lcom/rockrobo/clean/CleanActivity;->setupAnimation(Landroid/view/View;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mapViewSlideOut:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->setupModeBarAnimator()V

    return-void
.end method

.method public showToast(IJ)V
    .locals 5

    const/16 v0, -0xd

    const v1, 0x7f050138

    const/4 v2, 0x0

    if-eq p1, v0, :cond_5

    const/16 v0, 0xd

    if-eq p1, v0, :cond_4

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1a

    const v1, 0x7f050139

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6b

    const v3, 0x7f05013c

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd9

    if-eq p1, v0, :cond_0

    const v0, 0x7f05012a

    packed-switch p1, :pswitch_data_0

    const v4, 0x7f050137

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastText:Landroid/widget/TextView;

    const v0, 0x7f0a0210

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastText:Landroid/widget/TextView;

    const v0, 0x7f0a0211

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastText:Landroid/widget/TextView;

    const v0, 0x7f0a020a

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastText:Landroid/widget/TextView;

    const v0, 0x7f0a020b

    goto/16 :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastText:Landroid/widget/TextView;

    const v0, 0x7f0a020c

    goto/16 :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    const v0, 0x7f050136

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastText:Landroid/widget/TextView;

    const v0, 0x7f0a0205

    goto/16 :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    const v0, 0x7f05013a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastText:Landroid/widget/TextView;

    const v0, 0x7f0a0208

    goto/16 :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastText:Landroid/widget/TextView;

    const v0, 0x7f0a0206

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastText:Landroid/widget/TextView;

    const v0, 0x7f0a0209

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastText:Landroid/widget/TextView;

    const v0, 0x7f0a020e

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastText:Landroid/widget/TextView;

    const v0, 0x7f0a020f

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastText:Landroid/widget/TextView;

    const v0, 0x7f0a0204

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    const v0, 0x7f050135

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastText:Landroid/widget/TextView;

    const v0, 0x7f0a0207

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastText:Landroid/widget/TextView;

    const v0, 0x7f0a020d

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->toastView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x75

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method subscribeDevice()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0xe5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0xe5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->subscribeDevice(Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v0, p0}, Lcom/rockrobo/xmplugin/Device;->addPropChangedListener(Lcom/rockrobo/clean/PropChangedListenerI;)V

    return-void
.end method

.method updateActionBarAndSubTitle(Lcom/rockrobo/clean/RobotStatus;)V
    .locals 2

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->setActionBarActive()V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->setModeBarActive()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->setActionBarSleeping()V

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->setModeBarSleeping()V

    :goto_0
    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rockrobo/clean/RobotStatus;->getDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/rockrobo/clean/CleanActivity$21;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    invoke-virtual {p1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->restore()V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->restore()V

    :pswitch_2
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1, v0}, Lcom/rockrobo/ui/HeartBeatView;->setEnabled(Z)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->restore()V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1, v1}, Lcom/rockrobo/ui/HeartBeatView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->restore()V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1, v1}, Lcom/rockrobo/ui/HeartBeatView;->setEnabled(Z)V

    goto :goto_3

    :pswitch_4
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->setPause()V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1, v1}, Lcom/rockrobo/ui/HeartBeatView;->setEnabled(Z)V

    :goto_1
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->restore()V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1, v0}, Lcom/rockrobo/ui/HeartBeatView;->setEnabled(Z)V

    goto :goto_4

    :pswitch_5
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->setPause()V

    :goto_2
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1, v1}, Lcom/rockrobo/ui/HeartBeatView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->restore()V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1, v0}, Lcom/rockrobo/ui/HeartBeatView;->setEnabled(Z)V

    :goto_3
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    invoke-virtual {p1, v1}, Lcom/rockrobo/ui/ListHeartbeatView;->setEnabled(Z)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->restore()V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->cleanBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1, v0}, Lcom/rockrobo/ui/HeartBeatView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->setPause()V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->chargeBtn:Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1, v1}, Lcom/rockrobo/ui/HeartBeatView;->setEnabled(Z)V

    :goto_4
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->modeBtn:Lcom/rockrobo/ui/ListHeartbeatView;

    invoke-virtual {p1, v0}, Lcom/rockrobo/ui/ListHeartbeatView;->setEnabled(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method updateErrorContent(I)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorTitle:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/rockrobo/utils/Errors;->getErrorTitle(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorContent:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/rockrobo/utils/Errors;->getErrorMessage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p1}, Lcom/rockrobo/utils/Errors;->knownErrorCode(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->errorArrow:Landroid/widget/ImageView;

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity;->errorArrow:Landroid/widget/ImageView;

    const/4 v0, 0x0

    goto :goto_0

    return-void
.end method

.method updateWarnUi()V
    .locals 3

    invoke-direct {p0}, Lcom/rockrobo/clean/CleanActivity;->showErrorView()V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorClose:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity;->errorTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rockrobo/clean/CleanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lcom/rockrobo/clean/CleanActivity;->warningCode:I

    invoke-virtual {p0, v0}, Lcom/rockrobo/clean/CleanActivity;->updateErrorContent(I)V

    return-void
.end method
