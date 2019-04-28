.class public Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;
.super Lcom/rockrobo/xmplugin/RRBaseActivity;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MSG_MAP:I = 0x4

.field public static final MSG_MAP_FAIL:I = 0x5

.field public static final MSG_MAP_NAME:I = 0x2

.field public static final MSG_MAP_NAME_FAIL:I = 0x3

.field public static final ROBOROCK_CURRENT_CLEAN_HISTORY_ITEM_FILE_PREFIX:Ljava/lang/String; = "roborock.sapphire.current_clean_history_item."


# instance fields
.field private areaView:Landroid/widget/TextView;

.field private cleanEndDescTextView:Landroid/widget/TextView;

.field private cleanEndFlagImageView:Landroid/widget/ImageView;

.field private mapDataManager:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;

.field private mapNamesRetriever:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;

.field private mapProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

.field private mapRetriever:Lcom/rockrobo/map/CleanHistoryMapRetriever;

.field private mapRetry:Z

.field private mapShareBuilder:Lcom/rockrobo/map/MapShareBuilder;

.field private mapView:Lcom/rockrobo/map/MapViewI;

.field private retryDialog:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

.field private shareButton:Landroid/widget/ImageView;

.field private subtitleTextView:Landroid/widget/TextView;

.field private timeView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/rockrobo/xmplugin/RRBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapShareBuilder:Lcom/rockrobo/map/MapShareBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapRetry:Z

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapRetry:Z

    return p0
.end method

.method static synthetic access$002(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapRetry:Z

    return p1
.end method

.method static synthetic access$100(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapNamesRetriever:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;

    return-object p0
.end method

.method static synthetic access$202(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->retryDialog:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->shareButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->buttonDisabled(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)Lcom/rockrobo/map/MapShareBuilder;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapShareBuilder:Lcom/rockrobo/map/MapShareBuilder;

    return-object p0
.end method

.method static synthetic access$602(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;Lcom/rockrobo/map/MapShareBuilder;)Lcom/rockrobo/map/MapShareBuilder;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapShareBuilder:Lcom/rockrobo/map/MapShareBuilder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)Lcom/rockrobo/map/MapViewI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapView:Lcom/rockrobo/map/MapViewI;

    return-object p0
.end method

.method static synthetic access$800(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mHostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    return-object p0
.end method

.method private buttonDisabled(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const v0, 0x3ec28f5c    # 0.38f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private disableButton(Landroid/widget/ImageView;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const p2, 0x3ec28f5c    # 0.38f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private disableShare()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->shareButton:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->disableButton(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private doShowCustomMapRetryDialog(Lcom/rockrobo/more/cleanhistory/ChildItem;)V
    .locals 4

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f08001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    const v2, 0x7f0600ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$1;

    invoke-direct {v3, p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$1;-><init>(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;Lcom/rockrobo/more/cleanhistory/ChildItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0600cd

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$2;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$2;-><init>(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$3;

    invoke-direct {p1, p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$3;-><init>(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->setDismissCallBack(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;->show()Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->retryDialog:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    return-void
.end method

.method private enableButton(Landroid/widget/ImageView;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->buttonDisabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private enableShare()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->shareButton:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->enableButton(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private getChildItem(I)Lcom/rockrobo/more/cleanhistory/ChildItem;
    .locals 3

    invoke-static {}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getChildItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/cleanhistory/ChildItem;

    invoke-virtual {v1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getStartTime()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleMap(Landroid/os/Message;)V
    .locals 4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/rockrobo/utils/ResultTag;

    invoke-virtual {p1}, Lcom/rockrobo/utils/ResultTag;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/map/MapInfo;

    invoke-virtual {p1}, Lcom/rockrobo/utils/ResultTag;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    sget-object v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got map! start time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->setChildItemMapInfo(Lcom/rockrobo/map/MapInfo;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    invoke-direct {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->enableShare()V

    return-void
.end method

.method private handleMapFail(Landroid/os/Message;)V
    .locals 3

    sget-object v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Got map failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/rockrobo/more/cleanhistory/MapRetrieveData;

    iget v0, p1, Lcom/rockrobo/more/cleanhistory/MapRetrieveData;->startTime:I

    invoke-direct {p0, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->getChildItem(I)Lcom/rockrobo/more/cleanhistory/ChildItem;

    move-result-object v0

    iget v1, v0, Lcom/rockrobo/more/cleanhistory/ChildItem;->failedCount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget v1, v0, Lcom/rockrobo/more/cleanhistory/ChildItem;->failedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/rockrobo/more/cleanhistory/ChildItem;->failedCount:I

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapRetriever:Lcom/rockrobo/map/CleanHistoryMapRetriever;

    iget-object v1, p1, Lcom/rockrobo/more/cleanhistory/MapRetrieveData;->mapUrl:Ljava/lang/String;

    iget p1, p1, Lcom/rockrobo/more/cleanhistory/MapRetrieveData;->startTime:I

    invoke-virtual {v0, v1, p1}, Lcom/rockrobo/map/CleanHistoryMapRetriever;->retrieve(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget p1, p1, Lcom/rockrobo/more/cleanhistory/MapRetrieveData;->startTime:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->setChildItemMapFail(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    invoke-direct {p0, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->showCustomMapRetryDialog(Lcom/rockrobo/more/cleanhistory/ChildItem;)V

    return-void
.end method

.method private handleMapName(Landroid/os/Message;)V
    .locals 5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/rockrobo/utils/ResultTag;

    invoke-virtual {p1}, Lcom/rockrobo/utils/ResultTag;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/rockrobo/utils/ResultTag;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Map name is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", start time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->getChildItem(I)Lcom/rockrobo/more/cleanhistory/ChildItem;

    move-result-object v2

    if-eqz v2, :cond_0

    iput v1, v2, Lcom/rockrobo/more/cleanhistory/ChildItem;->retriedCount:I

    iput v1, v2, Lcom/rockrobo/more/cleanhistory/ChildItem;->failedCount:I

    :cond_0
    iget-object v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapRetriever:Lcom/rockrobo/map/CleanHistoryMapRetriever;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/rockrobo/map/CleanHistoryMapRetriever;->retrieve(Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    sget-boolean v0, Lcom/rockrobo/config/TestConfig;->testMapRetryDialog:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->getChildItem(I)Lcom/rockrobo/more/cleanhistory/ChildItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->doShowCustomMapRetryDialog(Lcom/rockrobo/more/cleanhistory/ChildItem;)V

    :cond_2
    return-void
.end method

.method private handleMapNameFail(Landroid/os/Message;)V
    .locals 3

    sget-object v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map name got failed! msg obj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    return-void
.end method

.method private readCurrentCleanHistoryItem()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roborock.sapphire.current_clean_history_item."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v4}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    invoke-static {v0}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->setCurrentItemIndex(I)V

    sget-object v2, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read clean history current item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_0
    :try_start_3
    sget-object v2, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_5
    move-exception v1

    :goto_1
    :try_start_5
    sget-object v2, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    return-void

    :catch_6
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v3, "IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :goto_3
    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_4

    :catch_7
    move-exception v0

    sget-object v2, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    throw v1
.end method

.method private saveCurrentCleanHistoryItem()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roborock.sapphire.current_clean_history_item."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v4}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getCurrentItemIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget-object v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Current clean history item saved!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_0
    :try_start_3
    sget-object v2, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_5
    move-exception v1

    :goto_1
    :try_start_5
    sget-object v2, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    return-void

    :catch_6
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v3, "IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :goto_3
    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_4

    :catch_7
    move-exception v0

    sget-object v2, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    throw v1
.end method

.method private setChildItemMapFail(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->setChildItemMapInfo(Lcom/rockrobo/map/MapInfo;Ljava/lang/Integer;)V

    return-void
.end method

.method private setupMapView(Lcom/rockrobo/more/cleanhistory/ChildItem;)V
    .locals 4

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getMapInfo()Lcom/rockrobo/map/MapInfo;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Map information:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-interface {v1, v0}, Lcom/rockrobo/map/MapViewI;->setMapInfo(Lcom/rockrobo/map/MapInfo;)V

    new-instance v0, Lcom/rockrobo/common/CleanInfo;

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getCleanAreaSquareMeter()I

    move-result v1

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getCleanDuration()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/rockrobo/common/CleanInfo;-><init>(III)V

    iget-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-interface {p1, v0}, Lcom/rockrobo/map/MapViewI;->setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V

    return-void
.end method

.method private setupShareButton()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->shareButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->disableShare()V

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->shareButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$6;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$6;-><init>(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showCustomMapRetryDialog(Lcom/rockrobo/more/cleanhistory/ChildItem;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapRetry:Z

    iput v0, p1, Lcom/rockrobo/more/cleanhistory/ChildItem;->retriedCount:I

    iput v0, p1, Lcom/rockrobo/more/cleanhistory/ChildItem;->failedCount:I

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    invoke-direct {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->doShowCustomMapRetryDialog(Lcom/rockrobo/more/cleanhistory/ChildItem;)V

    return-void
.end method

.method private updateNumberView(Lcom/rockrobo/more/cleanhistory/ChildItem;)V
    .locals 4

    const-string v0, "tw"

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->getRegionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0025

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->areaView:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryItemFormatter;->formatCleanArea(Landroid/content/Context;Ljava/lang/String;Lcom/rockrobo/more/cleanhistory/ChildItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->timeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryItemFormatter;->formatWorkDuration(Lcom/rockrobo/more/cleanhistory/ChildItem;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-object v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->handleMapFail(Landroid/os/Message;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->handleMap(Landroid/os/Message;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->handleMapNameFail(Landroid/os/Message;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->handleMapName(Landroid/os/Message;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

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

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/rockrobo/xmplugin/RRBaseActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Restore saved instance state!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "child_items"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->setChildItems(Ljava/util/List;)V

    const-string v0, "current_item_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->setCurrentItemIndex(I)V

    :cond_0
    invoke-static {}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getChildItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getChildItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p1}, Lcom/rockrobo/more/CleanHistoryActivity;->buildCleanDetailFileName(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/RRFileUtils;->readObjectFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->setChildItems(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->readCurrentCleanHistoryItem()V

    :cond_2
    const p1, 0x7f080002

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->setContentView(I)V

    iget-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mHostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    const v0, 0x7f0600de

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;->setTitleBarPadding(Landroid/view/View;)V

    const p1, 0x7f06001c

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->areaView:Landroid/widget/TextView;

    const p1, 0x7f060025

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->timeView:Landroid/widget/TextView;

    const p1, 0x7f0600e1

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$4;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$4;-><init>(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getCurrentChildItem()Lcom/rockrobo/more/cleanhistory/ChildItem;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->finish()V

    :cond_3
    const v0, 0x7f0600e3

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->titleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->titleTextView:Landroid/widget/TextView;

    invoke-static {p1, p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryItemFormatter;->formatStartDate(Lcom/rockrobo/more/cleanhistory/ChildItem;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0600ca

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->subtitleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->subtitleTextView:Landroid/widget/TextView;

    invoke-static {p1, p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryItemFormatter;->formatStartTime(Lcom/rockrobo/more/cleanhistory/ChildItem;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0600e2

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->shareButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->isCNServer()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->setupShareButton()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->shareButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->cleanEndFlagImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->cleanEndFlagImageView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryItemFormatter;->getEndIconResId(Lcom/rockrobo/more/cleanhistory/ChildItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->cleanEndDescTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->cleanEndDescTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryItemFormatter;->getEndDescResId(Lcom/rockrobo/more/cleanhistory/ChildItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;

    iget-object v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-direct {v0, p0, v1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;-><init>(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)V

    iput-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapDataManager:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;

    new-instance v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;

    iget-object v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;-><init>(Lcom/rockrobo/presenter/RobotPresenterI;II)V

    iput-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapNamesRetriever:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;

    new-instance v0, Lcom/rockrobo/map/CleanHistoryMapRetriever;

    iget-object v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    iget-object v2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/rockrobo/map/CleanHistoryMapRetriever;-><init>(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapRetriever:Lcom/rockrobo/map/CleanHistoryMapRetriever;

    new-instance v0, Lcom/rockrobo/map/MapBuilder;

    new-instance v1, Lcom/rockrobo/map/MapViewHistoryResourceManager;

    invoke-direct {v1, p0}, Lcom/rockrobo/map/MapViewHistoryResourceManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/rockrobo/map/MapBuilder;-><init>(Lcom/rockrobo/map/MapViewBaseResourceManager;)V

    const v1, 0x7f06006e

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    new-instance v2, Lcom/rockrobo/ui/SurfaceMapView;

    sget-object v3, Lcom/rockrobo/map/MapUIStatus;->HISTORY:Lcom/rockrobo/map/MapUIStatus;

    invoke-direct {v2, v1, v0, v3}, Lcom/rockrobo/ui/SurfaceMapView;-><init>(Landroid/view/SurfaceView;Lcom/rockrobo/map/MapBuilder;Lcom/rockrobo/map/MapUIStatus;)V

    iput-object v2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-direct {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->updateNumberView(Lcom/rockrobo/more/cleanhistory/ChildItem;)V

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapDataManager:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;

    invoke-virtual {v0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->loadMap(Lcom/rockrobo/more/cleanhistory/ChildItem;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadMap got exception, message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Map present, setup the map view!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->setupMapView(Lcom/rockrobo/more/cleanhistory/ChildItem;)V

    invoke-direct {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->enableShare()V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$5;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$5;-><init>(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)V

    invoke-static {p0, v0, v1}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showCancellableProgressDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapProgressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    sget-object v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To get map from robot for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getStartTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapNamesRetriever:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;

    invoke-virtual {v0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;->retrieveOneMap(Lcom/rockrobo/more/cleanhistory/ChildItem;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/rockrobo/xmplugin/RRBaseActivity;->onPause()V

    invoke-virtual {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-interface {v0}, Lcom/rockrobo/map/MapViewI;->exit()V

    :cond_0
    invoke-direct {p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->saveCurrentCleanHistoryItem()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/rockrobo/xmplugin/RRBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "child_items"

    invoke-static {}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getChildItems()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "current_item_index"

    invoke-static {}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getCurrentItemIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected setChildItemMapInfo(Lcom/rockrobo/map/MapInfo;Ljava/lang/Integer;)V
    .locals 5

    invoke-static {}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getChildItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/cleanhistory/ChildItem;

    invoke-virtual {v1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getStartTime()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    if-eqz p1, :cond_1

    sget-object v2, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set map to child item with start time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getStartTime()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->setMapInfo(Lcom/rockrobo/map/MapInfo;)V

    invoke-direct {p0, v1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->setupMapView(Lcom/rockrobo/more/cleanhistory/ChildItem;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set map retrieve fail to child item with start time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getStartTime()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->setMapRetrieveFailed()V

    goto :goto_0

    :cond_2
    return-void
.end method
