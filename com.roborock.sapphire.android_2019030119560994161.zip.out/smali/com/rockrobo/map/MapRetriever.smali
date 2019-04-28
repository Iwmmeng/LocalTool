.class public Lcom/rockrobo/map/MapRetriever;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MAP_URL:Ljava/lang/String; = "/home/getrobomapurl"

.field public static final OBJ_NAME_KEY:Ljava/lang/String; = "obj_name"

.field public static final PAYLOAD_HEADER_OFFSET:I = 0x12


# instance fields
.field protected failMsg:I

.field protected handler:Landroid/os/Handler;

.field private objName:Ljava/lang/String;

.field protected successMsg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/map/MapRetriever;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapRetriever;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/rockrobo/map/MapRetriever;->LOG_TAG:Ljava/lang/String;

    const-string v1, "MapRetriever constructor entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/rockrobo/map/MapRetriever;->handler:Landroid/os/Handler;

    iput p2, p0, Lcom/rockrobo/map/MapRetriever;->successMsg:I

    iput p3, p0, Lcom/rockrobo/map/MapRetriever;->failMsg:I

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/map/MapRetriever;Lcom/rockrobo/map/MapInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/map/MapRetriever;->retrieveSuccess(Lcom/rockrobo/map/MapInfo;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/map/MapRetriever;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/rockrobo/map/MapRetriever;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/map/MapRetriever;->retrieveFail()V

    return-void
.end method

.method private readData(Ljava/io/InputStream;I)[B
    .locals 4

    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-eq v1, p2, :cond_1

    sub-int v2, p2, v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    sget-object p1, Lcom/rockrobo/map/MapRetriever;->LOG_TAG:Ljava/lang/String;

    const-string p2, "InputStream read failed!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private retrieveFail()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/map/MapRetriever;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/rockrobo/map/MapRetriever;->failMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private retrieveSuccess(Lcom/rockrobo/map/MapInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/rockrobo/map/MapRetriever;->successMsg:I

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/rockrobo/map/MapRetriever;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private validateMagic([B)Z
    .locals 4

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/16 v2, 0x52

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    aget-byte v3, p1, v1

    if-ne v2, v3, :cond_1

    const/16 v2, 0x53

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    if-ne v2, v3, :cond_1

    const/16 v2, 0x41

    const/4 v3, 0x3

    aget-byte p1, p1, v3

    if-eq v2, p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0
.end method


# virtual methods
.method protected doRetrieve(Ljava/lang/String;)Lcom/rockrobo/map/MapInfo;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "url"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/map/MapInfo;

    invoke-direct {v0}, Lcom/rockrobo/map/MapInfo;-><init>()V

    sget-object v1, Lcom/rockrobo/map/MapRetriever;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Map download url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v0}, Lcom/rockrobo/map/MapRetriever;->downloadMap(Ljava/lang/String;Lcom/rockrobo/map/MapInfo;)[B

    move-result-object p1

    new-instance v1, Lcom/rockrobo/map/MapDataParserV1;

    invoke-direct {v1}, Lcom/rockrobo/map/MapDataParserV1;-><init>()V

    invoke-interface {v1, v0, p1}, Lcom/rockrobo/map/MapDataParserI;->parse(Lcom/rockrobo/map/MapInfo;[B)V

    return-object v0
.end method

.method downloadMap(Ljava/lang/String;Lcom/rockrobo/map/MapInfo;)[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0xbb8

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x4

    :try_start_2
    invoke-direct {p0, v1, v0}, Lcom/rockrobo/map/MapRetriever;->readData(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/rockrobo/map/MapRetriever;->validateMagic([B)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-static {v2, v4}, Lcom/rockrobo/utils/RRUtils;->getInt4Byte([BI)I

    move-result p2

    new-instance v0, Lcom/rockrobo/map/MapIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid map magic number!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/rockrobo/map/MapIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/rockrobo/map/MapRetriever;->readData(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-static {v3, v4}, Lcom/rockrobo/utils/RRUtils;->getInt2Byte([BI)I

    invoke-direct {p0, v1, v2}, Lcom/rockrobo/map/MapRetriever;->readData(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/rockrobo/map/MapInfo;->setCrc([B)V

    invoke-direct {p0, v1, v0}, Lcom/rockrobo/map/MapRetriever;->readData(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-static {v3, v4}, Lcom/rockrobo/utils/RRUtils;->getInt4Byte([BI)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/rockrobo/map/MapInfo;->setCleanId(I)V

    invoke-direct {p0, v1, v0}, Lcom/rockrobo/map/MapRetriever;->readData(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {v0, v4}, Lcom/rockrobo/utils/RRUtils;->getInt4Byte([BI)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/rockrobo/map/MapInfo;->setSequenceNo(I)V

    invoke-direct {p0, v1, v2}, Lcom/rockrobo/map/MapRetriever;->readData(Ljava/io/InputStream;I)[B

    move-result-object p2

    invoke-static {p2, v4}, Lcom/rockrobo/utils/RRUtils;->getInt2Byte([BI)I

    move-result p2

    add-int/lit8 v0, p2, -0x12

    sget-object v2, Lcom/rockrobo/map/MapRetriever;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",payload size:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v0}, Lcom/rockrobo/map/MapRetriever;->readData(Ljava/io/InputStream;I)[B

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance p2, Lcom/rockrobo/map/MapIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error response code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/rockrobo/map/MapIOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v1, v0

    :goto_0
    move-object v0, p1

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    goto :goto_2

    :catch_2
    move-exception p2

    move-object v1, v0

    :goto_1
    :try_start_4
    new-instance p1, Lcom/rockrobo/map/MapIOException;

    invoke-direct {p1, p2}, Lcom/rockrobo/map/MapIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p2

    move-object p1, v0

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw p2
.end method

.method public retrieve()V
    .locals 7

    :try_start_0
    sget-object v0, Lcom/rockrobo/map/MapRetriever;->LOG_TAG:Ljava/lang/String;

    const-string v1, "retrieve entry!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/map/MapRetriever;->objName:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockrobo/map/MapRetriever;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Object name is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "obj_name"

    iget-object v1, p0, Lcom/rockrobo/map/MapRetriever;->objName:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/rockrobo/map/MapRetriever;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/map/MapRetriever;->objName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v1

    const-string v2, "roborock.vacuum.e2"

    const-string v3, "/home/getrobomapurl"

    new-instance v5, Lcom/rockrobo/map/MapRetriever$1;

    invoke-direct {v5, p0}, Lcom/rockrobo/map/MapRetriever$1;-><init>(Lcom/rockrobo/map/MapRetriever;)V

    new-instance v6, Lcom/rockrobo/map/MapRetriever$2;

    invoke-direct {v6, p0}, Lcom/rockrobo/map/MapRetriever$2;-><init>(Lcom/rockrobo/map/MapRetriever;)V

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->callSmartHomeApi(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaomi/smarthome/device/api/Callback;Lcom/xiaomi/smarthome/device/api/Parser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockrobo/map/MapRetriever;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieve exception, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setObjName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/map/MapRetriever;->objName:Ljava/lang/String;

    return-void
.end method
