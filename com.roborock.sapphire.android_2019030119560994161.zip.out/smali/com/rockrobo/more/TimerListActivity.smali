.class public Lcom/rockrobo/more/TimerListActivity;
.super Lcom/rockrobo/xmplugin/RRBaseActivity;

# interfaces
.implements Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/more/TimerListActivity$TimerAdapter;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_GET_SCENE_FAILED:I = 0x2

.field private static final MSG_GET_SCENE_SUCCESS:I = 0x1

.field private static final MSG_SET_SCENE_FAILED:I = 0x4

.field private static final MSG_SET_SCENE_SUCCESS:I = 0x3

.field public static final PLUG_TIMER_BUNDLE_NAME:Ljava/lang/String; = "bundle"


# instance fields
.field private mAdapter:Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

.field private mDid:Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;

.field private mListView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

.field private mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleBack:Landroid/view/View;

.field private mXQProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/TimerListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/TimerListActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/rockrobo/xmplugin/RRBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/more/timer/TimerCommonManager;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/TimerListActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/TimerListActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/TimerListActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/rockrobo/more/TimerListActivity;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/TimerListActivity;->mXQProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/rockrobo/more/TimerListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/TimerListActivity;->displayEmptyView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/rockrobo/more/TimerListActivity;Lcom/rockrobo/more/timer/PlugTimer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/TimerListActivity;->showTimerLastOperationFailDialog(Lcom/rockrobo/more/timer/PlugTimer;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/TimerListActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method static synthetic access$200(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/TimerListActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method static synthetic access$300(Lcom/rockrobo/more/TimerListActivity;)Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/TimerListActivity;->mListView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/more/TimerListActivity$TimerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/TimerListActivity;->mAdapter:Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/TimerListActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method static synthetic access$600(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/TimerListActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method static synthetic access$700(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/TimerListActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method static synthetic access$800(Lcom/rockrobo/more/TimerListActivity;Lcom/rockrobo/more/timer/PlugTimer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/TimerListActivity;->deleteTimer(Lcom/rockrobo/more/timer/PlugTimer;)V

    return-void
.end method

.method static synthetic access$900(Lcom/rockrobo/more/TimerListActivity;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/TimerListActivity;->checkRealTimerCount(I)Z

    move-result p0

    return p0
.end method

.method private checkRealTimerCount(I)Z
    .locals 6

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-virtual {v0}, Lcom/rockrobo/more/timer/TimerCommonManager;->getPowerTimers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v3, p1, 0x2

    if-ge v2, v3, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rockrobo/more/timer/PlugTimer;

    iget-object v5, v4, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    if-eqz v5, :cond_2

    iget-boolean v4, v4, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    if-lt v3, p1, :cond_1

    return v2

    :cond_3
    return v1
.end method

.method private deleteTimer(Lcom/rockrobo/more/timer/PlugTimer;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rockrobo/more/TimerListActivity;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0169

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setTitle(I)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00c3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rockrobo/more/TimerListActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/rockrobo/more/TimerListActivity$7;-><init>(Lcom/rockrobo/more/TimerListActivity;Lcom/rockrobo/more/timer/PlugTimer;)V

    const p1, 0x7f0a0155

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    return-void
.end method

.method private displayEmptyView()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-virtual {v0}, Lcom/rockrobo/more/timer/TimerCommonManager;->getPowerTimers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mListView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setVisibility(I)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mListView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {v0, v2}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setVisibility(I)V

    return-void
.end method

.method private initProgressDialog()V
    .locals 2

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p0}, Lcom/rockrobo/more/TimerListActivity;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mXQProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mXQProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    const v1, 0x7f0a00da

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/TimerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mXQProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method private initTitle()V
    .locals 2

    const v0, 0x7f0600e1

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/TimerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mTitleBack:Landroid/view/View;

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mTitleBack:Landroid/view/View;

    new-instance v1, Lcom/rockrobo/more/TimerListActivity$6;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/TimerListActivity$6;-><init>(Lcom/rockrobo/more/TimerListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600e3

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/TimerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0203

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private initViews()V
    .locals 3

    invoke-direct {p0}, Lcom/rockrobo/more/TimerListActivity;->initProgressDialog()V

    invoke-direct {p0}, Lcom/rockrobo/more/TimerListActivity;->initTitle()V

    const v0, 0x7f0600d9

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/TimerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    iput-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mListView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    new-instance v0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    invoke-virtual {p0}, Lcom/rockrobo/more/TimerListActivity;->activity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/more/TimerListActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-virtual {v2}, Lcom/rockrobo/more/timer/TimerCommonManager;->getPowerTimers()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;-><init>(Lcom/rockrobo/more/TimerListActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mAdapter:Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mListView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    iget-object v1, p0, Lcom/rockrobo/more/TimerListActivity;->mAdapter:Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mListView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    new-instance v1, Lcom/rockrobo/more/TimerListActivity$2;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/TimerListActivity$2;-><init>(Lcom/rockrobo/more/TimerListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setRefreshListener(Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnRefreshListener;)V

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mListView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    new-instance v1, Lcom/rockrobo/more/TimerListActivity$3;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/TimerListActivity$3;-><init>(Lcom/rockrobo/more/TimerListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mListView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    new-instance v1, Lcom/rockrobo/more/TimerListActivity$4;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/TimerListActivity$4;-><init>(Lcom/rockrobo/more/TimerListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v0}, Lcom/rockrobo/xmplugin/Device;->isOwnerMethodAdapter()Z

    move-result v0

    const v1, 0x7f0600ed

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v0}, Lcom/rockrobo/xmplugin/Device;->isFamilyMethodAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/rockrobo/more/TimerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/rockrobo/more/TimerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/rockrobo/more/TimerListActivity$5;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/TimerListActivity$5;-><init>(Lcom/rockrobo/more/TimerListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const v0, 0x7f060113

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/TimerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mEmptyView:Landroid/view/View;

    invoke-direct {p0}, Lcom/rockrobo/more/TimerListActivity;->displayEmptyView()V

    return-void
.end method

.method private showTimerLastOperationFailDialog(Lcom/rockrobo/more/timer/PlugTimer;)V
    .locals 4

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rockrobo/more/TimerListActivity;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6211\u77e5\u9053\u4e86"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    move-result-object v0

    iget v1, p1, Lcom/rockrobo/more/timer/PlugTimer;->status:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const v1, 0x7f0a01d5

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setMessage(I)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    new-instance v2, Lcom/rockrobo/more/TimerListActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/rockrobo/more/TimerListActivity$8;-><init>(Lcom/rockrobo/more/TimerListActivity;Lcom/rockrobo/more/timer/PlugTimer;)V

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/rockrobo/more/timer/PlugTimer;->status:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x7f0a01d7

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setMessage(I)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    new-instance v2, Lcom/rockrobo/more/TimerListActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/rockrobo/more/TimerListActivity$9;-><init>(Lcom/rockrobo/more/TimerListActivity;Lcom/rockrobo/more/timer/PlugTimer;)V

    :goto_0
    const p1, 0x7f0a01bc

    invoke-virtual {v0, p1, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mListView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->postRefresh()V

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mXQProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/rockrobo/more/TimerListActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a00f0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mXQProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mListView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->postRefresh()V

    goto :goto_1

    :goto_0
    :pswitch_3
    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mListView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->postRefresh()V

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mAdapter:Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-virtual {v0}, Lcom/rockrobo/more/timer/TimerCommonManager;->getPowerTimers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->updateData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mAdapter:Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    invoke-virtual {p1}, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->notifyDataSetChanged()V

    :goto_1
    invoke-direct {p0}, Lcom/rockrobo/more/TimerListActivity;->displayEmptyView()V

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/rockrobo/xmplugin/RRBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f080013

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/TimerListActivity;->setContentView(I)V

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mHostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    const v0, 0x7f0600de

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/TimerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;->setTitleBarPadding(Landroid/view/View;)V

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mDid:Ljava/lang/String;

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mDid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/rockrobo/more/TimerListActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/rockrobo/more/TimerListActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p1, v0}, Lcom/rockrobo/more/timer/PlugseatTimerManagerFactory;->getPlugTimerManager(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)Lcom/rockrobo/more/timer/TimerCommonManager;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-virtual {p0}, Lcom/rockrobo/more/TimerListActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/TimerListActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p1, v0, v1}, Lcom/rockrobo/more/timer/TimerCommonManager;->setDevice(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)V

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-virtual {p1, p0}, Lcom/rockrobo/more/timer/TimerCommonManager;->registerListener(Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/timer/TimerCommonManager;->setPresenter(Lcom/rockrobo/presenter/RobotPresenterI;)V

    invoke-direct {p0}, Lcom/rockrobo/more/TimerListActivity;->initViews()V

    const p1, 0x7f0600df

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/TimerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0600e2

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/TimerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0600e1

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/TimerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/TimerListActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/TimerListActivity$1;-><init>(Lcom/rockrobo/more/TimerListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mTimerManager:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-virtual {v0, p0}, Lcom/rockrobo/more/timer/TimerCommonManager;->unRegisterListener(Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V

    :cond_0
    invoke-super {p0}, Lcom/rockrobo/xmplugin/RRBaseActivity;->onDestroy()V

    return-void
.end method

.method public onGetSceneFailed(I)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGetSceneSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/rockrobo/xmplugin/RRBaseActivity;->onResume()V

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mListView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mListView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->doRefresh()V

    :cond_0
    return-void
.end method

.method public onSetSceneFailed()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSetSceneSuccess(Lcom/rockrobo/more/timer/CommonTimer;)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
