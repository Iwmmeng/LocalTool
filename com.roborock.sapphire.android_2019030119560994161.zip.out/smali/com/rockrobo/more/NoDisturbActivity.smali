.class public Lcom/rockrobo/more/NoDisturbActivity;
.super Lcom/rockrobo/more/MoreBaseActivity;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_DATA_SET_FAIL:I = -0x2

.field private static final MSG_DATA_SET_OK:I = 0x1

.field private static final MSG_DND_TIMER:I = 0x0

.field private static final MSG_DND_TIMER_FAIL:I = -0x1


# instance fields
.field private buttonCancel:Landroid/view/View;

.field private buttonOk:Landroid/view/View;

.field endHour:I

.field private endLayout:Landroid/widget/RelativeLayout;

.field endMinute:I

.field private endTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

.field private mSwitchBtn:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

.field private oldEndHour:I

.field private oldEndMinute:I

.field private oldStartHour:I

.field private oldStartMinute:I

.field private progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

.field private spView1:Landroid/view/View;

.field private spView2:Landroid/view/View;

.field private spView3:Landroid/view/View;

.field startHour:I

.field private startLayout:Landroid/widget/RelativeLayout;

.field startMinute:I

.field private startTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

.field switchOn:Z

.field private timePickerBlock:Landroid/view/View;

.field private timerEndText:Landroid/widget/TextView;

.field private timerStartText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/NoDisturbActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/NoDisturbActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/rockrobo/more/MoreBaseActivity;-><init>()V

    const/16 v0, 0x16

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startHour:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->endHour:I

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->switchOn:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/NoDisturbActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rockrobo/more/NoDisturbActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->hideTimerPickerBlock()V

    return-void
.end method

.method static synthetic access$1000(Lcom/rockrobo/more/NoDisturbActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->showEndTimePicker()V

    return-void
.end method

.method static synthetic access$1100(Lcom/rockrobo/more/NoDisturbActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->updateEndTimeView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/rockrobo/more/NoDisturbActivity;)Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/rockrobo/more/NoDisturbActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->restoreAllTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/rockrobo/more/NoDisturbActivity;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/rockrobo/more/NoDisturbActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->lowLightTimeTexts()V

    return-void
.end method

.method static synthetic access$300(Lcom/rockrobo/more/NoDisturbActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->highLightStartTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/rockrobo/more/NoDisturbActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->setupStartTimePicker()V

    return-void
.end method

.method static synthetic access$500(Lcom/rockrobo/more/NoDisturbActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->showStartTimePicker()V

    return-void
.end method

.method static synthetic access$600(Lcom/rockrobo/more/NoDisturbActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->updateStartTimeView()V

    return-void
.end method

.method static synthetic access$700(Lcom/rockrobo/more/NoDisturbActivity;)Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    return-object p0
.end method

.method static synthetic access$800(Lcom/rockrobo/more/NoDisturbActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->highLightEndTime()V

    return-void
.end method

.method static synthetic access$900(Lcom/rockrobo/more/NoDisturbActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->setupEndTimePicker()V

    return-void
.end method

.method private handleDndTimer(Landroid/os/Message;)V
    .locals 3

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "enabled"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "start_hour"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/rockrobo/more/NoDisturbActivity;->startHour:I

    iput v2, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldStartHour:I

    const-string v2, "start_minute"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    iput v2, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldStartMinute:I

    const-string v2, "end_hour"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/rockrobo/more/NoDisturbActivity;->endHour:I

    iput v2, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldEndHour:I

    const-string v2, "end_minute"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldEndMinute:I

    if-nez p1, :cond_0

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startHour:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endHour:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    if-nez v0, :cond_0

    const/16 p1, 0x16

    iput p1, p0, Lcom/rockrobo/more/NoDisturbActivity;->startHour:I

    iput v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    const/16 p1, 0x8

    iput p1, p0, Lcom/rockrobo/more/NoDisturbActivity;->endHour:I

    iput v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    iget p1, p0, Lcom/rockrobo/more/NoDisturbActivity;->startHour:I

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->endHour:I

    iget v2, p0, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rockrobo/more/NoDisturbActivity;->setTime(IIII)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->switchOn:Z

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->refreshUi()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    return-void
.end method

.method private handleDndTimerSet()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->refreshUi()V

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startHour:I

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldStartHour:I

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldStartMinute:I

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endHour:I

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldEndHour:I

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldEndMinute:I

    const-string v0, "no_disturb_switch"

    iget-object v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->switchOn:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "no_disturb_start_hour"

    iget-object v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->startHour:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "no_disturb_start_minute"

    iget-object v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "no_disturb_end_hour"

    iget-object v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->endHour:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "no_disturb_end_minute"

    iget-object v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleDndTimerSetFailed()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a01d2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->refreshUi()V

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldStartHour:I

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startHour:I

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldStartMinute:I

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldEndHour:I

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endHour:I

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldEndMinute:I

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    return-void
.end method

.method private hideTimerPickerBlock()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->timePickerBlock:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private highLightEndTime()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7f0300c8

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->timerEndText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/NoDisturbActivity;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->timerEndText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    return-void
.end method

.method private highLightStartTime()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7f0300c8

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->timerStartText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/NoDisturbActivity;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->timerStartText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    return-void
.end method

.method private initViews()V
    .locals 1

    const v0, 0x7f0600c3

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f060041

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0600c5

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->timerStartText:Landroid/widget/TextView;

    const v0, 0x7f060043

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->timerEndText:Landroid/widget/TextView;

    const v0, 0x7f0600dc

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->mSwitchBtn:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    const v0, 0x7f0600bd

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->spView1:Landroid/view/View;

    const v0, 0x7f0600be

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->spView2:Landroid/view/View;

    const v0, 0x7f0600bf

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->spView3:Landroid/view/View;

    const v0, 0x7f0600c4

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    const v0, 0x7f060042

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    const v0, 0x7f0600db

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->timePickerBlock:Landroid/view/View;

    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->buttonOk:Landroid/view/View;

    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->buttonCancel:Landroid/view/View;

    return-void
.end method

.method private loadDndStatus()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadNoDisturbTimer(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private lowLightTimeTexts()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7f0300c7

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->timerStartText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/NoDisturbActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->timerEndText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/NoDisturbActivity;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->timerStartText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->timerEndText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    return-void
.end method

.method private restoreAllTime()V
    .locals 2

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldStartHour:I

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startHour:I

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldStartMinute:I

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldStartHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldStartMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->updateStartTimeView()V

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldEndHour:I

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endHour:I

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldEndMinute:I

    iput v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldEndHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->oldEndMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->updateEndTimeView()V

    return-void
.end method

.method private setupEndTimePicker()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->endHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method private setupStartTimePicker()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->startHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method private showEndTimePicker()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->timePickerBlock:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setVisibility(I)V

    return-void
.end method

.method private showStartTimePicker()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->timePickerBlock:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endTimePicker:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setVisibility(I)V

    return-void
.end method

.method private updateEndTimeView()V
    .locals 4

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->timerEndText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/rockrobo/more/NoDisturbActivity;->endHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateStartTimeView()V
    .locals 4

    iget v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->timerStartText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/rockrobo/more/NoDisturbActivity;->startHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public closeDnd()V
    .locals 3

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    new-instance v2, Lcom/rockrobo/more/NoDisturbActivity$6;

    invoke-direct {v2, p0}, Lcom/rockrobo/more/NoDisturbActivity$6;-><init>(Lcom/rockrobo/more/NoDisturbActivity;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelIntercepter(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show()V

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->closeNoDisturbTimer(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public getActivityTitle()I
    .locals 1

    const v0, 0x7f0a0143

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f08000a

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/rockrobo/more/NoDisturbActivity;->LOG_TAG:Ljava/lang/String;

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

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->handleDndTimerSet()V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/rockrobo/more/NoDisturbActivity;->handleDndTimer(Landroid/os/Message;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/rockrobo/utils/RRUtils;->toastNetFail(Landroid/app/Activity;I)V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->handleDndTimerSetFailed()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->initViews()V

    const-string p1, "no_disturb_switch"

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p1, v0}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->hasPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "no_disturb_switch"

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p1, v0}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/rockrobo/more/NoDisturbActivity;->switchOn:Z

    const-string p1, "no_disturb_start_hour"

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p1, v0}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "no_disturb_start_minute"

    iget-object v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/rockrobo/utils/PreferenceUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no_disturb_end_hour"

    iget-object v2, p0, Lcom/rockrobo/more/NoDisturbActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v1, v2}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "no_disturb_end_minute"

    iget-object v3, p0, Lcom/rockrobo/more/NoDisturbActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v2, v3}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/rockrobo/utils/PreferenceUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/rockrobo/more/NoDisturbActivity;->startHour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/rockrobo/more/NoDisturbActivity;->endHour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    :cond_0
    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->refreshUi()V

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity;->mSwitchBtn:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    new-instance v0, Lcom/rockrobo/more/NoDisturbActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/NoDisturbActivity$1;-><init>(Lcom/rockrobo/more/NoDisturbActivity;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity;->startLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/rockrobo/more/NoDisturbActivity$2;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/NoDisturbActivity$2;-><init>(Lcom/rockrobo/more/NoDisturbActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity;->endLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/rockrobo/more/NoDisturbActivity$3;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/NoDisturbActivity$3;-><init>(Lcom/rockrobo/more/NoDisturbActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity;->buttonOk:Landroid/view/View;

    new-instance v0, Lcom/rockrobo/more/NoDisturbActivity$4;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/NoDisturbActivity$4;-><init>(Lcom/rockrobo/more/NoDisturbActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity;->buttonCancel:Landroid/view/View;

    new-instance v0, Lcom/rockrobo/more/NoDisturbActivity$5;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/NoDisturbActivity$5;-><init>(Lcom/rockrobo/more/NoDisturbActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onResume()V

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->loadDndStatus()V

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a006b

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/NoDisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showNotCancellableProgressDialog(Landroid/app/Activity;Ljava/lang/String;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    return-void
.end method

.method public refreshUi()V
    .locals 3

    sget-object v0, Lcom/rockrobo/more/NoDisturbActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshUi enter! witchOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/rockrobo/more/NoDisturbActivity;->switchOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->mSwitchBtn:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iget-boolean v1, p0, Lcom/rockrobo/more/NoDisturbActivity;->switchOn:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->switchOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->endLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->spView2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->spView3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->startLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->updateStartTimeView()V

    invoke-direct {p0}, Lcom/rockrobo/more/NoDisturbActivity;->updateEndTimeView()V

    return-void
.end method

.method public setDefaultTime(IIII)V
    .locals 9

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    new-instance v2, Lcom/rockrobo/more/NoDisturbActivity$7;

    invoke-direct {v2, p0}, Lcom/rockrobo/more/NoDisturbActivity$7;-><init>(Lcom/rockrobo/more/NoDisturbActivity;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelIntercepter(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show()V

    :cond_0
    iget-object v2, p0, Lcom/rockrobo/more/NoDisturbActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v8}, Lcom/rockrobo/presenter/RobotPresenterI;->sendNoDisturbTimer(IIIILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public setTime(IIII)V
    .locals 9

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    new-instance v2, Lcom/rockrobo/more/NoDisturbActivity$8;

    invoke-direct {v2, p0}, Lcom/rockrobo/more/NoDisturbActivity$8;-><init>(Lcom/rockrobo/more/NoDisturbActivity;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelIntercepter(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/rockrobo/more/NoDisturbActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show()V

    :cond_0
    iget-object v2, p0, Lcom/rockrobo/more/NoDisturbActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v8}, Lcom/rockrobo/presenter/RobotPresenterI;->sendNoDisturbTimer(IIIILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
