.class public Lcom/rockrobo/ui/ViewMapView;
.super Landroid/view/View;

# interfaces
.implements Lcom/rockrobo/map/MapViewI;


# static fields
.field public static final LOADING_ROBOT_ANIMATE_INTERVAL:I = 0x32

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MAP_ANIMATION_DELAY:I = 0xa

.field private static final MAP_LOADING_ANIMATION_INTERVAL:J = 0x14L


# instance fields
.field private cleanInfo:Lcom/rockrobo/common/CleanInfo;

.field private cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

.field private cornerGot:Z

.field private loadingRobotAnimationTick:J

.field private mapInfo:Lcom/rockrobo/map/MapInfo;

.field private mapLoadingFailed:Z

.field private mapPainter:Lcom/rockrobo/map/MapPainterI;

.field private preSpotAnimateTime:J

.field private preSpotTheta:F

.field private prevLoadingRobotAnimateTime:J

.field private resourceManager:Lcom/rockrobo/map/MapViewMainResourceManager;

.field private robotStatus:Lcom/rockrobo/clean/RobotStatus;

.field private spotAlpha:F

.field private spotMoving:Z

.field private spotRadiusRatio:F

.field private spotRobotPath:[F

.field private spotRobotPathIndex:I

.field private spotTheta:F

.field private spottingFrameNo:I

.field private viewRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/ui/ViewMapView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/ViewMapView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/ui/ViewMapView;->cornerGot:Z

    iput-boolean v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapLoadingFailed:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/rockrobo/ui/ViewMapView;->loadingRobotAnimationTick:J

    iput-wide v1, p0, Lcom/rockrobo/ui/ViewMapView;->prevLoadingRobotAnimateTime:J

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v1, p0, Lcom/rockrobo/ui/ViewMapView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/rockrobo/ui/ViewMapView;->preSpotAnimateTime:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rockrobo/ui/ViewMapView;->spotMoving:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/rockrobo/ui/ViewMapView;->spotAlpha:F

    iput v0, p0, Lcom/rockrobo/ui/ViewMapView;->spottingFrameNo:I

    const/16 v1, 0x10e0

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPath:[F

    iput v0, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPathIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/ui/ViewMapView;->preSpotTheta:F

    sget-object v0, Lcom/rockrobo/clean/CleanStrategy;->UNKNOWN:Lcom/rockrobo/clean/CleanStrategy;

    iput-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapInfo:Lcom/rockrobo/map/MapInfo;

    iput-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    sget-object v0, Lcom/rockrobo/ui/ViewMapView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Constructor 1 entry!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/ViewMapView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/rockrobo/ui/ViewMapView;->cornerGot:Z

    iput-boolean p2, p0, Lcom/rockrobo/ui/ViewMapView;->mapLoadingFailed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rockrobo/ui/ViewMapView;->loadingRobotAnimationTick:J

    iput-wide v0, p0, Lcom/rockrobo/ui/ViewMapView;->prevLoadingRobotAnimateTime:J

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/rockrobo/ui/ViewMapView;->preSpotAnimateTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/ui/ViewMapView;->spotMoving:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/rockrobo/ui/ViewMapView;->spotAlpha:F

    iput p2, p0, Lcom/rockrobo/ui/ViewMapView;->spottingFrameNo:I

    const/16 v0, 0x10e0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPath:[F

    iput p2, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPathIndex:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/rockrobo/ui/ViewMapView;->preSpotTheta:F

    sget-object p2, Lcom/rockrobo/clean/CleanStrategy;->UNKNOWN:Lcom/rockrobo/clean/CleanStrategy;

    iput-object p2, p0, Lcom/rockrobo/ui/ViewMapView;->cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/rockrobo/ui/ViewMapView;->mapInfo:Lcom/rockrobo/map/MapInfo;

    iput-object p2, p0, Lcom/rockrobo/ui/ViewMapView;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    sget-object p2, Lcom/rockrobo/ui/ViewMapView;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Constructor 2 entry!"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/ViewMapView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/ui/ViewMapView;->spotRadiusRatio:F

    new-instance v0, Lcom/rockrobo/map/MapViewMainResourceManager;

    invoke-direct {v0, p1}, Lcom/rockrobo/map/MapViewMainResourceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->resourceManager:Lcom/rockrobo/map/MapViewMainResourceManager;

    new-instance v0, Lcom/rockrobo/map/MapBuilder;

    iget-object v1, p0, Lcom/rockrobo/ui/ViewMapView;->resourceManager:Lcom/rockrobo/map/MapViewMainResourceManager;

    invoke-direct {v0, v1}, Lcom/rockrobo/map/MapBuilder;-><init>(Lcom/rockrobo/map/MapViewBaseResourceManager;)V

    new-instance v1, Lcom/rockrobo/map/MapPainter;

    iget-object v2, p0, Lcom/rockrobo/ui/ViewMapView;->resourceManager:Lcom/rockrobo/map/MapViewMainResourceManager;

    invoke-direct {v1, v2, v0}, Lcom/rockrobo/map/MapPainter;-><init>(Lcom/rockrobo/map/MapViewBaseResourceManager;Lcom/rockrobo/map/MapBuilder;)V

    iput-object v1, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    new-instance v1, Lcom/rockrobo/map/listener/MapGestureListener;

    invoke-direct {v1, p0}, Lcom/rockrobo/map/listener/MapGestureListener;-><init>(Lcom/rockrobo/map/MapViewI;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lcom/rockrobo/map/listener/MapScaleGestureListener;

    invoke-direct {v2, p0}, Lcom/rockrobo/map/listener/MapScaleGestureListener;-><init>(Lcom/rockrobo/map/MapViewI;)V

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    new-instance p1, Lcom/rockrobo/map/listener/MapOnTouchListener;

    invoke-direct {p1, p0, v1, v0}, Lcom/rockrobo/map/listener/MapOnTouchListener;-><init>(Lcom/rockrobo/map/MapViewI;Landroid/view/ScaleGestureDetector;Landroid/support/v4/view/GestureDetectorCompat;)V

    invoke-virtual {p0, p1}, Lcom/rockrobo/ui/ViewMapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/rockrobo/ui/ViewMapView;->setLongClickable(Z)V

    return-void
.end method

.method private updateSpottingAnimation()V
    .locals 8

    iget-wide v0, p0, Lcom/rockrobo/ui/ViewMapView;->preSpotAnimateTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/ui/ViewMapView;->preSpotAnimateTime:J

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rockrobo/ui/ViewMapView;->preSpotAnimateTime:J

    sub-long v4, v0, v2

    long-to-int v0, v4

    iget-boolean v1, p0, Lcom/rockrobo/ui/ViewMapView;->spotMoving:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    const/16 v1, 0x1770

    if-le v0, v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/ui/ViewMapView;->preSpotAnimateTime:J

    iput-boolean v3, p0, Lcom/rockrobo/ui/ViewMapView;->spotMoving:Z

    return-void

    :cond_1
    int-to-float v0, v0

    const v1, 0x45bb8000    # 6000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/rockrobo/ui/ViewMapView;->spotRadiusRatio:F

    iget v1, p0, Lcom/rockrobo/ui/ViewMapView;->spottingFrameNo:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/rockrobo/ui/ViewMapView;->spottingFrameNo:I

    const/high16 v1, 0x44870000    # 1080.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/rockrobo/ui/ViewMapView;->spotTheta:F

    iput v2, p0, Lcom/rockrobo/ui/ViewMapView;->spotAlpha:F

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->resourceManager:Lcom/rockrobo/map/MapViewMainResourceManager;

    iget-object v1, p0, Lcom/rockrobo/ui/ViewMapView;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/rockrobo/map/MapViewMainResourceManager;->getSpottingRobotRadiusLimit(Landroid/graphics/Rect;)F

    move-result v0

    iget v1, p0, Lcom/rockrobo/ui/ViewMapView;->spotRadiusRatio:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/rockrobo/ui/ViewMapView;->spotTheta:F

    iget v3, p0, Lcom/rockrobo/ui/ViewMapView;->preSpotTheta:F

    add-float/2addr v3, v2

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_4

    float-to-double v0, v0

    iget v2, p0, Lcom/rockrobo/ui/ViewMapView;->preSpotTheta:F

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v0

    double-to-float v2, v4

    iget v4, p0, Lcom/rockrobo/ui/ViewMapView;->preSpotTheta:F

    add-float/2addr v4, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v0

    double-to-float v4, v4

    iget v5, p0, Lcom/rockrobo/ui/ViewMapView;->spotTheta:F

    add-float/2addr v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v0

    double-to-float v5, v5

    iget v6, p0, Lcom/rockrobo/ui/ViewMapView;->spotTheta:F

    add-float/2addr v6, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v0, v0, v6

    double-to-float v0, v0

    iget-object v1, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPath:[F

    iget v3, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPathIndex:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPathIndex:I

    aput v2, v1, v3

    iget-object v1, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPath:[F

    iget v2, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPathIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPathIndex:I

    aput v4, v1, v2

    iget-object v1, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPath:[F

    iget v2, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPathIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPathIndex:I

    aput v5, v1, v2

    iget-object v1, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPath:[F

    iget v2, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPathIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPathIndex:I

    aput v0, v1, v2

    iget v0, p0, Lcom/rockrobo/ui/ViewMapView;->spotTheta:F

    goto :goto_0

    :cond_2
    const/16 v1, 0x3e8

    if-le v0, v1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/ui/ViewMapView;->preSpotAnimateTime:J

    iput-boolean v4, p0, Lcom/rockrobo/ui/ViewMapView;->spotMoving:Z

    iput v3, p0, Lcom/rockrobo/ui/ViewMapView;->spottingFrameNo:I

    iput v3, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPathIndex:I

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/rockrobo/ui/ViewMapView;->preSpotTheta:F

    return-void

    :cond_3
    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/rockrobo/ui/ViewMapView;->spotAlpha:F

    iget v0, p0, Lcom/rockrobo/ui/ViewMapView;->spottingFrameNo:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/rockrobo/ui/ViewMapView;->spottingFrameNo:I

    :cond_4
    return-void
.end method


# virtual methods
.method public center(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {p1}, Lcom/rockrobo/map/MapPainterI;->mapPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {p1}, Lcom/rockrobo/map/MapPainterI;->center()V

    invoke-virtual {p0}, Lcom/rockrobo/ui/ViewMapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0}, Lcom/rockrobo/map/MapPainterI;->releaseResources()V

    return-void
.end method

.method public getCleanInfo()Lcom/rockrobo/common/CleanInfo;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    return-object v0
.end method

.method public getMapInfo()Lcom/rockrobo/map/MapInfo;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapInfo:Lcom/rockrobo/map/MapInfo;

    return-object v0
.end method

.method public getResourceManager()Lcom/rockrobo/map/MapViewBaseResourceManager;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->resourceManager:Lcom/rockrobo/map/MapViewMainResourceManager;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->drawBackground(Landroid/graphics/Canvas;)V

    sget-object v0, Lcom/rockrobo/ui/ViewMapView$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v1, p0, Lcom/rockrobo/ui/ViewMapView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0xa

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0}, Lcom/rockrobo/map/MapPainterI;->mapPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->drawMap(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->drawDock(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->drawRobot(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->drawStatusInfoBackground(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->drawCleanInfo(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->drawStatus(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->maskOutPixels(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapLoadingFailed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->drawNoMapPrompt(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/rockrobo/ui/ViewMapView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cur time - prev time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/rockrobo/ui/ViewMapView;->prevLoadingRobotAnimateTime:J

    sub-long v6, v0, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/rockrobo/ui/ViewMapView;->prevLoadingRobotAnimateTime:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x14

    cmp-long v6, v4, v2

    if-ltz v6, :cond_2

    iget-wide v4, p0, Lcom/rockrobo/ui/ViewMapView;->loadingRobotAnimationTick:J

    const-wide/16 v6, 0x1

    add-long v8, v4, v6

    iput-wide v8, p0, Lcom/rockrobo/ui/ViewMapView;->loadingRobotAnimationTick:J

    iput-wide v0, p0, Lcom/rockrobo/ui/ViewMapView;->prevLoadingRobotAnimateTime:J

    :cond_2
    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    iget-wide v4, p0, Lcom/rockrobo/ui/ViewMapView;->loadingRobotAnimationTick:J

    invoke-interface {v0, p1, v4, v5}, Lcom/rockrobo/map/MapPainterI;->drawMapLoadingScene(Landroid/graphics/Canvas;J)V

    invoke-virtual {p0, v2, v3}, Lcom/rockrobo/ui/ViewMapView;->postInvalidateDelayed(J)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->drawTargetBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/rockrobo/ui/ViewMapView;->updateSpottingAnimation()V

    iget-object v3, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    iget v5, p0, Lcom/rockrobo/ui/ViewMapView;->spotRadiusRatio:F

    iget v0, p0, Lcom/rockrobo/ui/ViewMapView;->spotTheta:F

    const/high16 v4, 0x42b40000    # 90.0f

    add-float v6, v0, v4

    iget v7, p0, Lcom/rockrobo/ui/ViewMapView;->spotAlpha:F

    iget v8, p0, Lcom/rockrobo/ui/ViewMapView;->spottingFrameNo:I

    iget-object v9, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPath:[F

    iget v10, p0, Lcom/rockrobo/ui/ViewMapView;->spotRobotPathIndex:I

    move-object v4, p1

    invoke-interface/range {v3 .. v10}, Lcom/rockrobo/map/MapPainterI;->drawSpottingRobot(Landroid/graphics/Canvas;FFFI[FI)V

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/rockrobo/ui/ViewMapView;->postInvalidateDelayed(J)V

    return-void
.end method

.method public onScroll(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0}, Lcom/rockrobo/map/MapPainterI;->mapPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/rockrobo/map/MapPainterI;->translate(FFFF)V

    invoke-virtual {p0}, Lcom/rockrobo/ui/ViewMapView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p3, Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/rockrobo/ui/ViewMapView;->viewRect:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    iget-object p2, p0, Lcom/rockrobo/ui/ViewMapView;->viewRect:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/rockrobo/ui/ViewMapView;->viewRect:Landroid/graphics/Rect;

    invoke-interface {p1, p2, p3}, Lcom/rockrobo/map/MapPainterI;->setViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public scaleMap(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0}, Lcom/rockrobo/map/MapPainterI;->mapPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1, p2, p3}, Lcom/rockrobo/map/MapPainterI;->scaleMap(FFF)V

    invoke-virtual {p0}, Lcom/rockrobo/ui/ViewMapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    invoke-virtual {p1, v0}, Lcom/rockrobo/common/CleanInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/rockrobo/ui/ViewMapView;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    iget-object p1, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    invoke-interface {p1, v0}, Lcom/rockrobo/map/MapPainterI;->setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V

    return-void
.end method

.method public setMapInfo(Lcom/rockrobo/map/MapInfo;)V
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/ViewMapView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setMapInfo entry!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-virtual {p1, v0}, Lcom/rockrobo/map/MapInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/rockrobo/ui/ViewMapView;->mapInfo:Lcom/rockrobo/map/MapInfo;

    iget-object p1, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-interface {p1, v0}, Lcom/rockrobo/map/MapPainterI;->setMapInfo(Lcom/rockrobo/map/MapInfo;)V

    invoke-virtual {p0}, Lcom/rockrobo/ui/ViewMapView;->invalidate()V

    return-void
.end method

.method public setMapLoadingFailed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapLoadingFailed:Z

    invoke-virtual {p0}, Lcom/rockrobo/ui/ViewMapView;->invalidate()V

    return-void
.end method

.method public setRobotStatus(Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/CleanStrategy;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {p1, v0}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

    invoke-virtual {p2, v0}, Lcom/rockrobo/clean/CleanStrategy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/rockrobo/ui/ViewMapView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-object p2, p0, Lcom/rockrobo/ui/ViewMapView;->cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

    iget-object v0, p0, Lcom/rockrobo/ui/ViewMapView;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1, p2}, Lcom/rockrobo/map/MapPainterI;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/CleanStrategy;)V

    invoke-virtual {p0}, Lcom/rockrobo/ui/ViewMapView;->invalidate()V

    return-void
.end method
