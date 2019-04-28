.class public Lcom/rockrobo/more/timer/TimerCommonManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/more/timer/TimerCommonManager$CompTimer;,
        Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_PLUG_TIMER:Ljava/lang/String; = "action.add.plug.timer"

.field public static final COMMON_TIMER_SETTING:Ljava/lang/String; = "common.setting"

.field private static final ENABLE_PUSH:Ljava/lang/String; = "enable_push"

.field private static final ENABLE_TIMER:Ljava/lang/String; = "enable_timer"

.field private static final ENABLE_TIMER_ON:Ljava/lang/String; = "enable_timer_on"

.field private static final IDENTIFY:Ljava/lang/String; = "identify"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final ON_METHOD:Ljava/lang/String; = "on_method"

.field public static final ON_PARAM:Ljava/lang/String; = "on_param"

.field private static final ON_TIME:Ljava/lang/String; = "on_time"

.field public static final PLUG_TIMER:Ljava/lang/String; = "plug.timer"

.field public static final PLUG_TIMER_SHARED_PREFS:Ljava/lang/String; = "plug.timer.shared.prefs"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final TIMER_DISPLAY_NAME:Ljava/lang/String; = "name"

.field private static final US_ID:Ljava/lang/String; = "usId"

.field private static sTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;


# instance fields
.field private mCommonTimer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rockrobo/more/timer/CommonTimer;",
            ">;"
        }
    .end annotation
.end field

.field private mCommonTimerUpdate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rockrobo/more/timer/CommonTimer;",
            ">;"
        }
    .end annotation
.end field

.field private mDevice:Lcom/rockrobo/xmplugin/Device;

.field private mIsLoading:Z

.field private mPlugSceneListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private presenter:Lcom/rockrobo/presenter/RobotPresenterI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/timer/TimerCommonManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mIsLoading:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimer:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mPlugSceneListeners:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimer:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/timer/TimerCommonManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/rockrobo/more/timer/TimerCommonManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/rockrobo/more/timer/TimerCommonManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mPlugSceneListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/rockrobo/more/timer/TimerCommonManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimer:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/rockrobo/more/timer/TimerCommonManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/rockrobo/more/timer/TimerCommonManager;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/timer/TimerCommonManager;->sTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/timer/TimerCommonManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/rockrobo/more/timer/TimerCommonManager;->sTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    :cond_0
    sget-object p0, Lcom/rockrobo/more/timer/TimerCommonManager;->sTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    return-object p0
.end method

.method private reNormalizeTimerEnable(Lcom/rockrobo/more/timer/PlugTimer;)V
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-boolean v1, p1, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v1, v1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v1, v1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    mul-int/lit8 v1, v1, 0x3c

    iget-object v2, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v2, v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    add-int/2addr v1, v2

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-gt v1, v2, :cond_0

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    :cond_0
    iget-object v1, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    iget-object p1, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    :cond_1
    return-void
.end method


# virtual methods
.method public deleteTimer(Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockrobo/more/timer/CommonTimer;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p1, Lcom/rockrobo/more/timer/PlugTimer;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, p2}, Lcom/rockrobo/more/timer/TimerCommonManager;->deleteTimerScene(Lcom/rockrobo/more/timer/CommonTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V

    :cond_3
    return-void
.end method

.method public deleteTimerScene(Lcom/rockrobo/more/timer/CommonTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V
    .locals 3

    sget-object v0, Lcom/rockrobo/more/timer/TimerCommonManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "delete Timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mIsLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mIsLoading:Z

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->presenter:Lcom/rockrobo/presenter/RobotPresenterI;

    iget-object v1, p1, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;

    new-instance v2, Lcom/rockrobo/more/timer/TimerCommonManager$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/rockrobo/more/timer/TimerCommonManager$3;-><init>(Lcom/rockrobo/more/timer/TimerCommonManager;Lcom/rockrobo/more/timer/CommonTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->deleteTimer(Ljava/lang/String;Lcom/xiaomi/smarthome/device/api/Callback;)V

    return-void
.end method

.method public enableTimer(Lcom/rockrobo/more/timer/PlugTimer;ZLcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/timer/TimerCommonManager;->reNormalizeTimerEnable(Lcom/rockrobo/more/timer/PlugTimer;)V

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/rockrobo/more/timer/TimerCommonManager;->updateTimer(Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V

    return-void
.end method

.method public getPowerTimers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/timer/PlugTimer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimer:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockrobo/more/timer/CommonTimer;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/rockrobo/more/timer/CommonTimer;->toPlugTimer(Lcom/rockrobo/more/timer/CommonTimer;)Lcom/rockrobo/more/timer/PlugTimer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getScene()V
    .locals 3

    iget-boolean v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mIsLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mIsLoading:Z

    sget-object v0, Lcom/rockrobo/more/timer/TimerCommonManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getScene start:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->presenter:Lcom/rockrobo/presenter/RobotPresenterI;

    new-instance v1, Lcom/rockrobo/more/timer/TimerCommonManager$1;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/timer/TimerCommonManager$1;-><init>(Lcom/rockrobo/more/timer/TimerCommonManager;)V

    new-instance v2, Lcom/rockrobo/more/timer/TimerCommonManager$2;

    invoke-direct {v2, p0}, Lcom/rockrobo/more/timer/TimerCommonManager$2;-><init>(Lcom/rockrobo/more/timer/TimerCommonManager;)V

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadTimers(Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mIsLoading:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public isTimerAlreadyExist(Lcom/rockrobo/more/timer/PlugTimer;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/timer/CommonTimer;

    if-eqz p2, :cond_0

    iget-object v1, v1, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object v2, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v1, v2}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public jsonToTimer(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/timer/CommonTimer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "setting"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/rockrobo/more/timer/CommonTimer;

    invoke-direct {v4}, Lcom/rockrobo/more/timer/CommonTimer;-><init>()V

    const-string v5, "usId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/rockrobo/more/timer/CommonTimer;->usId:I

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;

    const-string v5, "enable_push"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/rockrobo/more/timer/CommonTimer;->enablePush:Z

    const-string v5, "enable_timer"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/rockrobo/more/timer/CommonTimer;->enable:Z

    const-string v5, "enable_timer_on"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/rockrobo/more/timer/CommonTimer;->on:Z

    const-string v5, "on_method"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/rockrobo/more/timer/CommonTimer;->onMethod:Ljava/lang/String;

    const-string v5, "on_param"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/rockrobo/common/CleanMode;->valueOf(I)Lcom/rockrobo/common/CleanMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rockrobo/more/timer/CommonTimer;->setCleanMode(Lcom/rockrobo/common/CleanMode;)V

    const-string v5, "on_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rockrobo/more/timer/CronTabUtils;->getCronTabParamPlug(Ljava/lang/String;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object v5

    iput-object v5, v4, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object v5, v4, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    if-nez v5, :cond_0

    new-instance v5, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-direct {v5}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;-><init>()V

    :goto_1
    iput-object v5, v4, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    goto :goto_2

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    iget-object v7, v4, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-static {v6, v5, v7}, Lcom/rockrobo/more/timer/CronTabUtils;->convertCronTabByTimeZone(Ljava/util/TimeZone;Ljava/util/TimeZone;Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object v5

    goto :goto_1

    :goto_2
    const-string v5, "status"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v4, Lcom/rockrobo/more/timer/CommonTimer;->status:I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public parseCommonTimers(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/timer/CommonTimer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/rockrobo/more/timer/TimerCommonManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timer json object:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/rockrobo/common/CleanMode;->valueOf(I)Lcom/rockrobo/common/CleanMode;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :try_start_2
    sget-object v4, Lcom/rockrobo/more/timer/TimerCommonManager;->LOG_TAG:Ljava/lang/String;

    const-string v10, "method param is not a integer for old mDevice"

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/rockrobo/common/CleanMode;->NONE:Lcom/rockrobo/common/CleanMode;

    :goto_1
    new-instance v10, Lcom/rockrobo/more/timer/CommonTimer;

    invoke-direct {v10}, Lcom/rockrobo/more/timer/CommonTimer;-><init>()V

    iput v6, v10, Lcom/rockrobo/more/timer/CommonTimer;->usId:I

    iput-object v5, v10, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;

    iput-boolean v2, v10, Lcom/rockrobo/more/timer/CommonTimer;->enablePush:Z

    const-string v5, "on"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v10, Lcom/rockrobo/more/timer/CommonTimer;->enable:Z

    iput-boolean v6, v10, Lcom/rockrobo/more/timer/CommonTimer;->on:Z

    iput-object v9, v10, Lcom/rockrobo/more/timer/CommonTimer;->onMethod:Ljava/lang/String;

    invoke-virtual {v10, v4}, Lcom/rockrobo/more/timer/CommonTimer;->setCleanMode(Lcom/rockrobo/common/CleanMode;)V

    invoke-static {v8}, Lcom/rockrobo/more/timer/CronTabUtils;->getCronTabParamPlug(Ljava/lang/String;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object v4

    iput-object v4, v10, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object v4, v10, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    if-nez v4, :cond_0

    new-instance v4, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-direct {v4}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;-><init>()V

    :goto_2
    iput-object v4, v10, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    goto :goto_3

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    iget-object v6, v10, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-static {v5, v4, v6}, Lcom/rockrobo/more/timer/CronTabUtils;->convertCronTabByTimeZone(Ljava/util/TimeZone;Ljava/util/TimeZone;Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object v4

    goto :goto_2

    :goto_3
    iput v2, v10, Lcom/rockrobo/more/timer/CommonTimer;->status:I

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    new-instance p1, Lcom/rockrobo/more/timer/TimerCommonManager$CompTimer;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/rockrobo/more/timer/TimerCommonManager$CompTimer;-><init>(Lcom/rockrobo/more/timer/TimerCommonManager;Lcom/rockrobo/more/timer/TimerCommonManager$1;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public parseTimers(Lorg/json/JSONObject;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/TimerCommonManager;->parseCommonTimers(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public readSharedPrefs()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "common.setting"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/rockrobo/more/timer/TimerCommonManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "readSharedPrefs reading :"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/timer/TimerCommonManager;->jsonToTimer(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/rockrobo/more/timer/TimerCommonManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "readSharedPrefs failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mPlugSceneListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;

    invoke-interface {v1}, Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;->onGetSceneSuccess()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public registerListener(Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mPlugSceneListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mPlugSceneListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setDevice(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/rockrobo/more/timer/TimerCommonManager;->setDevice(Lcom/rockrobo/xmplugin/Device;Landroid/content/Context;)V

    return-void
.end method

.method public setDevice(Lcom/rockrobo/xmplugin/Device;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimer:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "plug.timer.shared.prefs"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    :try_start_0
    invoke-virtual {p0}, Lcom/rockrobo/more/timer/TimerCommonManager;->readSharedPrefs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setPresenter(Lcom/rockrobo/presenter/RobotPresenterI;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->presenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-void
.end method

.method public setScene(Lcom/rockrobo/more/timer/CommonTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/PlugTimer;)V
    .locals 1

    iget-boolean p3, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mIsLoading:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mIsLoading:Z

    sget-object p3, Lcom/rockrobo/more/timer/TimerCommonManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "setScene start:"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->presenter:Lcom/rockrobo/presenter/RobotPresenterI;

    new-instance v0, Lcom/rockrobo/more/timer/TimerCommonManager$4;

    invoke-direct {v0, p0, p1, p4, p2}, Lcom/rockrobo/more/timer/TimerCommonManager$4;-><init>(Lcom/rockrobo/more/timer/TimerCommonManager;Lcom/rockrobo/more/timer/CommonTimer;Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V

    invoke-interface {p3, p1, v0}, Lcom/rockrobo/presenter/RobotPresenterI;->setTimer(Lcom/rockrobo/more/timer/CommonTimer;Lcom/xiaomi/smarthome/device/api/Callback;)V

    return-void
.end method

.method public setTimer(Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockrobo/more/timer/CommonTimer;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lcom/rockrobo/more/timer/PlugTimer;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v4, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/rockrobo/more/timer/CommonTimer;->toCommonTimer(Lcom/rockrobo/more/timer/PlugTimer;)Lcom/rockrobo/more/timer/CommonTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/rockrobo/more/timer/TimerCommonManager;->setScene(Lcom/rockrobo/more/timer/CommonTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/PlugTimer;)V

    return-void
.end method

.method public timersToJson()Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rockrobo/more/timer/CommonTimer;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "usId"

    iget v6, v3, Lcom/rockrobo/more/timer/CommonTimer;->usId:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "identify"

    iget-object v6, v3, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "name"

    iget-object v6, v3, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "enable_push"

    iget-boolean v6, v3, Lcom/rockrobo/more/timer/CommonTimer;->enablePush:Z

    if-eqz v6, :cond_0

    const-string v6, "1"

    goto :goto_1

    :cond_0
    const-string v6, "0"

    :goto_1
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "enable_timer"

    iget-boolean v6, v3, Lcom/rockrobo/more/timer/CommonTimer;->enable:Z

    if-eqz v6, :cond_1

    const-string v6, "1"

    goto :goto_2

    :cond_1
    const-string v6, "0"

    :goto_2
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "enable_timer_on"

    iget-boolean v6, v3, Lcom/rockrobo/more/timer/CommonTimer;->on:Z

    if-eqz v6, :cond_2

    const-string v6, "1"

    goto :goto_3

    :cond_2
    const-string v6, "0"

    :goto_3
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "status"

    iget v6, v3, Lcom/rockrobo/more/timer/CommonTimer;->status:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "on_method"

    iget-object v6, v3, Lcom/rockrobo/more/timer/CommonTimer;->onMethod:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "on_param"

    invoke-virtual {v3}, Lcom/rockrobo/more/timer/CommonTimer;->getCleanMode()Lcom/rockrobo/common/CleanMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/rockrobo/common/CleanMode;->getFanPower()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "on_time"

    iget-object v3, v3, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-static {v3}, Lcom/rockrobo/more/timer/CronTabUtils;->getTimerParam(Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    const-string v2, "setting"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public unRegisterListener(Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mPlugSceneListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateScene(Lcom/rockrobo/more/timer/CommonTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;Lcom/rockrobo/more/timer/PlugTimer;)V
    .locals 2

    iget-boolean v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mIsLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mIsLoading:Z

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->presenter:Lcom/rockrobo/presenter/RobotPresenterI;

    new-instance v1, Lcom/rockrobo/more/timer/TimerCommonManager$5;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/rockrobo/more/timer/TimerCommonManager$5;-><init>(Lcom/rockrobo/more/timer/TimerCommonManager;Lcom/rockrobo/more/timer/CommonTimer;Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V

    invoke-interface {v0, p3, v1}, Lcom/rockrobo/presenter/RobotPresenterI;->updateTimer(Lcom/rockrobo/more/timer/PlugTimer;Lcom/xiaomi/smarthome/device/api/Callback;)V

    return-void
.end method

.method public updateTimer(Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockrobo/more/timer/CommonTimer;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lcom/rockrobo/more/timer/PlugTimer;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v4, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/rockrobo/more/timer/CommonTimer;->toCommonTimer(Lcom/rockrobo/more/timer/PlugTimer;)Lcom/rockrobo/more/timer/CommonTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mCommonTimerUpdate:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2, p1}, Lcom/rockrobo/more/timer/TimerCommonManager;->updateScene(Lcom/rockrobo/more/timer/CommonTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;Lcom/rockrobo/more/timer/PlugTimer;)V

    return-void
.end method

.method public writeSharedPrefs(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "common.setting"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    const-string v1, "common.setting"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
