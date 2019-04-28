.class public Lcom/rockrobo/map/CleanHistoryMapRetriever;
.super Lcom/rockrobo/map/MapRetriever;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/map/CleanHistoryMapRetriever;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/CleanHistoryMapRetriever;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;II)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/rockrobo/map/MapRetriever;-><init>(Landroid/os/Handler;II)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/map/CleanHistoryMapRetriever;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public retrieve(Ljava/lang/String;I)V
    .locals 8

    sget-object v0, Lcom/rockrobo/map/CleanHistoryMapRetriever;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", start time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/rockrobo/map/CleanHistoryMapRetriever;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "obj_name"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v2

    const-string v3, "roborock.vacuum.e2"

    const-string v4, "/home/getrobomapurl"

    new-instance v6, Lcom/rockrobo/map/CleanHistoryMapRetriever$1;

    invoke-direct {v6, p0, p2, p1}, Lcom/rockrobo/map/CleanHistoryMapRetriever$1;-><init>(Lcom/rockrobo/map/CleanHistoryMapRetriever;ILjava/lang/String;)V

    new-instance v7, Lcom/rockrobo/map/CleanHistoryMapRetriever$2;

    invoke-direct {v7, p0}, Lcom/rockrobo/map/CleanHistoryMapRetriever$2;-><init>(Lcom/rockrobo/map/CleanHistoryMapRetriever;)V

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->callSmartHomeApi(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/rockrobo/map/CleanHistoryMapRetriever;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Object name is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/rockrobo/map/CleanHistoryMapRetriever;->retrieveFail(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    sget-object p2, Lcom/rockrobo/map/CleanHistoryMapRetriever;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrieve exception, msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected retrieveFail(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/rockrobo/map/CleanHistoryMapRetriever;->failMsg:I

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/rockrobo/more/cleanhistory/MapRetrieveData;

    invoke-direct {v1}, Lcom/rockrobo/more/cleanhistory/MapRetrieveData;-><init>()V

    iput-object p1, v1, Lcom/rockrobo/more/cleanhistory/MapRetrieveData;->mapUrl:Ljava/lang/String;

    iput p2, v1, Lcom/rockrobo/more/cleanhistory/MapRetrieveData;->startTime:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/rockrobo/map/CleanHistoryMapRetriever;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected retrieveSuccess(Lcom/rockrobo/map/MapInfo;I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/rockrobo/map/CleanHistoryMapRetriever;->successMsg:I

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/rockrobo/utils/ResultTag;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/rockrobo/utils/ResultTag;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/rockrobo/map/CleanHistoryMapRetriever;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
