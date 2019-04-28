.class public Lcom/rockrobo/more/ProductGuideActivity;
.super Lcom/rockrobo/more/MoreBaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;,
        Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_LOCAL_SERIAL:I = 0x2

.field private static final MSG_SCROLL:I = 0x7

.field private static final MSG_SERIAL:I = 0x0

.field private static final MSG_SERIAL_CLICK:I = 0x3

.field private static final MSG_SERIAL_CLICK_CLEAR:I = 0x4

.field private static final MSG_SERIAL_FAIL:I = 0x1

.field private static final RETRY_NUMBER:I = 0x3

.field private static final SERIAL_STATUS_FAIL:I = 0x2

.field private static final SERIAL_STATUS_IN_PROGRESS:I = 0x1

.field private static final SERIAL_STATUS_OK:I = 0x3

.field private static final SERIAL_STATUS_UNKNOWN:I = 0x1


# instance fields
.field private activityStarting:Z

.field private inflater:Landroid/view/LayoutInflater;

.field private listViewTitleIds:[I

.field private rrListItemViews:[Landroid/view/View;

.field private rrListView:Lcom/rockrobo/ui/RRListView;

.field private scrollView:Landroid/widget/ScrollView;

.field private scrollY:I

.field private serialClicked:I

.field private serialItemHolder:Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;

.field private serialRetryCnt:I

.field private serialStatus:I

.field private userImprovePlanStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/ProductGuideActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/ProductGuideActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/rockrobo/more/MoreBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialStatus:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialClicked:I

    iput-boolean v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->activityStarting:Z

    iput v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->scrollY:I

    return-void
.end method

.method static synthetic access$002(Lcom/rockrobo/more/ProductGuideActivity;I)I
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->scrollY:I

    return p1
.end method

.method static synthetic access$100(Lcom/rockrobo/more/ProductGuideActivity;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/ProductGuideActivity;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/rockrobo/more/ProductGuideActivity;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/ProductGuideActivity;->inflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/rockrobo/more/ProductGuideActivity;Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;)Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialItemHolder:Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/rockrobo/more/ProductGuideActivity;)I
    .locals 0

    iget p0, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialStatus:I

    return p0
.end method

.method static synthetic access$1300(Lcom/rockrobo/more/ProductGuideActivity;ILcom/rockrobo/more/ProductGuideActivity$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rockrobo/more/ProductGuideActivity;->setSerialNumberStatus(ILcom/rockrobo/more/ProductGuideActivity$ViewHolder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/rockrobo/more/ProductGuideActivity;)Lcom/rockrobo/presenter/URLPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/ProductGuideActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/ProductGuideActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/rockrobo/more/ProductGuideActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/ProductGuideActivity;->activityStarting:Z

    return p0
.end method

.method static synthetic access$502(Lcom/rockrobo/more/ProductGuideActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->activityStarting:Z

    return p1
.end method

.method static synthetic access$600(Lcom/rockrobo/more/ProductGuideActivity;)[I
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/ProductGuideActivity;->listViewTitleIds:[I

    return-object p0
.end method

.method static synthetic access$700(Lcom/rockrobo/more/ProductGuideActivity;)Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/ProductGuideActivity;->mHostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/rockrobo/more/ProductGuideActivity;)Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/ProductGuideActivity;->mHostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/rockrobo/more/ProductGuideActivity;)[Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/ProductGuideActivity;->rrListItemViews:[Landroid/view/View;

    return-object p0
.end method

.method private createListView()V
    .locals 3

    const v0, 0x7f06004e

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/ProductGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/ui/RRListView;

    iput-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->rrListView:Lcom/rockrobo/ui/RRListView;

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->rrListView:Lcom/rockrobo/ui/RRListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/RRListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->rrListView:Lcom/rockrobo/ui/RRListView;

    new-instance v1, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;-><init>(Lcom/rockrobo/more/ProductGuideActivity;Lcom/rockrobo/more/ProductGuideActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/RRListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->rrListView:Lcom/rockrobo/ui/RRListView;

    new-instance v1, Lcom/rockrobo/more/ProductGuideActivity$2;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/ProductGuideActivity$2;-><init>(Lcom/rockrobo/more/ProductGuideActivity;)V

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/RRListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->rrListView:Lcom/rockrobo/ui/RRListView;

    new-instance v1, Lcom/rockrobo/more/ProductGuideActivity$3;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/ProductGuideActivity$3;-><init>(Lcom/rockrobo/more/ProductGuideActivity;)V

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/RRListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private handleSerialNoClick()V
    .locals 4

    iget v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialClicked:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialClicked:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialClicked:I

    iget v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialClicked:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getApiLevel()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin model:roborock.vacuum.e2, version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/more/ProductGuideActivity;->pluginPackage()Lcom/xiaomi/plugin/core/XmPluginPackage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/plugin/core/XmPluginPackage;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "plugin model:roborock.vacuum.e2, version: unknown (plugin api level < 6)"

    :goto_0
    invoke-virtual {p0}, Lcom/rockrobo/more/ProductGuideActivity;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_2
    iget v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialClicked:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    invoke-static {p0}, Lcom/rockrobo/utils/PreferenceUtils;->clearAll(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/rockrobo/more/ProductGuideActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Cache cleared!"

    invoke-static {v0, v1, v3}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_3
    iget v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialClicked:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialItemHolder:Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;

    invoke-direct {p0, v0}, Lcom/rockrobo/more/ProductGuideActivity;->serialNumberProgress(Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;)V

    iput v1, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialStatus:I

    iput v3, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialRetryCnt:I

    invoke-direct {p0}, Lcom/rockrobo/more/ProductGuideActivity;->loadSerialNo()V

    iput v3, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialClicked:I

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    return-void
.end method

.method private hideSerialViews(Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->valueDisplay:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p1, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private loadSerialNo()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadSerialNo(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private notifyListDataChanged()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->rrListView:Lcom/rockrobo/ui/RRListView;

    invoke-virtual {v0}, Lcom/rockrobo/ui/RRListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private serialNumberDisplay(Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->valueDisplay:Landroid/widget/TextView;

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->valueDisplay:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p1, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private serialNumberFail(Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->valueDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->valueDisplay:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p1, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private serialNumberProgress(Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->valueDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->valueDisplay:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p1, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private setSerialNumberStatus(ILcom/rockrobo/more/ProductGuideActivity$ViewHolder;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p2}, Lcom/rockrobo/more/ProductGuideActivity;->hideSerialViews(Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/rockrobo/more/ProductGuideActivity;->serialNumberDisplay(Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/rockrobo/more/ProductGuideActivity;->serialNumberFail(Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/rockrobo/more/ProductGuideActivity;->serialNumberProgress(Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shouldDisplayRobotInfo()Z
    .locals 2

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getAccountId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1087907158"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1122573273"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "13065128"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "213939882"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "roborock.sweeper.e2v3"

    const-string v1, "roborock.vacuum.e2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getActivityTitle()I
    .locals 1

    const v0, 0x7f0a018d

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f08000c

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p0}, Lcom/rockrobo/more/ProductGuideActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iput v2, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialClicked:I

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/rockrobo/more/ProductGuideActivity;->handleSerialNoClick()V

    return-void

    :pswitch_2
    iget p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialRetryCnt:I

    if-ge p1, v1, :cond_1

    invoke-direct {p0}, Lcom/rockrobo/more/ProductGuideActivity;->loadSerialNo()V

    iget p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialRetryCnt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialRetryCnt:I

    return-void

    :cond_1
    const/4 p1, 0x2

    iput p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialStatus:I

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialItemHolder:Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;

    invoke-direct {p0, p1}, Lcom/rockrobo/more/ProductGuideActivity;->serialNumberFail(Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;)V

    iput v2, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialRetryCnt:I

    return-void

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/rockrobo/common/RobotInfo;->setSerialNo(Ljava/lang/String;)V

    iput v2, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialRetryCnt:I

    :pswitch_4
    iput v1, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialStatus:I

    sget-object p1, Lcom/rockrobo/more/ProductGuideActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got serialNO:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialItemHolder:Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialItemHolder:Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;

    invoke-direct {p0, p1}, Lcom/rockrobo/more/ProductGuideActivity;->serialNumberDisplay(Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->scrollView:Landroid/widget/ScrollView;

    iget v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->scrollY:I

    invoke-virtual {p1, v2, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/more/ProductGuideActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->readUserImprovePlanStatus(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->userImprovePlanStatus:Ljava/lang/String;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->inflater:Landroid/view/LayoutInflater;

    const p1, 0x7f060105

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/ProductGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/ProductGuideActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/ProductGuideActivity$1;-><init>(Lcom/rockrobo/more/ProductGuideActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f060030

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/ProductGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->isShared()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/rockrobo/more/productguide/ProductGuideConstants;->SharedTitleIds:[I

    :goto_0
    iput-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->listViewTitleIds:[I

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/rockrobo/more/productguide/ProductGuideConstants;->TitleIds:[I

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/rockrobo/more/ProductGuideActivity;->shouldDisplayRobotInfo()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->listViewTitleIds:[I

    array-length p1, p1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    new-array p1, p1, [I

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/rockrobo/more/ProductGuideActivity;->listViewTitleIds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/rockrobo/more/ProductGuideActivity;->listViewTitleIds:[I

    aget v3, v3, v2

    aput v3, p1, v2

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/rockrobo/more/ProductGuideActivity;->listViewTitleIds:[I

    aget v4, v4, v2

    aput v4, p1, v3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const v2, 0x7f0a014c

    aput v2, p1, v1

    iput-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->listViewTitleIds:[I

    :cond_3
    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->listViewTitleIds:[I

    array-length p1, p1

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->rrListItemViews:[Landroid/view/View;

    invoke-direct {p0}, Lcom/rockrobo/more/ProductGuideActivity;->createListView()V

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getSerialNo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "serial_number_"

    iget-object v1, p0, Lcom/rockrobo/more/ProductGuideActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p1, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/rockrobo/common/RobotInfo;->setSerialNo(Ljava/lang/String;)V

    sget-object p1, Lcom/rockrobo/more/ProductGuideActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got serialNo number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getSerialNo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iput v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->serialRetryCnt:I

    invoke-direct {p0}, Lcom/rockrobo/more/ProductGuideActivity;->loadSerialNo()V

    :cond_4
    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getSerialNo()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-virtual {p0}, Lcom/rockrobo/more/ProductGuideActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "serial_number_"

    iget-object v1, p0, Lcom/rockrobo/more/ProductGuideActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/rockrobo/more/ProductGuideActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Save serialNo number OK!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/rockrobo/more/ProductGuideActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user improve plan status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/more/ProductGuideActivity;->userImprovePlanStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v1, p0, Lcom/rockrobo/more/ProductGuideActivity;->userImprovePlanStatus:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveUserImprovePlanStatus(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->activityStarting:Z

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
