.class public Lcom/rockrobo/more/timer/SetTimerActivity;
.super Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;

# interfaces
.implements Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;
    }
.end annotation


# static fields
.field public static final CLEAN_MODE_FULL_SPEED_IDX:I = 0x3

.field public static final CLEAN_MODE_NORMAL_IDX:I = 0x1

.field public static final CLEAN_MODE_POWER_IDX:I = 0x2

.field public static final CLEAN_MODE_SILENT_IDX:I = 0x0

.field private static final DAY_SEC:I = 0x15180

.field private static final HOUR_SEC:I = 0xe10

.field public static final INTENT_KEY_DEVICE_DID:Ljava/lang/String; = "device_did"

.field private static final KEY_CURRENT_TIMER:Ljava/lang/String; = "current.timer"

.field private static final KEY_ORIGINAL_TIMER:Ljava/lang/String; = "original.timer"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MINUTE_SEC:I = 0x3c

.field private static final MSG_SET_SCENE_FAILED:I = 0x2

.field private static final MSG_SET_SCENE_SUCCESS:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "SetTimerActivity"

.field public static final TIMER_TYPE_EVERYDAY:I = 0x1

.field public static final TIMER_TYPE_ONCE:I = 0x0

.field public static final TIMER_TYPE_SELF_DEFINE:I = 0x4

.field public static final TIMER_TYPE_WEEKEND:I = 0x3

.field public static final TIMER_TYPE_WORKDAY:I = 0x2

.field private static final WEEK_MILLIS:I = 0x240c8400


# instance fields
.field private contentView:Landroid/view/ViewGroup;

.field private mCleanMode:Landroid/view/View;

.field private mCleanModeMark:Landroid/widget/ImageView;

.field private mCleanModeMode:Landroid/widget/TextView;

.field private mCleanModePicker:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

.field private mCleanModeTitle:Landroid/widget/TextView;

.field private mClearOnBtn:Landroid/widget/Button;

.field private mDid:Ljava/lang/String;

.field private mEnable:Z

.field private mHandler:Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;

.field private mIsAddTimer:Z

.field private mIsPower:Z

.field private mIvTimerOnMark:Landroid/widget/ImageView;

.field private mMarkColor:I

.field private mName:Ljava/lang/String;

.field private mOn:Z

.field private mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

.field private mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

.field private mSelectedItems:[Z

.field private mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

.field private mTpTimerOn:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

.field private mTvRepeatDetail:Landroid/widget/TextView;

.field private mTvTimerOn:Landroid/widget/TextView;

.field private mTvTimerOnDetail:Landroid/widget/TextView;

.field private mTvTimerOnHint:Landroid/widget/TextView;

.field private mUnMarkColor:I

.field private mViewRepeat:Landroid/view/View;

.field private mViewTimerOn:Landroid/view/View;

.field private mViewTpOn:Landroid/view/View;

.field private mXQProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

.field private slideInBottom:Landroid/view/animation/Animation;

.field private slideInTop:Landroid/view/animation/Animation;

.field private slideOutBottom:Landroid/view/animation/Animation;

.field private slideOutTop:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/timer/SetTimerActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->contentView:Landroid/view/ViewGroup;

    new-instance v0, Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;-><init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    iput-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mHandler:Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mXQProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/rockrobo/more/timer/SetTimerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->showRepeatDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/rockrobo/more/timer/SetTimerActivity;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->cleanModeIdx2String(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModeMode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/PlugTimer;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mClearOnBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/rockrobo/more/timer/SetTimerActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->isModified()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/rockrobo/more/timer/SetTimerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->showConfirmDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/PlugTimer;
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->buildTimerFromUi()Lcom/rockrobo/more/timer/PlugTimer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/rockrobo/more/timer/SetTimerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mIsAddTimer:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/TimerCommonManager;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/rockrobo/more/timer/SetTimerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->showSubRepeatDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mIvTimerOnMark:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTvRepeatDetail:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/rockrobo/more/timer/SetTimerActivity;)[Z
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mSelectedItems:[Z

    return-object p0
.end method

.method static synthetic access$300(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    return-object p0
.end method

.method static synthetic access$302(Lcom/rockrobo/more/timer/SetTimerActivity;Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    return-object p1
.end method

.method static synthetic access$400(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTpTimerOn:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTvTimerOnHint:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModeMark:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$702(Lcom/rockrobo/more/timer/SetTimerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOn:Z

    return p1
.end method

.method static synthetic access$800(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTvTimerOnDetail:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/rockrobo/more/timer/SetTimerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->showClearOnBtn()V

    return-void
.end method

.method private buildTimerFromUi()Lcom/rockrobo/more/timer/PlugTimer;
    .locals 2

    new-instance v0, Lcom/rockrobo/more/timer/PlugTimer;

    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/rockrobo/more/timer/PlugTimer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->usId:I

    iget-boolean v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mIsPower:Z

    iput-boolean v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->isPower:Z

    iget-boolean v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mEnable:Z

    iput-boolean v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    iget-boolean v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOn:Z

    iput-boolean v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iput-object v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->name:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mIsAddTimer:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOn:Z

    iput-boolean v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->onStatus:Z

    :cond_0
    iget-boolean v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOn:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->onStatus:Z

    :cond_1
    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v1}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->getRepeatType()I

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->fixOnceTimeDiff()V

    :cond_2
    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->getCleanModeFromUI()Lcom/rockrobo/common/CleanMode;

    move-result-object v1

    iput-object v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    return-object v0
.end method

.method private cleanMode2Index(Lcom/rockrobo/common/CleanMode;)I
    .locals 1

    sget-object v0, Lcom/rockrobo/more/timer/SetTimerActivity$15;->$SwitchMap$com$rockrobo$common$CleanMode:[I

    invoke-virtual {p1}, Lcom/rockrobo/common/CleanMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    :pswitch_0
    const/4 p1, 0x3

    return p1

    :pswitch_1
    const/4 p1, 0x2

    return p1

    :pswitch_2
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cleanModeIdx2String(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/rockrobo/common/CleanMode;->STANDARD:Lcom/rockrobo/common/CleanMode;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->cleanMode2String(Lcom/rockrobo/common/CleanMode;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    sget-object p1, Lcom/rockrobo/common/CleanMode;->FULL:Lcom/rockrobo/common/CleanMode;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/rockrobo/common/CleanMode;->POWER:Lcom/rockrobo/common/CleanMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/rockrobo/common/CleanMode;->SILENT:Lcom/rockrobo/common/CleanMode;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private fixOnceTimeDiff()V
    .locals 11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v4, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOn:Z

    const/4 v5, 0x2

    const/4 v6, 0x5

    if-eqz v4, :cond_0

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v3, v3, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    mul-int/lit8 v3, v3, 0x3c

    iget-object v4, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v4, v4, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v7, 0x5265c00

    add-long v9, v2, v7

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    return-void
.end method

.method private getCleanModeFromUI()Lcom/rockrobo/common/CleanMode;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModePicker:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->index2CleanMode(I)Lcom/rockrobo/common/CleanMode;

    move-result-object v0

    return-object v0
.end method

.method private index2CleanMode(I)Lcom/rockrobo/common/CleanMode;
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/rockrobo/common/CleanMode;->STANDARD:Lcom/rockrobo/common/CleanMode;

    return-object p1

    :pswitch_0
    sget-object p1, Lcom/rockrobo/common/CleanMode;->FULL:Lcom/rockrobo/common/CleanMode;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/rockrobo/common/CleanMode;->POWER:Lcom/rockrobo/common/CleanMode;

    return-object p1

    :cond_0
    sget-object p1, Lcom/rockrobo/common/CleanMode;->SILENT:Lcom/rockrobo/common/CleanMode;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initProgressDialog()V
    .locals 2

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mXQProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mXQProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    const v1, 0x7f0a00da

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mXQProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method private initTimerField()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-boolean v0, v0, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mEnable:Z

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-boolean v0, v0, Lcom/rockrobo/more/timer/PlugTimer;->isPower:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mIsPower:Z

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-boolean v0, v0, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOn:Z

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-object v0, v0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v0}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iput-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-object v0, v0, Lcom/rockrobo/more/timer/PlugTimer;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mName:Ljava/lang/String;

    return-void
.end method

.method private initTitleView()V
    .locals 2

    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/rockrobo/more/timer/SetTimerActivity$8;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/timer/SetTimerActivity$8;-><init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0600f7

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/rockrobo/more/timer/SetTimerActivity$9;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/timer/SetTimerActivity$9;-><init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private isModified()Z
    .locals 4

    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->getCleanModeFromUI()Lcom/rockrobo/common/CleanMode;

    move-result-object v0

    iget-boolean v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mIsAddTimer:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-object v1, v1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v1, v1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    iget-object v3, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v3, v3, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-object v1, v1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v1, v1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    iget-object v3, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v3, v3, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-object v1, v1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v1}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->getRepeatType()I

    move-result v1

    iget-object v3, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v3}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->getRepeatType()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-object v1, v1, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {v1, v0}, Lcom/rockrobo/common/CleanMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-boolean v1, v1, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    iget-boolean v3, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOn:Z

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-object v1, v1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object v3, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v1, v3}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-object v1, v1, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {v1, v0}, Lcom/rockrobo/common/CleanMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private showClearOnBtn()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mClearOnBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mClearOnBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mClearOnBtn:Landroid/widget/Button;

    new-instance v1, Lcom/rockrobo/more/timer/SetTimerActivity$7;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/timer/SetTimerActivity$7;-><init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showConfirmDialog()V
    .locals 3

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0165

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setTitle(I)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rockrobo/more/timer/SetTimerActivity$14;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/timer/SetTimerActivity$14;-><init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    const v2, 0x7f0a0164

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    return-void
.end method

.method private showRepeatDialog()V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v0}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->getRepeatType()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f0a0176

    invoke-virtual {p0, v2}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0a016b

    invoke-virtual {p0, v2}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f0a0182

    invoke-virtual {p0, v2}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x7f0a0181

    invoke-virtual {p0, v2}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const v2, 0x7f0a0179

    invoke-virtual {p0, v2}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->activity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/rockrobo/more/timer/SetTimerActivity$10;

    invoke-direct {v3, p0}, Lcom/rockrobo/more/timer/SetTimerActivity$10;-><init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    return-void
.end method

.method private showSubRepeatDialog()V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object v0, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mSelectedItems:[Z

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0a017a

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0a016e

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f0a017e

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f0a0180

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x7f0a017b

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0x7f0a016c

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v1, 0x7f0a0178

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->activity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0177

    invoke-virtual {v1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setTitle(I)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mSelectedItems:[Z

    new-instance v3, Lcom/rockrobo/more/timer/SetTimerActivity$13;

    invoke-direct {v3, p0}, Lcom/rockrobo/more/timer/SetTimerActivity$13;-><init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rockrobo/more/timer/SetTimerActivity$12;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/timer/SetTimerActivity$12;-><init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rockrobo/more/timer/SetTimerActivity$11;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/timer/SetTimerActivity$11;-><init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    return-void
.end method

.method private update(Lcom/rockrobo/more/timer/PlugTimer;)V
    .locals 1

    iget-boolean v0, p1, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mEnable:Z

    iget-boolean v0, p1, Lcom/rockrobo/more/timer/PlugTimer;->isPower:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mIsPower:Z

    iget-boolean v0, p1, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOn:Z

    iget-object v0, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iput-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object p1, p1, Lcom/rockrobo/more/timer/PlugTimer;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public calTimeDiff(Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Ljava/lang/String;
    .locals 12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {p1}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->getRepeatType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->fixOnceTimeDiff()V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v2, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    sub-int/2addr v2, v0

    iget v3, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    iget v4, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    iget v5, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v4, v0, v2

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    const-wide/32 v1, 0x240c8400

    move-wide v4, v1

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_4

    iget-object v2, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v2, v1

    if-gez v2, :cond_1

    add-int/lit8 v2, v2, 0x7

    :cond_1
    const/16 v1, 0xc

    const/16 v3, 0xb

    if-nez v2, :cond_2

    iget v6, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    mul-int/lit8 v6, v6, 0x3c

    iget v8, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    add-int/2addr v6, v8

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v8, v9

    if-gt v6, v8, :cond_2

    add-int/lit8 v2, v2, 0x7

    :cond_2
    const-string v6, "SetTimerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dayOffset: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v8, 0x5

    invoke-virtual {v6, v8, v2}, Ljava/util/Calendar;->add(II)V

    iget v2, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v2, v8

    invoke-virtual {v6, v3, v2}, Ljava/util/Calendar;->add(II)V

    iget v2, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->add(II)V

    const-string v1, "SetTimerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long v10, v1, v8

    const-string v1, "SetTimerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SetTimerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeDiff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v1, v10, v4

    if-gez v1, :cond_3

    move-wide v4, v10

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p0, v4, v5}, Lcom/rockrobo/more/timer/SetTimerActivity;->getCountdown(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public cleanMode2String(Lcom/rockrobo/common/CleanMode;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/common/CleanMode;->NONE:Lcom/rockrobo/common/CleanMode;

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/rockrobo/common/CleanMode;->STANDARD:Lcom/rockrobo/common/CleanMode;

    :cond_0
    invoke-virtual {p1}, Lcom/rockrobo/common/CleanMode;->toStringId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCountdown(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/32 v0, 0x15180

    div-long v2, p1, v0

    long-to-int v2, v2

    rem-long v0, p1, v0

    const-wide/16 v3, 0xe10

    div-long/2addr v0, v3

    long-to-int v0, v0

    rem-long/2addr p1, v3

    const-wide/16 v3, 0x3c

    div-long/2addr p1, v3

    long-to-int p1, p1

    const-string p2, ""

    if-lez v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const p2, 0x7f0a006c

    invoke-virtual {p0, p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-lez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const p2, 0x7f0a00de

    invoke-virtual {p0, p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-lez p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const p1, 0x7f0a012a

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0a016d

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0a0166

    invoke-virtual {p0, p2}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public highLightCleanMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModeMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModeTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mMarkColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModePicker:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->slideInBottom:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModePicker:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {p1, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setVisibility(I)V

    return-void
.end method

.method public highLightTimerOn(Z)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mIvTimerOnMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTvTimerOn:Landroid/widget/TextView;

    iget v2, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mMarkColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mViewTpOn:Landroid/view/View;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->slideInTop:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mViewTpOn:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public lowLightCleanMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModeMark:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModeTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mUnMarkColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModePicker:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->slideOutBottom:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModePicker:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {p1, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setVisibility(I)V

    return-void
.end method

.method public lowLightTimerOn(Z)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mIvTimerOnMark:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTvTimerOn:Landroid/widget/TextView;

    iget v2, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mUnMarkColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mViewTpOn:Landroid/view/View;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->slideOutTop:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mViewTpOn:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->isModified()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->showConfirmDialog()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f080014

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->contentView:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mHostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    const v0, 0x7f0600de

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;->setTitleBarPadding(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "action.add.plug.timer"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mIsAddTimer:Z

    const-string v0, "bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-class v2, Lcom/rockrobo/more/timer/PlugTimer;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    if-eqz v0, :cond_0

    const-string v2, "plug.timer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/more/timer/PlugTimer;

    iput-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    :cond_0
    const-string v0, "device_did"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mDid:Ljava/lang/String;

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    if-nez p1, :cond_1

    const-string p1, "SetTimerActivity"

    const-string v0, "error get timer"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->finish()V

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mDid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->finish()V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/rockrobo/more/timer/DeviceManager;->getInstance(Landroid/content/Context;)Lcom/rockrobo/more/timer/DeviceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mDid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/timer/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/xiaomi/smarthome/device/api/BaseDevice;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->finish()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mDid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->finish()V

    return-void

    :cond_4
    invoke-static {p0}, Lcom/rockrobo/more/timer/DeviceManager;->getInstance(Landroid/content/Context;)Lcom/rockrobo/more/timer/DeviceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mDid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/timer/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/xiaomi/smarthome/device/api/BaseDevice;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->finish()V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->initTimerField()V

    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->initTitleView()V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-object p1, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object p1, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    invoke-virtual {p1}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mSelectedItems:[Z

    const p1, 0x7f060106

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mViewRepeat:Landroid/view/View;

    const p1, 0x7f0600f2

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTvRepeatDetail:Landroid/widget/TextView;

    const p1, 0x7f060107

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mViewTimerOn:Landroid/view/View;

    const p1, 0x7f060055

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mIvTimerOnMark:Landroid/widget/ImageView;

    const p1, 0x7f0600f3

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTvTimerOn:Landroid/widget/TextView;

    const p1, 0x7f0600f4

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTvTimerOnDetail:Landroid/widget/TextView;

    const p1, 0x7f0600d5

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanMode:Landroid/view/View;

    const p1, 0x7f0600d6

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModeMark:Landroid/widget/ImageView;

    const p1, 0x7f0600d8

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModeTitle:Landroid/widget/TextView;

    const p1, 0x7f0600da

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModePicker:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    const p1, 0x7f0600d7

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModeMode:Landroid/widget/TextView;

    const p1, 0x7f060027

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mClearOnBtn:Landroid/widget/Button;

    const p1, 0x7f060108

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mViewTpOn:Landroid/view/View;

    const p1, 0x7f0600f5

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTvTimerOnHint:Landroid/widget/TextView;

    const p1, 0x7f0600ec

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTpTimerOn:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTpTimerOn:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mMarkColor:I

    invoke-virtual {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030031

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mUnMarkColor:I

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {p1, p0}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->getRepeatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0a017c

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f0a017d

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const p1, 0x7f0a0176

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_7
    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTvRepeatDetail:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mViewRepeat:Landroid/view/View;

    new-instance v0, Lcom/rockrobo/more/timer/SetTimerActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/timer/SetTimerActivity$1;-><init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->setupAnimation()V

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->lowLightCleanMode(Z)V

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity;->highLightTimerOn(Z)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTvTimerOnDetail:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v0, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    iget-object v2, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v2, v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    invoke-static {v0, v2}, Lcom/rockrobo/more/timer/PlugTimer;->formatTime(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTvTimerOnHint:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->calTimeDiff(Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0a0173

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTvTimerOnHint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTpTimerOn:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v0, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTpTimerOn:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOnTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v0, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->showClearOnBtn()V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mViewTimerOn:Landroid/view/View;

    new-instance v0, Lcom/rockrobo/more/timer/SetTimerActivity$2;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/timer/SetTimerActivity$2;-><init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanMode:Landroid/view/View;

    new-instance v0, Lcom/rockrobo/more/timer/SetTimerActivity$3;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/timer/SetTimerActivity$3;-><init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTpTimerOn:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    new-instance v0, Lcom/rockrobo/more/timer/SetTimerActivity$4;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/timer/SetTimerActivity$4;-><init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setOnTimeChangedListener(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnTimeChangedListener;)V

    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->initProgressDialog()V

    invoke-virtual {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p0}, Lcom/rockrobo/more/timer/DeviceManager;->getInstance(Landroid/content/Context;)Lcom/rockrobo/more/timer/DeviceManager;

    move-result-object v0

    iget-object v2, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mDid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/rockrobo/more/timer/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/xiaomi/smarthome/device/api/BaseDevice;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/xmplugin/Device;

    invoke-static {p1, v0}, Lcom/rockrobo/more/timer/PlugseatTimerManagerFactory;->getPlugTimerManager(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)Lcom/rockrobo/more/timer/TimerCommonManager;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-virtual {p1, p0}, Lcom/rockrobo/more/timer/TimerCommonManager;->registerListener(Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModePicker:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {p1, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setMinValue(I)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModePicker:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setMaxValue(I)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModePicker:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    new-instance v0, Lcom/rockrobo/more/timer/SetTimerActivity$5;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/timer/SetTimerActivity$5;-><init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setFormatter(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModePicker:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    new-instance v0, Lcom/rockrobo/more/timer/SetTimerActivity$6;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/timer/SetTimerActivity$6;-><init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setOnValueChangedListener(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnValueChangeListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModePicker:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-object v0, v0, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-direct {p0, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->cleanMode2Index(Lcom/rockrobo/common/CleanMode;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setValue(I)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModeMode:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-object v0, v0, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->cleanMode2String(Lcom/rockrobo/common/CleanMode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-virtual {v0, p0}, Lcom/rockrobo/more/timer/TimerCommonManager;->unRegisterListener(Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mHandler:Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mHandler:Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->contentView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/rockrobo/utils/SysUtils;->nullViewDrawablesRecursive(Landroid/view/View;)V

    iput-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->contentView:Landroid/view/ViewGroup;

    return-void
.end method

.method public onGetSceneFailed(I)V
    .locals 0

    return-void
.end method

.method public onGetSceneSuccess()V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mPluginPackage:Lcom/xiaomi/plugin/core/XmPluginPackage;

    invoke-virtual {v0}, Lcom/xiaomi/plugin/core/XmPluginPackage;->getClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "original.timer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/more/timer/PlugTimer;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    :cond_0
    const-string v0, "current.timer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/rockrobo/more/timer/PlugTimer;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->update(Lcom/rockrobo/more/timer/PlugTimer;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "original.timer"

    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mOriginTimer:Lcom/rockrobo/more/timer/PlugTimer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "current.timer"

    invoke-direct {p0}, Lcom/rockrobo/more/timer/SetTimerActivity;->buildTimerFromUi()Lcom/rockrobo/more/timer/PlugTimer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSetSceneFailed()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mHandler:Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mHandler:Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;

    invoke-virtual {v1, v0}, Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSetSceneSuccess(Lcom/rockrobo/more/timer/CommonTimer;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mHandler:Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mHandler:Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setupAnimation()V
    .locals 5

    const v0, 0x7f01000b

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->slideOutTop:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->slideOutTop:Landroid/view/animation/Animation;

    new-instance v1, Lcom/rockrobo/common/ShowHideAnimationListener;

    iget-object v2, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mViewTpOn:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/rockrobo/common/ShowHideAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f010004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->slideInTop:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->slideInTop:Landroid/view/animation/Animation;

    new-instance v1, Lcom/rockrobo/common/ShowHideAnimationListener;

    iget-object v2, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mViewTpOn:Landroid/view/View;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lcom/rockrobo/common/ShowHideAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f010005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->slideOutBottom:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->slideOutBottom:Landroid/view/animation/Animation;

    new-instance v1, Lcom/rockrobo/common/ShowHideAnimationListener;

    iget-object v2, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModePicker:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-direct {v1, v2, v3}, Lcom/rockrobo/common/ShowHideAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f010006

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->slideInBottom:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->slideInBottom:Landroid/view/animation/Animation;

    new-instance v1, Lcom/rockrobo/common/ShowHideAnimationListener;

    iget-object v2, p0, Lcom/rockrobo/more/timer/SetTimerActivity;->mCleanModePicker:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-direct {v1, v2, v4}, Lcom/rockrobo/common/ShowHideAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
