.class public Lcom/rockrobo/map/MapInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BUFFER:I = 0x3

.field public static final CHARGER_INVALID:I = -0x1

.field public static final CLEANED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAP_HEIGHT_BYTES:I = 0x65

.field private static final MAP_HEIGHT_POINTS:I = 0xca

.field private static MAP_POINT_MASK:I = 0x3

.field private static final MAP_WIDTH_BYTES:I = 0x65

.field private static final MAP_WIDTH_POINTS:I = 0xca

.field public static final MILLIMETER_PER_POINT:F = 150.0f

.field public static final OBSTACLE:I = 0x2

.field private static final POINTS_PER_BYTE:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final serialVersionUID:J = 0x7L


# instance fields
.field public bottom:I

.field private chargerLocation:[F

.field private chargerX:I

.field private chargerY:I

.field private cleanId:I

.field private crcInt:I

.field public left:I

.field private mapData:[B

.field public right:I

.field private robotLocation:[F

.field private robotX:I

.field private robotY:I

.field private sequenceNo:I

.field public top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/map/MapInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapInfo;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/map/MapInfo;->chargerLocation:[F

    iput-object v0, p0, Lcom/rockrobo/map/MapInfo;->robotLocation:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/rockrobo/map/MapInfo;->robotX:I

    iput v0, p0, Lcom/rockrobo/map/MapInfo;->robotY:I

    iput v0, p0, Lcom/rockrobo/map/MapInfo;->chargerX:I

    iput v0, p0, Lcom/rockrobo/map/MapInfo;->chargerY:I

    return-void
.end method

.method private calcActualMapBorder()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xca

    if-ge v1, v2, :cond_2

    mul-int/lit16 v3, v1, 0xca

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/rockrobo/map/MapInfo;->mapData:[B

    add-int v6, v3, v4

    aget-byte v5, v5, v6

    if-eqz v5, :cond_0

    iput v1, p0, Lcom/rockrobo/map/MapInfo;->top:I

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/16 v1, 0xca

    :goto_3
    iget v3, p0, Lcom/rockrobo/map/MapInfo;->top:I

    if-le v1, v3, :cond_5

    add-int/lit8 v3, v1, -0x1

    mul-int/lit16 v3, v3, 0xca

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_4

    iget-object v5, p0, Lcom/rockrobo/map/MapInfo;->mapData:[B

    add-int v6, v3, v4

    aget-byte v5, v5, v6

    if-eqz v5, :cond_3

    iput v1, p0, Lcom/rockrobo/map/MapInfo;->bottom:I

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    :goto_5
    if-ge v0, v2, :cond_8

    iget v1, p0, Lcom/rockrobo/map/MapInfo;->top:I

    :goto_6
    iget v3, p0, Lcom/rockrobo/map/MapInfo;->bottom:I

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lcom/rockrobo/map/MapInfo;->mapData:[B

    mul-int/lit16 v4, v1, 0xca

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    if-eqz v3, :cond_6

    iput v0, p0, Lcom/rockrobo/map/MapInfo;->left:I

    goto :goto_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    :goto_7
    iget v0, p0, Lcom/rockrobo/map/MapInfo;->left:I

    if-le v2, v0, :cond_b

    iget v0, p0, Lcom/rockrobo/map/MapInfo;->top:I

    :goto_8
    iget v1, p0, Lcom/rockrobo/map/MapInfo;->bottom:I

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/rockrobo/map/MapInfo;->mapData:[B

    mul-int/lit16 v3, v0, 0xca

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v1, v1, v3

    if-eqz v1, :cond_9

    iput v2, p0, Lcom/rockrobo/map/MapInfo;->right:I

    return-void

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_b
    return-void
.end method


# virtual methods
.method public calcChargerLocation(II[F)[F
    .locals 2

    if-nez p3, :cond_0

    const/4 p3, 0x2

    new-array p3, p3, [F

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/rockrobo/map/MapInfo;->right:I

    sub-int/2addr v1, p1

    const/4 p1, 0x1

    add-int/2addr v1, p1

    int-to-float v1, v1

    aput v1, p3, v0

    iget v0, p0, Lcom/rockrobo/map/MapInfo;->bottom:I

    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    int-to-float p2, v0

    aput p2, p3, p1

    return-object p3
.end method

.method public calcRobotLocation(II[F)[F
    .locals 2

    if-nez p3, :cond_0

    const/4 p3, 0x2

    new-array p3, p3, [F

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/rockrobo/map/MapInfo;->right:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    aput p1, p3, v0

    const/4 p1, 0x1

    iget v0, p0, Lcom/rockrobo/map/MapInfo;->bottom:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    aput p2, p3, p1

    return-object p3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/rockrobo/map/MapInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/rockrobo/map/MapInfo;

    iget p1, p1, Lcom/rockrobo/map/MapInfo;->crcInt:I

    iget v0, p0, Lcom/rockrobo/map/MapInfo;->crcInt:I

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getActualMapRect()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/rockrobo/map/MapInfo;->left:I

    iget v2, p0, Lcom/rockrobo/map/MapInfo;->top:I

    iget v3, p0, Lcom/rockrobo/map/MapInfo;->right:I

    iget v4, p0, Lcom/rockrobo/map/MapInfo;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getChargerLocation()[F
    .locals 3

    iget v0, p0, Lcom/rockrobo/map/MapInfo;->chargerX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/rockrobo/map/MapInfo;->chargerY:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/map/MapInfo;->chargerLocation:[F

    if-nez v0, :cond_1

    iget v0, p0, Lcom/rockrobo/map/MapInfo;->chargerX:I

    iget v1, p0, Lcom/rockrobo/map/MapInfo;->chargerY:I

    iget-object v2, p0, Lcom/rockrobo/map/MapInfo;->chargerLocation:[F

    invoke-virtual {p0, v0, v1, v2}, Lcom/rockrobo/map/MapInfo;->calcChargerLocation(II[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/map/MapInfo;->chargerLocation:[F

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/map/MapInfo;->chargerLocation:[F

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCleanId()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/map/MapInfo;->cleanId:I

    return v0
.end method

.method public getHeight()I
    .locals 2

    iget v0, p0, Lcom/rockrobo/map/MapInfo;->bottom:I

    iget v1, p0, Lcom/rockrobo/map/MapInfo;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMapData()[B
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapInfo;->mapData:[B

    return-object v0
.end method

.method public getRobotLocation()[F
    .locals 3

    iget v0, p0, Lcom/rockrobo/map/MapInfo;->robotX:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/rockrobo/map/MapInfo;->robotY:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/map/MapInfo;->robotLocation:[F

    if-nez v0, :cond_1

    iget v0, p0, Lcom/rockrobo/map/MapInfo;->robotX:I

    iget v1, p0, Lcom/rockrobo/map/MapInfo;->robotY:I

    iget-object v2, p0, Lcom/rockrobo/map/MapInfo;->robotLocation:[F

    invoke-virtual {p0, v0, v1, v2}, Lcom/rockrobo/map/MapInfo;->calcRobotLocation(II[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/map/MapInfo;->robotLocation:[F

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/map/MapInfo;->robotLocation:[F

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRowStride()I
    .locals 1

    const/16 v0, 0xca

    return v0
.end method

.method public getSequenceNo()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/map/MapInfo;->sequenceNo:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Lcom/rockrobo/map/MapInfo;->right:I

    iget v1, p0, Lcom/rockrobo/map/MapInfo;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/map/MapInfo;->crcInt:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapInfo;->mapData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setChargerX(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    iput p1, p0, Lcom/rockrobo/map/MapInfo;->chargerX:I

    return-void

    :cond_0
    int-to-float p1, p1

    const/high16 v0, 0x43160000    # 150.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    return-void
.end method

.method public setChargerY(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    iput p1, p0, Lcom/rockrobo/map/MapInfo;->chargerY:I

    return-void

    :cond_0
    int-to-float p1, p1

    const/high16 v0, 0x43160000    # 150.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    return-void
.end method

.method public setCleanId(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/map/MapInfo;->cleanId:I

    return-void
.end method

.method public setCrc([B)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rockrobo/utils/RRUtils;->getInt2Byte([BI)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/map/MapInfo;->crcInt:I

    sget-object p1, Lcom/rockrobo/map/MapInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCrc, crc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/map/MapInfo;->crcInt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMapData([B)V
    .locals 11

    const v0, 0x9f64

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/rockrobo/map/MapInfo;->mapData:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/rockrobo/map/MapInfo;->mapData:[B

    aput-byte v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x65

    if-ge v0, v2, :cond_2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_1

    mul-int/lit8 v4, v0, 0x65

    rsub-int/lit8 v5, v3, 0x65

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v4, v5

    aget-byte v4, p1, v4

    iget-object v5, p0, Lcom/rockrobo/map/MapInfo;->mapData:[B

    mul-int/lit8 v6, v0, 0x2

    mul-int/lit16 v7, v6, 0xca

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    shr-int/lit8 v9, v4, 0x4

    sget v10, Lcom/rockrobo/map/MapInfo;->MAP_POINT_MASK:I

    and-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    iget-object v5, p0, Lcom/rockrobo/map/MapInfo;->mapData:[B

    add-int/lit8 v7, v7, 0x1

    sget v9, Lcom/rockrobo/map/MapInfo;->MAP_POINT_MASK:I

    and-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    iget-object v5, p0, Lcom/rockrobo/map/MapInfo;->mapData:[B

    add-int/lit8 v6, v6, 0x1

    mul-int/lit16 v6, v6, 0xca

    add-int/2addr v6, v8

    shr-int/lit8 v7, v4, 0x6

    sget v8, Lcom/rockrobo/map/MapInfo;->MAP_POINT_MASK:I

    and-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    iget-object v5, p0, Lcom/rockrobo/map/MapInfo;->mapData:[B

    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v4, v4, 0x2

    sget v7, Lcom/rockrobo/map/MapInfo;->MAP_POINT_MASK:I

    and-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/rockrobo/map/MapInfo;->calcActualMapBorder()V

    sget-object p1, Lcom/rockrobo/map/MapInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map actual border:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/map/MapInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRobotX(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x43160000    # 150.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    rsub-int p1, p1, 0xca

    iput p1, p0, Lcom/rockrobo/map/MapInfo;->robotX:I

    return-void
.end method

.method public setRobotY(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x43160000    # 150.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/rockrobo/map/MapInfo;->robotY:I

    return-void
.end method

.method public setSequenceNo(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/map/MapInfo;->sequenceNo:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "Map:(%d,%d,%d,%d), charger(%d, %d), robot(%d,%d)"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/rockrobo/map/MapInfo;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/rockrobo/map/MapInfo;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcom/rockrobo/map/MapInfo;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p0, Lcom/rockrobo/map/MapInfo;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/rockrobo/map/MapInfo;->chargerX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget v3, p0, Lcom/rockrobo/map/MapInfo;->chargerY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget v3, p0, Lcom/rockrobo/map/MapInfo;->robotX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget v3, p0, Lcom/rockrobo/map/MapInfo;->robotY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
