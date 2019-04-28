.class public Lcom/rockrobo/more/CleanHistoryActivity;
.super Lcom/rockrobo/more/MoreBaseActivity;


# static fields
.field private static final LIMIT_CLEAN_HISTORY_ITEM:I = 0x17

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_CLEAN_RECORDS:I = 0x3

.field private static final MSG_CLEAN_RECORDS_FAIL:I = -0x3

.field private static final MSG_CLEAR_MAP_DATA:I = 0x4

.field private static final MSG_CLEAR_MAP_DATA_FAIL:I = -0x4

.field private static final MSG_DETAIL:I = 0x2

.field private static final MSG_DETAIL_FAIL:I = -0x2

.field private static final MSG_SUMMARY:I = 0x1

.field private static final MSG_SUMMARY_FAIL:I = -0x1

.field private static final SAPPHIRE_CLEAN_HISTORY_FILE_PREFIX:Ljava/lang/String; = "roborock.sapphire.clean_history_items."

.field private static final SAPPHIRE_CLEAN_HISTORY_SUMMARY_SAVE_PREFIX:Ljava/lang/String; = "roborock.sapphire.clean_history_summary."


# instance fields
.field private cleanHistorySummaryData:Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;

.field private deleteProgressDlg:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

.field private emptyMsgView:Landroid/widget/TextView;

.field private listAdapter:Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;

.field private listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

.field private localeResourceManager:Lcom/rockrobo/presenter/LocaleResourceManagerI;

.field private mapDataManager:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;

.field private retrievedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private totalAreaSymbol:Landroid/widget/TextView;

.field private totalAreaView:Landroid/widget/TextView;

.field private totalDurationLabel:Landroid/widget/TextView;

.field private totalDurationNumber:Landroid/widget/TextView;

.field private totalTimesView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/CleanHistoryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/rockrobo/more/MoreBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->startTimes:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->retrievedTimes:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->deleteProgressDlg:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rockrobo/more/CleanHistoryActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$202(Lcom/rockrobo/more/CleanHistoryActivity;Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->deleteProgressDlg:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/rockrobo/more/CleanHistoryActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$400(Lcom/rockrobo/more/CleanHistoryActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$500(Lcom/rockrobo/more/CleanHistoryActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method static synthetic access$600(Lcom/rockrobo/more/CleanHistoryActivity;)Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->mHostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    return-object p0
.end method

.method private addDeleteButtonFooter(Landroid/view/LayoutInflater;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v0}, Lcom/rockrobo/xmplugin/Device;->isShared()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getChildItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f08001a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/CleanHistoryActivity$2;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/CleanHistoryActivity$2;-><init>(Lcom/rockrobo/more/CleanHistoryActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private allDetailRetrieved()Z
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->retrievedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->startTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->startTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/rockrobo/more/CleanHistoryActivity;->retrievedTimes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static buildCleanDetailFileName(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.sapphire.clean_history_items."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildCleanSummaryFileName(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.sapphire.clean_history_summary."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private filterTotalAreaDesc(JJJ)J
    .locals 3

    const-wide/16 v0, -0x1

    :try_start_0
    div-long/2addr p3, p5

    const-wide/16 p5, 0x1f4

    cmp-long v2, p3, p5

    if-lez v2, :cond_0

    const-wide/16 p3, 0x3c

    div-long/2addr p1, p3

    const-wide/16 p3, 0xa

    mul-long p1, p1, p3

    const-wide/16 p3, 0xd

    div-long/2addr p1, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :cond_0
    return-wide v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v0
.end method

.method private getIntValue(Lorg/json/JSONArray;I)I
    .locals 5

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const p1, 0x7fffffff

    return p1

    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private getRetrievedStartTimes(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/cleanhistory/ChildItem;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/cleanhistory/ChildItem;

    invoke-virtual {v1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getStartTime()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private handleDetail(Landroid/os/Message;)V
    .locals 10

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/rockrobo/utils/ResultTag;

    invoke-virtual {p1}, Lcom/rockrobo/utils/ResultTag;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    sget-object v0, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detail result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    new-instance v2, Lcom/rockrobo/more/cleanhistory/ChildItem;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/rockrobo/more/cleanhistory/ChildItem;-><init>(IIJII)V

    invoke-static {v2}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->addChildItem(Lcom/rockrobo/more/cleanhistory/ChildItem;)V

    iget-object v2, p0, Lcom/rockrobo/more/CleanHistoryActivity;->listAdapter:Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;

    invoke-virtual {v2}, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->notifyDataSetChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleSummary(Landroid/os/Message;)V
    .locals 7

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/rockrobo/more/CleanHistoryActivity;->getIntValue(Lorg/json/JSONArray;I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-int v2, v2

    sget-object v3, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "area str: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lcom/rockrobo/more/CleanHistoryActivity;->getIntValue(Lorg/json/JSONArray;I)I

    move-result v3

    new-instance v4, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;

    int-to-long v5, v2

    invoke-direct {v4, v1, v5, v6, v3}, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;-><init>(IJI)V

    iput-object v4, p0, Lcom/rockrobo/more/CleanHistoryActivity;->cleanHistorySummaryData:Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;

    iget-object v1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->cleanHistorySummaryData:Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;

    invoke-direct {p0, v1}, Lcom/rockrobo/more/CleanHistoryActivity;->setSummaryButtonText(Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;)V

    new-instance v1, Lorg/json/JSONArray;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->startTimes:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-direct {p0, v1, p1}, Lcom/rockrobo/more/CleanHistoryActivity;->getIntValue(Lorg/json/JSONArray;I)I

    move-result v2

    iget-object v3, p0, Lcom/rockrobo/more/CleanHistoryActivity;->startTimes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->retrievedTimes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->startTimes:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    sget-object p1, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got date array from robot, total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/more/CleanHistoryActivity;->startTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->startTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->clear()V

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->emptyMsgView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/rockrobo/more/CleanHistoryActivity;->postListRefresh()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->retrievedTimes:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->retainRecords(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/rockrobo/more/CleanHistoryActivity;->retrieveDetails()V

    return-void
.end method

.method private postListRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->postRefresh()V

    invoke-virtual {p0}, Lcom/rockrobo/more/CleanHistoryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/more/CleanHistoryActivity;->addDeleteButtonFooter(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method private retrieveDetails()V
    .locals 6

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->startTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/rockrobo/more/CleanHistoryActivity;->retrievedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Child item("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") already got!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/rockrobo/more/CleanHistoryActivity;->allDetailRetrieved()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/more/CleanHistoryActivity;->postListRefresh()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/rockrobo/more/CleanHistoryActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/rockrobo/presenter/RobotPresenterI;->loadCleanDetail(ILjava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/rockrobo/more/CleanHistoryActivity;->retrievedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setSummaryButtonText(Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->getTotalDurationUnit()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->totalDurationLabel:Landroid/widget/TextView;

    const v1, 0x7f0a0032

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->totalDurationLabel:Landroid/widget/TextView;

    const v1, 0x7f0a0033

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->getTotalDuration()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->getTotalArea()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->getTotalTimes()I

    move-result v0

    int-to-long v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/rockrobo/more/CleanHistoryActivity;->filterTotalAreaDesc(JJJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p1, v0, v1}, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->setTotalArea(J)V

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->totalDurationNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->getTotalDurationDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->totalAreaView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->getTotalAreaDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->totalTimesView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->getTotalTimesDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getActivityTitle()I
    .locals 1

    const v0, 0x7f0a0019

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f080001

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-object v0, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/rockrobo/more/CleanHistoryActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->emptyMsgView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->deleteProgressDlg:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/rockrobo/more/CleanHistoryActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a01b0

    invoke-static {p1, v0, v1}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->doRefresh()V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/rockrobo/more/CleanHistoryActivity;->handleDetail(Landroid/os/Message;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/rockrobo/more/CleanHistoryActivity;->handleSummary(Landroid/os/Message;)V

    return-void

    :pswitch_4
    invoke-virtual {p0}, Lcom/rockrobo/more/CleanHistoryActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rockrobo/utils/RRUtils;->toastNetFail(Landroid/app/Activity;I)V

    invoke-static {}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getChildItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->emptyMsgView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/rockrobo/more/CleanHistoryActivity;->postListRefresh()V

    return-void

    :goto_1
    :pswitch_5
    invoke-direct {p0}, Lcom/rockrobo/more/CleanHistoryActivity;->allDetailRetrieved()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->deleteProgressDlg:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/rockrobo/more/CleanHistoryActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a01af

    invoke-static {p1, v0, v1}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    return-void

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException! msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :pswitch_7
    return-void

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onCreate entry!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f06001d

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/CleanHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->totalAreaView:Landroid/widget/TextView;

    const p1, 0x7f06001e

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/CleanHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->totalAreaSymbol:Landroid/widget/TextView;

    const-string p1, "tw"

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->getRegionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f0a002f

    if-eqz p1, :cond_1

    sget-object p1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/rockrobo/more/CleanHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->totalAreaSymbol:Landroid/widget/TextView;

    const v0, 0x7f0a0030

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->totalAreaSymbol:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/rockrobo/more/CleanHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->totalAreaSymbol:Landroid/widget/TextView;

    const v0, 0x7f0a002e

    goto :goto_0

    :goto_1
    const p1, 0x7f060026

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/CleanHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->totalTimesView:Landroid/widget/TextView;

    const p1, 0x7f060021

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/CleanHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->totalDurationNumber:Landroid/widget/TextView;

    const p1, 0x7f060020

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/CleanHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->totalDurationLabel:Landroid/widget/TextView;

    const p1, 0x7f06003d

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/CleanHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->emptyMsgView:Landroid/widget/TextView;

    const p1, 0x7f060024

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/CleanHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {p0}, Lcom/rockrobo/more/CleanHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setDividerHeight(I)V

    new-instance p1, Lcom/rockrobo/presenter/DBLocaleResourceManager;

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-direct {p1, p0, v0}, Lcom/rockrobo/presenter/DBLocaleResourceManager;-><init>(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)V

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->localeResourceManager:Lcom/rockrobo/presenter/LocaleResourceManagerI;

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->localeResourceManager:Lcom/rockrobo/presenter/LocaleResourceManagerI;

    invoke-interface {p1}, Lcom/rockrobo/presenter/LocaleResourceManagerI;->readCleanHistorySummary()Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->cleanHistorySummaryData:Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->cleanHistorySummaryData:Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;

    invoke-direct {p0, p1}, Lcom/rockrobo/more/CleanHistoryActivity;->setSummaryButtonText(Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;)V

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->localeResourceManager:Lcom/rockrobo/presenter/LocaleResourceManagerI;

    invoke-interface {p1}, Lcom/rockrobo/presenter/LocaleResourceManagerI;->readCleanHistoryDetail()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :cond_2
    invoke-static {p1}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->setChildItems(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/rockrobo/more/CleanHistoryActivity;->getRetrievedStartTimes(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->retrievedTimes:Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;-><init>(Lcom/rockrobo/more/CleanHistoryActivity;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->listAdapter:Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->listAdapter:Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-direct {p1, p0, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;-><init>(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)V

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->mapDataManager:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;

    sget-object p1, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Set refresh listener!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    new-instance v0, Lcom/rockrobo/more/CleanHistoryActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/CleanHistoryActivity$1;-><init>(Lcom/rockrobo/more/CleanHistoryActivity;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setRefreshListener(Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnRefreshListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->doRefresh()V

    sget-object p1, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onCreate end!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onResume()V

    sget-object v0, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume entry!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->cleanHistorySummaryData:Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0}, Lcom/rockrobo/more/CleanHistoryActivity;->buildCleanSummaryFileName(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/rockrobo/utils/RRFileUtils;->readObjectFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;

    iput-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->cleanHistorySummaryData:Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->cleanHistorySummaryData:Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;

    invoke-direct {p0, v0}, Lcom/rockrobo/more/CleanHistoryActivity;->setSummaryButtonText(Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;)V

    :cond_0
    sget-object v0, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume end!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onStop()V

    invoke-virtual {p0}, Lcom/rockrobo/more/CleanHistoryActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->localeResourceManager:Lcom/rockrobo/presenter/LocaleResourceManagerI;

    iget-object v1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->cleanHistorySummaryData:Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;

    invoke-interface {v0, v1}, Lcom/rockrobo/presenter/LocaleResourceManagerI;->saveCleanHistorySummary(Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;)V

    invoke-static {}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getChildItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/rockrobo/more/CleanHistoryActivity;->localeResourceManager:Lcom/rockrobo/presenter/LocaleResourceManagerI;

    invoke-interface {v1, v0}, Lcom/rockrobo/presenter/LocaleResourceManagerI;->saveCleanHistoryDetail(Ljava/util/List;)V

    sget-object v1, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " items!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->localeResourceManager:Lcom/rockrobo/presenter/LocaleResourceManagerI;

    invoke-interface {v0}, Lcom/rockrobo/presenter/LocaleResourceManagerI;->exit()V

    :cond_1
    sget-object v0, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "To save map!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity;->mapDataManager:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;

    invoke-static {}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getChildItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->storeMaps(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/CleanHistoryActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StoreMaps got IOException,message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
