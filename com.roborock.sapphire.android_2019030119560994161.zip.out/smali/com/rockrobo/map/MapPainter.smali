.class public Lcom/rockrobo/map/MapPainter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rockrobo/map/MapPainterI;


# static fields
.field public static final DEGREES_PER_TICK:I = -0x17

.field private static final HALO_DURATION:I = 0x7d0

.field public static final LESS_HALF_SQRT2:D

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MATRIX_SCALE_X_IDX:I = 0x0

.field private static final MAX_MAP_SCALE_RATE:F = 60.0f

.field public static final MAX_MAP_SLAM_SCALE:F = 12.0f

.field private static final MIN_MAP_SCALE_RATE:F = 0.5f

.field public static final SPOT_CLEAN_LEFT_MARGIN_PER_VIEW_WIDTH_RATION:F = 0.10903427f


# instance fields
.field private backgroundViewRect:Landroid/graphics/Rect;

.field private brushPoint:[F

.field private brushTranslateMatrix:Landroid/graphics/Matrix;

.field private chargerLocation:Landroid/graphics/RectF;

.field private cleanInfo:Lcom/rockrobo/common/CleanInfo;

.field private cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

.field private mapBitmap:Landroid/graphics/Bitmap;

.field private mapBuilder:Lcom/rockrobo/map/MapBuilder;

.field private mapInfo:Lcom/rockrobo/map/MapInfo;

.field private mapViewRect:Landroid/graphics/Rect;

.field private matrixValues:[F

.field private newMapInfo:Lcom/rockrobo/map/MapInfo;

.field private particleGenerator:Lcom/rockrobo/common/ParticleGenerator;

.field private resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

.field private robotLocation:Landroid/graphics/RectF;

.field private robotStatus:Lcom/rockrobo/clean/RobotStatus;

.field private slam2ViewMatrix:Landroid/graphics/Matrix;

.field private slam2ViewMatrixScale:F

.field private tempRectF:Landroid/graphics/RectF;

.field private totalMatrix:Landroid/graphics/Matrix;

.field private transformMatrix:Landroid/graphics/Matrix;

.field private transformMatrixScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/map/MapPainter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapPainter;->LOG_TAG:Ljava/lang/String;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    mul-double v2, v2, v0

    sput-wide v2, Lcom/rockrobo/map/MapPainter;->LESS_HALF_SQRT2:D

    return-void
.end method

.method public constructor <init>(Lcom/rockrobo/map/MapViewBaseResourceManager;Lcom/rockrobo/map/MapBuilder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/map/MapPainter;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/map/MapPainter;->mapInfo:Lcom/rockrobo/map/MapInfo;

    iput-object v0, p0, Lcom/rockrobo/map/MapPainter;->particleGenerator:Lcom/rockrobo/common/ParticleGenerator;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/rockrobo/map/MapPainter;->tempRectF:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/rockrobo/map/MapPainter;->brushTranslateMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/rockrobo/map/MapPainter;->brushPoint:[F

    sget-object v1, Lcom/rockrobo/clean/CleanStrategy;->UNKNOWN:Lcom/rockrobo/clean/CleanStrategy;

    iput-object v1, p0, Lcom/rockrobo/map/MapPainter;->cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

    iput-object v0, p0, Lcom/rockrobo/map/MapPainter;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/rockrobo/map/MapPainter;->matrixValues:[F

    iput-object p1, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iput-object p2, p0, Lcom/rockrobo/map/MapPainter;->mapBuilder:Lcom/rockrobo/map/MapBuilder;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/map/MapPainter;->slam2ViewMatrix:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/rockrobo/map/MapPainter;->slam2ViewMatrixScale:F

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/rockrobo/map/MapPainter;->transformMatrix:Landroid/graphics/Matrix;

    iput p1, p0, Lcom/rockrobo/map/MapPainter;->transformMatrixScale:F

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/map/MapPainter;->totalMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private calcHaloRadius(FFI)F
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p3

    rem-long/2addr v0, v2

    long-to-int v0, v0

    int-to-float v0, v0

    int-to-float p3, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    cmpg-float v2, v0, p3

    if-gez v2, :cond_0

    div-float/2addr v0, p3

    goto :goto_0

    :cond_0
    div-float/2addr v0, p3

    sub-float v0, v1, v0

    :goto_0
    sub-float/2addr p2, p1

    mul-float v0, v0, p2

    add-float/2addr p1, v0

    return p1
.end method

.method private calcTotalMatrix()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->totalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->totalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->slam2ViewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->totalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->transformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method private createSlam2ViewMatrix()V
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapInfo;->getActualMapRect()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/rockrobo/map/MapPainter;->slam2ViewMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapPadding()I

    move-result v0

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/high16 v0, 0x40c00000    # 6.0f

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v4, v4, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v5, v5, v0

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float v6, v6, v0

    add-float/2addr v5, v6

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    iget-object v5, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v4, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->slam2ViewMatrix:Landroid/graphics/Matrix;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v1, v0, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->slam2ViewMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/rockrobo/map/MapPainter;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result v0

    iput v0, p0, Lcom/rockrobo/map/MapPainter;->slam2ViewMatrixScale:F

    return-void
.end method

.method private getMapBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->newMapInfo:Lcom/rockrobo/map/MapInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->mapBuilder:Lcom/rockrobo/map/MapBuilder;

    invoke-virtual {v1}, Lcom/rockrobo/map/MapBuilder;->getRobotStatus()Lcom/rockrobo/clean/RobotStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->newMapInfo:Lcom/rockrobo/map/MapInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->newMapInfo:Lcom/rockrobo/map/MapInfo;

    iput-object v0, p0, Lcom/rockrobo/map/MapPainter;->mapInfo:Lcom/rockrobo/map/MapInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/map/MapPainter;->newMapInfo:Lcom/rockrobo/map/MapInfo;

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->mapBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->mapBuilder:Lcom/rockrobo/map/MapBuilder;

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Lcom/rockrobo/map/MapBuilder;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->mapBuilder:Lcom/rockrobo/map/MapBuilder;

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-virtual {v1, v2}, Lcom/rockrobo/map/MapBuilder;->createMap(Lcom/rockrobo/map/MapInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/rockrobo/map/MapPainter;->mapBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sget-object v0, Lcom/rockrobo/map/MapPainter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/rockrobo/map/MapPainter;->setupMatrixAndTransform()V

    :cond_3
    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->mapBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getMatrixScale(Landroid/graphics/Matrix;)F
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->matrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lcom/rockrobo/map/MapPainter;->matrixValues:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method private robotOnDock()Z
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapPainter$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v2}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setupMatrixAndTransform()V
    .locals 1

    invoke-direct {p0}, Lcom/rockrobo/map/MapPainter;->createSlam2ViewMatrix()V

    invoke-direct {p0}, Lcom/rockrobo/map/MapPainter;->calcTotalMatrix()V

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->totalMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/rockrobo/map/MapPainter;->transformDockLocation(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/map/MapPainter;->chargerLocation:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->totalMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/rockrobo/map/MapPainter;->transformRobotLocation(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/map/MapPainter;->robotLocation:Landroid/graphics/RectF;

    return-void
.end method

.method private transformDockLocation(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 6

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapInfo;->getChargerLocation()[F

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapInfo;->getChargerLocation()[F

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-virtual {v1}, Lcom/rockrobo/map/MapInfo;->getChargerLocation()[F

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    sget-object v1, Lcom/rockrobo/map/MapPainter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock location by points:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p1, v0, v3

    aget v0, v0, v4

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getDockHalfWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget-object v3, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v3}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getDockHalfHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v4, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v4}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getDockHalfWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr p1, v4

    iget-object v4, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v4}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getDockHalfHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    invoke-direct {v1, v2, v3, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private transformMatrixChanged()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->mapInfo:Lcom/rockrobo/map/MapInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/map/MapPainter;->calcTotalMatrix()V

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->totalMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/rockrobo/map/MapPainter;->transformDockLocation(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/map/MapPainter;->chargerLocation:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->totalMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/rockrobo/map/MapPainter;->transformRobotLocation(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/map/MapPainter;->robotLocation:Landroid/graphics/RectF;

    :cond_0
    return-void
.end method

.method private transformRobotLocation(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 5

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapInfo;->getRobotLocation()[F

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapInfo;->getRobotLocation()[F

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-virtual {v1}, Lcom/rockrobo/map/MapInfo;->getRobotLocation()[F

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 p1, 0x0

    aget p1, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getRobotHalfWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget-object v3, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v3}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getRobotHalfHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v4, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v4}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getRobotHalfWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr p1, v4

    iget-object v4, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v4}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getRobotHalfHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    invoke-direct {v1, v2, v3, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public center()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->transformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/rockrobo/map/MapPainter;->transformMatrixScale:F

    invoke-direct {p0}, Lcom/rockrobo/map/MapPainter;->transformMatrixChanged()V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getBackgroundBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->backgroundViewRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getDitherPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawCleanInfo(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewCleanInfoNumberPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewCleanInfoSquareSymbolPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v4, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewCleanInfoY(Landroid/graphics/Rect;)F

    move-result v3

    iget-object v4, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v6, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v7, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewCleanInfoSepHeight(Landroid/graphics/Rect;)F

    move-result v6

    iget-object v7, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v7}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewCleanInfoSepPaint()Landroid/graphics/Paint;

    move-result-object v10

    sub-float v7, v3, v6

    sub-float/2addr v1, v6

    div-float/2addr v1, v5

    add-float/2addr v7, v1

    move-object v5, p1

    move v6, v4

    move v8, v4

    move v9, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewCleanInfoSepHorizontalMargin()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    const-string v6, "m"

    iget-object v7, p0, Lcom/rockrobo/map/MapPainter;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/rockrobo/map/MapPainter;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    invoke-virtual {v7}, Lcom/rockrobo/common/CleanInfo;->getCleanArea()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    const-string v7, "--"

    :goto_0
    iget-object v8, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v8}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewCleanInfoAreaDescFormat()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-static {v9, v8, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    add-float/2addr v9, v8

    sub-float v11, v4, v1

    sub-float/2addr v11, v9

    invoke-virtual {p1, v6, v11, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v11, v8

    sub-float v5, v3, v5

    invoke-virtual {p1, v7, v11, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewCleanInfoDurationDescFormat()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/rockrobo/map/MapPainter;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/rockrobo/map/MapPainter;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    invoke-virtual {v5}, Lcom/rockrobo/common/CleanInfo;->getCleanDuration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v5, "--"

    :goto_1
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v12

    invoke-static {v6, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-float/2addr v4, v1

    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawDock(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->chargerLocation:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getDockBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->chargerLocation:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawMap(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Lcom/rockrobo/map/MapPainter;->mapPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/rockrobo/map/MapPainter;->getMapBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->totalMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public drawMapLoadingScene(Landroid/graphics/Canvas;J)V
    .locals 10

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getLoadingRobotRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getLoadingRobotBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v2, v0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getLoadingBrushRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v4, p0, Lcom/rockrobo/map/MapPainter;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v3, v4}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getLoadingBrushBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;

    move-result-object v3

    const-wide/16 v4, -0x17

    mul-long p2, p2, v4

    const-wide/16 v4, 0x168

    rem-long/2addr p2, v4

    long-to-int p2, p2

    iget-object p3, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v4, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0, v4}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getParticleRectF(Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v4, p0, Lcom/rockrobo/map/MapPainter;->particleGenerator:Lcom/rockrobo/common/ParticleGenerator;

    if-nez v4, :cond_0

    new-instance v4, Lcom/rockrobo/common/ParticleGenerator;

    const/4 v5, 0x6

    invoke-direct {v4, v5, p3, v6}, Lcom/rockrobo/common/ParticleGenerator;-><init>(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V

    iput-object v4, p0, Lcom/rockrobo/map/MapPainter;->particleGenerator:Lcom/rockrobo/common/ParticleGenerator;

    :cond_0
    iget-object p3, p0, Lcom/rockrobo/map/MapPainter;->particleGenerator:Lcom/rockrobo/common/ParticleGenerator;

    invoke-virtual {p3}, Lcom/rockrobo/common/ParticleGenerator;->tick()V

    iget-object p3, p0, Lcom/rockrobo/map/MapPainter;->particleGenerator:Lcom/rockrobo/common/ParticleGenerator;

    invoke-virtual {p3}, Lcom/rockrobo/common/ParticleGenerator;->getParticles()Ljava/lang/Iterable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rockrobo/common/Particle;

    iget v5, v4, Lcom/rockrobo/common/Particle;->x:F

    iget v6, v4, Lcom/rockrobo/common/Particle;->y:F

    iget v7, v4, Lcom/rockrobo/common/Particle;->radius:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v9, p0, Lcom/rockrobo/map/MapPainter;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget v4, v4, Lcom/rockrobo/common/Particle;->alpha:I

    invoke-virtual {v8, v9, v4}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getParticlePaint(Lcom/rockrobo/clean/RobotStatus;I)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float p2, p2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, p2, p3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {p2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getAntiAliasPaint()Landroid/graphics/Paint;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, v3, p3, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p2, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {p2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getAntiAliasPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, v1, p3, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {p2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getLoadingDesc()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {p3}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewBottomTextPaint()Landroid/graphics/Paint;

    move-result-object p3

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewBottomTextBottomMargin()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawNoMapPrompt(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getNoMapPromptRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapNotPresentPromptBitmap(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getNoMapPromptText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewBottomTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v3}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewBottomTextBottomMargin()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRobot(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-direct {p0}, Lcom/rockrobo/map/MapPainter;->robotOnDock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->chargerLocation:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->chargerLocation:Landroid/graphics/RectF;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->robotLocation:Landroid/graphics/RectF;

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getRobotBitmap(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v3}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getAntiAliasPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawSpottingRobot(Landroid/graphics/Canvas;FFFI[FI)V
    .locals 8

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->backgroundViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getTargetBackgroundCenter(Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->backgroundViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getSpottingRobotRadiusLimit(Landroid/graphics/Rect;)F

    move-result v1

    mul-float v1, v1, p2

    float-to-double v1, v1

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v1

    double-to-float p2, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-float v1, v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, p2

    iget p2, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, v1

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v3, p0, Lcom/rockrobo/map/MapPainter;->backgroundViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getSpottingRobotSize(Landroid/graphics/Rect;)F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    sget-object v4, Lcom/rockrobo/map/MapPainter;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path point size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float p4, p4, v5

    float-to-int p4, p4

    invoke-virtual {v4, p4}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getSpottingRobotPathPaint(I)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    invoke-virtual {p1, p6, v0, p7, v4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p6, p0, Lcom/rockrobo/map/MapPainter;->brushTranslateMatrix:Landroid/graphics/Matrix;

    if-nez p6, :cond_0

    new-instance p6, Landroid/graphics/Matrix;

    invoke-direct {p6}, Landroid/graphics/Matrix;-><init>()V

    iput-object p6, p0, Lcom/rockrobo/map/MapPainter;->brushTranslateMatrix:Landroid/graphics/Matrix;

    :cond_0
    iget-object p6, p0, Lcom/rockrobo/map/MapPainter;->brushTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p6}, Landroid/graphics/Matrix;->reset()V

    iget-object p6, p0, Lcom/rockrobo/map/MapPainter;->brushTranslateMatrix:Landroid/graphics/Matrix;

    const/high16 p7, 0x42b40000    # 90.0f

    add-float/2addr p7, p3

    invoke-virtual {p6, p7}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object p6, p0, Lcom/rockrobo/map/MapPainter;->brushTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p6, v2, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p6, p0, Lcom/rockrobo/map/MapPainter;->brushPoint:[F

    float-to-double v4, v3

    sget-wide v6, Lcom/rockrobo/map/MapPainter;->LESS_HALF_SQRT2:D

    mul-double v6, v6, v4

    double-to-float p7, v6

    aput p7, p6, v0

    iget-object p6, p0, Lcom/rockrobo/map/MapPainter;->brushPoint:[F

    const/4 p7, 0x1

    sget-wide v6, Lcom/rockrobo/map/MapPainter;->LESS_HALF_SQRT2:D

    mul-double v4, v4, v6

    double-to-float v0, v4

    aput v0, p6, p7

    iget-object p6, p0, Lcom/rockrobo/map/MapPainter;->brushTranslateMatrix:Landroid/graphics/Matrix;

    iget-object p7, p0, Lcom/rockrobo/map/MapPainter;->brushPoint:[F

    invoke-virtual {p6, p7}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p6, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object p7, p0, Lcom/rockrobo/map/MapPainter;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {p6, p7, v1, p5}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getSpottingBrushBmp(Lcom/rockrobo/clean/RobotStatus;FI)Landroid/graphics/Bitmap;

    move-result-object p5

    iget-object p6, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object p7, p0, Lcom/rockrobo/map/MapPainter;->brushPoint:[F

    invoke-virtual {p6, p7, v1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getSpottingBrushRectF([FF)Landroid/graphics/RectF;

    move-result-object p6

    iget-object p7, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {p7, p4}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getSpottingRobotPaint(I)Landroid/graphics/Paint;

    move-result-object p4

    const/4 p7, 0x0

    invoke-virtual {p1, p5, p7, p6, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p5, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {p5, v1, v1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getSpottingRobotBmp(FF)Landroid/graphics/Bitmap;

    move-result-object p5

    iget-object p6, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    const/high16 v0, 0x43340000    # 180.0f

    add-float/2addr p3, v0

    invoke-virtual {p6, p5, p3}, Lcom/rockrobo/map/MapViewBaseResourceManager;->spotRotateBmp(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p3

    iget-object p5, p0, Lcom/rockrobo/map/MapPainter;->tempRectF:Landroid/graphics/RectF;

    sub-float p6, v2, v3

    sub-float v0, p2, v3

    add-float/2addr v2, v3

    add-float/2addr p2, v3

    invoke-virtual {p5, p6, v0, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/rockrobo/map/MapPainter;->tempRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p3, p7, p2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawStatus(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->backgroundViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewStatusY(Landroid/graphics/Rect;)F

    move-result v0

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewStatusPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, p0, Lcom/rockrobo/map/MapPainter;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v4, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v4}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/rockrobo/map/MapPainter;->cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

    invoke-virtual {v3, v4, v5}, Lcom/rockrobo/clean/RobotStatus;->getMapViewDescription(Landroid/content/res/Resources;Lcom/rockrobo/clean/CleanStrategy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawStatusInfoBackground(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewStatusPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getMapViewStatusY(Landroid/graphics/Rect;)F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    add-float/2addr v1, v0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->backgroundViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    float-to-int v1, v1

    iget-object v3, p0, Lcom/rockrobo/map/MapPainter;->backgroundViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/rockrobo/map/MapPainter;->backgroundViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v3, p0, Lcom/rockrobo/map/MapPainter;->backgroundViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getStatusInfoBgBmp(Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getDitherPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawTargetBackground(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->backgroundViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getTargetBackgroundCenter(Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->backgroundViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getTargetCrossRectF(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getTargetLinePaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget v6, v1, Landroid/graphics/RectF;->right:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    move-object v3, p1

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v3, p0, Lcom/rockrobo/map/MapPainter;->backgroundViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getTargetCircleRadiusDelta(Landroid/graphics/Rect;)F

    move-result v1

    const/4 v3, 0x0

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/rockrobo/map/MapPainter;->backgroundViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/rockrobo/map/MapPainter;->backgroundViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ddf4d5c

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    :cond_0
    iget v5, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v3

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v6, v7, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-float/2addr v3, v1

    cmpl-float v5, v5, v4

    if-gtz v5, :cond_0

    return-void
.end method

.method public mapPresent()Z
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->mapInfo:Lcom/rockrobo/map/MapInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->newMapInfo:Lcom/rockrobo/map/MapInfo;

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

.method public maskOutPixels(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public releaseResources()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->releaseResources()V

    return-void
.end method

.method public scaleMap(FFF)V
    .locals 5

    iget v0, p0, Lcom/rockrobo/map/MapPainter;->transformMatrixScale:F

    mul-float v0, v0, p1

    iget v1, p0, Lcom/rockrobo/map/MapPainter;->slam2ViewMatrixScale:F

    mul-float v1, v1, v0

    iget v2, p0, Lcom/rockrobo/map/MapPainter;->slam2ViewMatrixScale:F

    const/high16 v3, 0x42700000    # 60.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v3, p0, Lcom/rockrobo/map/MapPainter;->slam2ViewMatrixScale:F

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v2

    if-lez v4, :cond_1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iget p1, p0, Lcom/rockrobo/map/MapPainter;->slam2ViewMatrixScale:F

    div-float v0, v3, p1

    iget p1, p0, Lcom/rockrobo/map/MapPainter;->transformMatrixScale:F

    div-float p1, v0, p1

    :cond_1
    cmpg-float v1, p1, v2

    if-gez v1, :cond_2

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget p1, p0, Lcom/rockrobo/map/MapPainter;->transformMatrixScale:F

    div-float p1, v1, p1

    :cond_2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    sub-float/2addr v2, p1

    mul-float p2, p2, v2

    mul-float p3, p3, v2

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p2, p0, Lcom/rockrobo/map/MapPainter;->transformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget p2, p0, Lcom/rockrobo/map/MapPainter;->transformMatrixScale:F

    mul-float p2, p2, p1

    iput p2, p0, Lcom/rockrobo/map/MapPainter;->transformMatrixScale:F

    invoke-direct {p0}, Lcom/rockrobo/map/MapPainter;->transformMatrixChanged()V

    return-void
.end method

.method public setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/map/MapPainter;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    return-void
.end method

.method public setMapInfo(Lcom/rockrobo/map/MapInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapPainter;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-virtual {p1, v0}, Lcom/rockrobo/map/MapInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/rockrobo/map/MapPainter;->newMapInfo:Lcom/rockrobo/map/MapInfo;

    return-void
.end method

.method public setRobotStatus(Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/CleanStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/map/MapPainter;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-object p2, p0, Lcom/rockrobo/map/MapPainter;->cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

    return-void
.end method

.method public setViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/map/MapPainter;->mapViewRect:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/rockrobo/map/MapPainter;->backgroundViewRect:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/rockrobo/map/MapPainter;->mapInfo:Lcom/rockrobo/map/MapInfo;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/map/MapPainter;->setupMatrixAndTransform()V

    :cond_0
    return-void
.end method

.method public translate(FFFF)V
    .locals 0

    iget-object p3, p0, Lcom/rockrobo/map/MapPainter;->transformMatrix:Landroid/graphics/Matrix;

    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0}, Lcom/rockrobo/map/MapPainter;->transformMatrixChanged()V

    return-void
.end method
