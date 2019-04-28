.class public Lcom/rockrobo/map/MapViewHistoryResourceManager;
.super Lcom/rockrobo/map/MapViewBaseResourceManager;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static backgroundBmp:Landroid/graphics/Bitmap; = null

.field private static cleanInfoHeight:I = -0x1

.field private static sleepingBackgroundBmp:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/map/MapViewMainResourceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewHistoryResourceManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/map/MapViewBaseResourceManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBackgroundBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object p1, Lcom/rockrobo/map/MapViewHistoryResourceManager;->backgroundBmp:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/map/MapViewHistoryResourceManager;->resources:Landroid/content/res/Resources;

    const v0, 0x7f050143

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/rockrobo/map/MapViewHistoryResourceManager;->backgroundBmp:Landroid/graphics/Bitmap;

    :cond_0
    sget-object p1, Lcom/rockrobo/map/MapViewHistoryResourceManager;->backgroundBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getCleanInfoHeight()I
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewHistoryResourceManager;->cleanInfoHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewHistoryResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f040101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/rockrobo/map/MapViewHistoryResourceManager;->cleanInfoHeight:I

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewHistoryResourceManager;->cleanInfoHeight:I

    return v0
.end method

.method public getLoadingBrushBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLoadingBrushRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLoadingDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoadingRobotBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLoadingRobotRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMapViewCleanInfoAreaDescFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapViewCleanInfoDurationDescFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapViewCleanInfoNumberPaint()Landroid/graphics/Paint;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapViewCleanInfoSepHeight(Landroid/graphics/Rect;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getMapViewCleanInfoSepHorizontalMargin()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMapViewCleanInfoSepPaint()Landroid/graphics/Paint;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapViewCleanInfoSquareSymbolPaint()Landroid/graphics/Paint;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapViewCleanInfoY(Landroid/graphics/Rect;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getMapViewStatusPaint()Landroid/graphics/Paint;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapViewStatusY(Landroid/graphics/Rect;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getParticlePaint(Lcom/rockrobo/clean/RobotStatus;I)Landroid/graphics/Paint;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getParticleRectF(Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSpottingBrushBmp(Lcom/rockrobo/clean/RobotStatus;FI)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSpottingBrushRectF([FF)Landroid/graphics/RectF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSpottingRobotBmp(FF)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSpottingRobotPaint(I)Landroid/graphics/Paint;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSpottingRobotPathPaint(I)Landroid/graphics/Paint;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSpottingRobotRadiusLimit(Landroid/graphics/Rect;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getSpottingRobotSize(Landroid/graphics/Rect;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getStatusChargingText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusCommonCleanText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusInfoBgBmp(Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getStatusWallAlongText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetBackgroundCenter(Landroid/graphics/Rect;)Landroid/graphics/PointF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTargetCircleRadiusDelta(Landroid/graphics/Rect;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getTargetCrossRectF(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/RectF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTargetLinePaint()Landroid/graphics/Paint;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public releaseResources()V
    .locals 2

    invoke-super {p0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->releaseResources()V

    sget-object v0, Lcom/rockrobo/map/MapViewHistoryResourceManager;->sleepingBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/rockrobo/map/MapViewHistoryResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/rockrobo/map/MapViewHistoryResourceManager;->sleepingBackgroundBmp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/map/MapViewHistoryResourceManager;->backgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/rockrobo/map/MapViewHistoryResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/map/MapViewHistoryResourceManager;->backgroundBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public spotRotateBmp(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
