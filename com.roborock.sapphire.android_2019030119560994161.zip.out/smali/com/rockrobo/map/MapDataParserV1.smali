.class public Lcom/rockrobo/map/MapDataParserV1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rockrobo/map/MapDataParserI;


# static fields
.field public static final CHARGER_LOCATION_NONE:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final TYPE_CHARGER:I = 0x1

.field public static final TYPE_LOCATION:I = 0x2

.field public static final TYPE_MAP:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/map/MapDataParserV1;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapDataParserV1;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseChargerInfo(Lcom/rockrobo/map/MapInfo;[BI)I
    .locals 7

    invoke-static {p2, p3}, Lcom/rockrobo/utils/RRUtils;->getInt4Byte([BI)I

    move-result v0

    add-int/lit8 p3, p3, 0x4

    sget-object v1, Lcom/rockrobo/map/MapDataParserV1;->LOG_TAG:Ljava/lang/String;

    const-string v2, "charger x:%1$d(%1$x)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p3}, Lcom/rockrobo/utils/RRUtils;->getInt4Byte([BI)I

    move-result p2

    add-int/lit8 p3, p3, 0x4

    sget-object v1, Lcom/rockrobo/map/MapDataParserV1;->LOG_TAG:Ljava/lang/String;

    const-string v2, "charger y:%1$d(%1$x)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/rockrobo/map/MapInfo;->setChargerX(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/rockrobo/map/MapInfo;->setChargerX(I)V

    :goto_1
    invoke-virtual {p1, p2}, Lcom/rockrobo/map/MapInfo;->setChargerY(I)V

    return p3
.end method

.method private parseMap(Lcom/rockrobo/map/MapInfo;[BI)I
    .locals 10

    :try_start_0
    invoke-static {p2, p3}, Lcom/rockrobo/utils/RRUtils;->getInt1Byte([BI)I

    move-result v0

    add-int/lit8 p3, p3, 0x1

    sget-object v1, Lcom/rockrobo/map/MapDataParserV1;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map data, ver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p3}, Lcom/rockrobo/utils/RRUtils;->getInt1Byte([BI)I

    move-result v0

    add-int/lit8 p3, p3, 0x1

    sget-object v1, Lcom/rockrobo/map/MapDataParserV1;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map data, compress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p3}, Lcom/rockrobo/utils/RRUtils;->getInt1Byte([BI)I

    move-result v0

    add-int/lit8 p3, p3, 0x1

    sget-object v1, Lcom/rockrobo/map/MapDataParserV1;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v4, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-static {p2, v4}, Lcom/rockrobo/utils/RRUtils;->getInt1Byte([BI)I

    move-result v5

    aput v5, v1, v3

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/rockrobo/map/MapDataParserV1;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, 0x32

    invoke-static {p2, p3}, Lcom/rockrobo/utils/RRUtils;->getInt2Byte([BI)I

    move-result v3

    add-int/lit8 p3, p3, 0x2

    sget-object v4, Lcom/rockrobo/map/MapDataParserV1;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x27d9

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move v4, p3

    const/4 p3, 0x0

    :goto_1
    if-ge p3, v0, :cond_2

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    aget v7, v1, p3

    invoke-direct {v6, p2, v4, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v6, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;

    invoke-direct {v6, v5}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    const/4 v7, 0x0

    :goto_2
    const/4 v8, -0x1

    invoke-virtual {v6, v5}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->read([B)I

    move-result v9

    if-eq v8, v9, :cond_1

    invoke-virtual {v3, v5, v2, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v7, v9

    goto :goto_2

    :cond_1
    sget-object v5, Lcom/rockrobo/map/MapDataParserV1;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data block "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v5, v1, p3

    add-int/2addr v4, v5

    invoke-virtual {v6}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->close()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    sget-object p3, Lcom/rockrobo/map/MapDataParserV1;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size of decompressed data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Lcom/rockrobo/map/MapInfo;->setMapData([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    sget-object p2, Lcom/rockrobo/map/MapDataParserV1;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got IOException:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/rockrobo/map/MapIOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got IOException when decompress lz4 map data! "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/rockrobo/map/MapIOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private parseRobotInfo(Lcom/rockrobo/map/MapInfo;[BI)I
    .locals 4

    invoke-static {p2, p3}, Lcom/rockrobo/utils/RRUtils;->getInt4Byte([BI)I

    move-result v0

    add-int/lit8 p3, p3, 0x4

    sget-object v1, Lcom/rockrobo/map/MapDataParserV1;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "robot x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p3}, Lcom/rockrobo/utils/RRUtils;->getInt4Byte([BI)I

    move-result p2

    add-int/lit8 p3, p3, 0x4

    sget-object v1, Lcom/rockrobo/map/MapDataParserV1;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "robot y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Lcom/rockrobo/map/MapInfo;->setRobotX(I)V

    invoke-virtual {p1, p2}, Lcom/rockrobo/map/MapInfo;->setRobotY(I)V

    return p3
.end method


# virtual methods
.method public parse(Lcom/rockrobo/map/MapInfo;[B)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    invoke-static {p2, v0}, Lcom/rockrobo/utils/RRUtils;->getInt2Byte([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Lcom/rockrobo/utils/RRUtils;->getInt2Byte([BI)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    sget-object v3, Lcom/rockrobo/map/MapDataParserV1;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "payload type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v2, v2, -0x4

    add-int/2addr v0, v2

    sget-object v2, Lcom/rockrobo/map/MapDataParserV1;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown map data type!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/rockrobo/map/MapDataParserV1;->parseMap(Lcom/rockrobo/map/MapInfo;[BI)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2, v0}, Lcom/rockrobo/map/MapDataParserV1;->parseRobotInfo(Lcom/rockrobo/map/MapInfo;[BI)I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/rockrobo/map/MapDataParserV1;->parseChargerInfo(Lcom/rockrobo/map/MapInfo;[BI)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
