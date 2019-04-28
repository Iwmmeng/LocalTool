.class public Lcom/rockrobo/map/MapViewMainResourceManager;
.super Lcom/rockrobo/map/MapViewBaseResourceManager;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static MapViewCleanInfoSquareSymbolPaint:Landroid/graphics/Paint; = null

.field public static final SPOTTING_BRUSH_FRAME_NUMBER:I = 0xd

.field private static backgroundBmp:Landroid/graphics/Bitmap; = null

.field private static loadingBrushRectF:Landroid/graphics/RectF; = null

.field private static loadingDesc:Ljava/lang/String; = null

.field private static loadingRobotRectF:Landroid/graphics/RectF; = null

.field private static mapViewCleanInfoAreaDesc:Ljava/lang/String; = null

.field private static mapViewCleanInfoDurationDesc:Ljava/lang/String; = null

.field private static mapViewCleanInfoNumberPaint:Landroid/graphics/Paint; = null

.field private static mapViewCleanInfoSepHeight:F = -1.0f

.field private static mapViewCleanInfoSepHorizontalMargin:F = -1.0f

.field private static mapViewCleanInfoSepPaint:Landroid/graphics/Paint; = null

.field private static mapViewCleanInfoY:F = -1.0f

.field private static mapViewStatusPaint:Landroid/graphics/Paint; = null

.field private static mapViewStatusY:F = -1.0f

.field private static normLoadingBrushBmp:Landroid/graphics/Bitmap; = null

.field private static normLoadingRobotBmp:Landroid/graphics/Bitmap; = null

.field private static normalSpottingBrushBmps:[Landroid/graphics/Bitmap; = null

.field private static normalStatusInfoBgBmp:Landroid/graphics/Bitmap; = null

.field private static particlePaint:Landroid/graphics/Paint; = null

.field private static particleRectF:Landroid/graphics/RectF; = null

.field private static sleepingBackgroundBmp:Landroid/graphics/Bitmap; = null

.field private static sleepingLoadingBrushBmp:Landroid/graphics/Bitmap; = null

.field private static sleepingLoadingRobotBmp:Landroid/graphics/Bitmap; = null

.field private static sleepingParticlePaint:Landroid/graphics/Paint; = null

.field private static sleepingSpottingBrushBmps:[Landroid/graphics/Bitmap; = null

.field private static sleepingStatusInfoBgBmp:Landroid/graphics/Bitmap; = null

.field private static spotRotateBmp:Landroid/graphics/Bitmap; = null

.field private static spotRotateCanvas:Landroid/graphics/Canvas; = null

.field private static spotRotateDegree:I = -0x1

.field private static spottingBrushRectF:Landroid/graphics/RectF; = null

.field private static spottingRobotBmp:Landroid/graphics/Bitmap; = null

.field private static spottingRobotPaint:Landroid/graphics/Paint; = null

.field private static spottingRobotPathPaint:Landroid/graphics/Paint; = null

.field private static spottingRobotRadiusLimit:F = -1.0f

.field private static spottingRobotSize:F = -1.0f

.field private static statusChargingText:Ljava/lang/String; = null

.field private static statusCommonCleanText:Ljava/lang/String; = null

.field private static statusWallAlongText:Ljava/lang/String; = null

.field private static targetBackgroundCenter:Landroid/graphics/PointF; = null

.field private static targetCircleRadiusDelta:F = -1.0f

.field private static targetCrossRectF:Landroid/graphics/RectF;

.field private static targetLinePaint:Landroid/graphics/Paint;

.field private static tempRectF:Landroid/graphics/RectF;


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

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v1, v0, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/rockrobo/map/MapViewMainResourceManager;->normalSpottingBrushBmps:[Landroid/graphics/Bitmap;

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingSpottingBrushBmps:[Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->tempRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/map/MapViewBaseResourceManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private buildStatusInfoBgBmp(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float p2, p2, v1

    new-instance v0, Landroid/graphics/Rect;

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/rockrobo/map/MapViewMainResourceManager;->getDitherPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, p1, v0, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object p3
.end method

.method private getNormParticlePaint(I)Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->particlePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->particlePaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->particlePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0300a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->particlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->particlePaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method private getNormalBackgroundBmp()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->backgroundBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f05013e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->backgroundBmp:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->backgroundBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getNormalSpottingBrushBmp(Lcom/rockrobo/clean/RobotStatus;FI)Landroid/graphics/Bitmap;
    .locals 5

    rem-int/lit8 p3, p3, 0xd

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->normalSpottingBrushBmps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p3

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/rockrobo/map/MapViewMainResourceManager;->getLoadingBrushBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->normalSpottingBrushBmps:[Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p3

    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/rockrobo/map/MapViewMainResourceManager;->normalSpottingBrushBmps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v1, p3

    const v2, 0x41dd89d9

    mul-float v1, v1, v2

    sget-object v2, Lcom/rockrobo/map/MapViewMainResourceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Brush rotate degree:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    neg-float v1, v1

    int-to-float p2, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, p2, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->normalSpottingBrushBmps:[Landroid/graphics/Bitmap;

    aget-object p1, p1, p3

    return-object p1
.end method

.method private getNormalStatusInfoBgBmp(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->normalStatusInfoBgBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/rockrobo/map/MapViewMainResourceManager;->buildStatusInfoBgBmp(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->normalStatusInfoBgBmp:Landroid/graphics/Bitmap;

    :cond_0
    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->normalStatusInfoBgBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private getSleepingBackgroundBmp()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingBackgroundBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f05013f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingBackgroundBmp:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingBackgroundBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getSleepingParticlePaint(I)Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingParticlePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingParticlePaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingParticlePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0300a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingParticlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingParticlePaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method private getSleepingSpottingBrushBmp(Lcom/rockrobo/clean/RobotStatus;FI)Landroid/graphics/Bitmap;
    .locals 4

    rem-int/lit8 p3, p3, 0xd

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingSpottingBrushBmps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p3

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/rockrobo/map/MapViewMainResourceManager;->getLoadingBrushBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingSpottingBrushBmps:[Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p3

    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingSpottingBrushBmps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v1, p3

    const v2, 0x41dd89d9

    mul-float v1, v1, v2

    neg-float v1, v1

    int-to-float p2, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, p2, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingSpottingBrushBmps:[Landroid/graphics/Bitmap;

    aget-object p1, p1, p3

    return-object p1
.end method

.method private getSleepingStatusInfoBgBmp(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingStatusInfoBgBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/rockrobo/map/MapViewMainResourceManager;->buildStatusInfoBgBmp(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingStatusInfoBgBmp:Landroid/graphics/Bitmap;

    :cond_0
    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingStatusInfoBgBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private releaseBitmapArray([Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/rockrobo/map/MapViewMainResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBackgroundBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/map/MapViewMainResourceManager;->getSleepingBackgroundBmp()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/rockrobo/map/MapViewMainResourceManager;->getNormalBackgroundBmp()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getCleanInfoHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLoadingBrushBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/rockrobo/map/MapViewMainResourceManager;->getNormLoadingBrushBmp()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/rockrobo/map/MapViewMainResourceManager;->getSleepingLoadingBrushBmp()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLoadingBrushRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->loadingBrushRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0400dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0400dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v2, v0

    sub-float/2addr v3, v0

    sub-float/2addr p1, v0

    add-float v0, v3, v2

    add-float/2addr v2, p1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3, p1, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v1, Lcom/rockrobo/map/MapViewMainResourceManager;->loadingBrushRectF:Landroid/graphics/RectF;

    :cond_0
    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->loadingBrushRectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method public getLoadingDesc()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->loadingDesc:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->loadingDesc:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->loadingDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadingRobotBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/rockrobo/map/MapViewMainResourceManager;->getSleepingLoadingRobotBmp()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/rockrobo/map/MapViewMainResourceManager;->getNormLoadingRobotBmp()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLoadingRobotRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 4

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->loadingRobotRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0400df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    sub-float/2addr v0, v2

    sub-float/2addr p1, v2

    add-float v2, v0, v1

    add-float/2addr v1, p1

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0, p1, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v3, Lcom/rockrobo/map/MapViewMainResourceManager;->loadingRobotRectF:Landroid/graphics/RectF;

    :cond_0
    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->loadingRobotRectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method public getMapViewCleanInfoAreaDescFormat()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoAreaDesc:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoAreaDesc:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoAreaDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getMapViewCleanInfoDurationDescFormat()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoDurationDesc:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoDurationDesc:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoDurationDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getMapViewCleanInfoNumberPaint()Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoNumberPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoNumberPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoNumberPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0300bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoNumberPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f04013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoNumberPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getMapViewCleanInfoSepHeight(Landroid/graphics/Rect;)F
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoSepHeight:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x41600000    # 14.0f

    mul-float p1, p1, v0

    const v0, 0x44004000    # 513.0f

    div-float/2addr p1, v0

    sput p1, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoSepHeight:F

    :cond_0
    sget p1, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoSepHeight:F

    return p1
.end method

.method public getMapViewCleanInfoSepHorizontalMargin()F
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoSepHorizontalMargin:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f040138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoSepHorizontalMargin:F

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoSepHorizontalMargin:F

    return v0
.end method

.method public getMapViewCleanInfoSepPaint()Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoSepPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoSepPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoSepPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoSepPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f040139

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoSepPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0300bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoSepPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getMapViewCleanInfoSquareSymbolPaint()Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->MapViewCleanInfoSquareSymbolPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->MapViewCleanInfoSquareSymbolPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->MapViewCleanInfoSquareSymbolPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0300bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->MapViewCleanInfoSquareSymbolPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f04013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->MapViewCleanInfoSquareSymbolPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getMapViewCleanInfoY(Landroid/graphics/Rect;)F
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoY:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f7206fc

    mul-float p1, p1, v0

    sput p1, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoY:F

    :cond_0
    sget p1, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewCleanInfoY:F

    return p1
.end method

.method public getMapViewStatusPaint()Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewStatusPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewStatusPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewStatusPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f04013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewStatusPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0300bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewStatusPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewStatusPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getMapViewStatusY(Landroid/graphics/Rect;)F
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewStatusY:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f658d39

    mul-float p1, p1, v0

    sput p1, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewStatusY:F

    :cond_0
    sget p1, Lcom/rockrobo/map/MapViewMainResourceManager;->mapViewStatusY:F

    return p1
.end method

.method public getNormLoadingBrushBmp()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->normLoadingBrushBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f050119

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->normLoadingBrushBmp:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->normLoadingBrushBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNormLoadingRobotBmp()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->normLoadingRobotBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f05011b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->normLoadingRobotBmp:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->normLoadingRobotBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getParticlePaint(Lcom/rockrobo/clean/RobotStatus;I)Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/rockrobo/map/MapViewMainResourceManager;->getSleepingParticlePaint(I)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p2}, Lcom/rockrobo/map/MapViewMainResourceManager;->getNormParticlePaint(I)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public getParticleRectF(Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 4

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->particleRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget-object v2, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0400ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr p2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0, v1, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v2, Lcom/rockrobo/map/MapViewMainResourceManager;->particleRectF:Landroid/graphics/RectF;

    :cond_0
    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->particleRectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method public getSleepingLoadingBrushBmp()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingLoadingBrushBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f05011a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingLoadingBrushBmp:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingLoadingBrushBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSleepingLoadingRobotBmp()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingLoadingRobotBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f05011c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingLoadingRobotBmp:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingLoadingRobotBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSpottingBrushBmp(Lcom/rockrobo/clean/RobotStatus;FI)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/rockrobo/map/MapViewMainResourceManager;->getSleepingSpottingBrushBmp(Lcom/rockrobo/clean/RobotStatus;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/rockrobo/map/MapViewMainResourceManager;->getNormalSpottingBrushBmp(Lcom/rockrobo/clean/RobotStatus;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getSpottingBrushRectF([FF)Landroid/graphics/RectF;
    .locals 3

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingBrushRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingBrushRectF:Landroid/graphics/RectF;

    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr p2, v1

    sub-float v1, v0, p2

    sub-float v2, p1, p2

    add-float/2addr v0, p2

    add-float/2addr p1, p2

    sget-object p2, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingBrushRectF:Landroid/graphics/RectF;

    invoke-virtual {p2, v1, v2, v0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingBrushRectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method public getSpottingRobotBmp(FF)Landroid/graphics/Bitmap;
    .locals 4

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    float-to-int v0, p1

    float-to-int v1, p2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotBmp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0501d8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    sget-object v2, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotBmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/rockrobo/map/MapViewMainResourceManager;->getAntiAliasPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {v1, v0, p1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getSpottingRobotPaint(I)Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotPaint:Landroid/graphics/Paint;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method public getSpottingRobotPathPaint(I)Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotPathPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotPathPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotPathPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0300bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotPathPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f04013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotPathPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method public getSpottingRobotRadiusLimit(Landroid/graphics/Rect;)F
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotRadiusLimit:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p0, p1}, Lcom/rockrobo/map/MapViewMainResourceManager;->getTargetCircleRadiusDelta(Landroid/graphics/Rect;)F

    move-result p1

    mul-float p1, p1, v0

    sput p1, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotRadiusLimit:F

    :cond_0
    sget p1, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotRadiusLimit:F

    return p1
.end method

.method public getSpottingRobotSize(Landroid/graphics/Rect;)F
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotSize:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const v0, 0x3dac42fe

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    sput p1, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotSize:F

    :cond_0
    sget p1, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotSize:F

    return p1
.end method

.method public getStatusChargingText()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->statusChargingText:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->statusChargingText:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->statusChargingText:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCommonCleanText()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->statusCommonCleanText:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->statusCommonCleanText:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->statusCommonCleanText:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusInfoBgBmp(Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/rockrobo/map/MapViewMainResourceManager;->getBackgroundBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0, p2, p3}, Lcom/rockrobo/map/MapViewMainResourceManager;->getSleepingStatusInfoBgBmp(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/rockrobo/map/MapViewMainResourceManager;->getNormalStatusInfoBgBmp(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getStatusWallAlongText()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->statusWallAlongText:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->statusWallAlongText:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->statusWallAlongText:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetBackgroundCenter(Landroid/graphics/Rect;)Landroid/graphics/PointF;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->targetBackgroundCenter:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3ee10f78

    mul-float p1, p1, v1

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v1, Lcom/rockrobo/map/MapViewMainResourceManager;->targetBackgroundCenter:Landroid/graphics/PointF;

    :cond_0
    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->targetBackgroundCenter:Landroid/graphics/PointF;

    return-object p1
.end method

.method public getTargetCircleRadiusDelta(Landroid/graphics/Rect;)F
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewMainResourceManager;->targetCircleRadiusDelta:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3d191f1a

    mul-float p1, p1, v0

    sput p1, Lcom/rockrobo/map/MapViewMainResourceManager;->targetCircleRadiusDelta:F

    :cond_0
    sget p1, Lcom/rockrobo/map/MapViewMainResourceManager;->targetCircleRadiusDelta:F

    return p1
.end method

.method public getTargetCrossRectF(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/RectF;
    .locals 3

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->targetCrossRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const v0, 0x3ee27e02

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    iget v0, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, p1

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v0, v2, v1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->targetCrossRectF:Landroid/graphics/RectF;

    :cond_0
    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->targetCrossRectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method public getTargetLinePaint()Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->targetLinePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->targetLinePaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->targetLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->targetLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->targetLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f04013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->targetLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewMainResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0300be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->targetLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public releaseResources()V
    .locals 2

    invoke-super {p0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->releaseResources()V

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/rockrobo/map/MapViewMainResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingBackgroundBmp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/map/MapViewMainResourceManager;->backgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/rockrobo/map/MapViewMainResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->backgroundBmp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingLoadingRobotBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/rockrobo/map/MapViewMainResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingLoadingRobotBmp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/map/MapViewMainResourceManager;->normLoadingRobotBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/rockrobo/map/MapViewMainResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->normLoadingRobotBmp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/map/MapViewMainResourceManager;->normLoadingBrushBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/rockrobo/map/MapViewMainResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->normLoadingBrushBmp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingLoadingBrushBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/rockrobo/map/MapViewMainResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingLoadingBrushBmp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/rockrobo/map/MapViewMainResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spottingRobotBmp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/map/MapViewMainResourceManager;->spotRotateBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/rockrobo/map/MapViewMainResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spotRotateBmp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/map/MapViewMainResourceManager;->normalStatusInfoBgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/rockrobo/map/MapViewMainResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->normalStatusInfoBgBmp:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->normalSpottingBrushBmps:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/rockrobo/map/MapViewMainResourceManager;->releaseBitmapArray([Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->sleepingSpottingBrushBmps:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/rockrobo/map/MapViewMainResourceManager;->releaseBitmapArray([Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public spotRotateBmp(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Lcom/rockrobo/map/MapViewMainResourceManager;->spotRotateBmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/rockrobo/map/MapViewMainResourceManager;->spotRotateBmp:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    sget-object v3, Lcom/rockrobo/map/MapViewMainResourceManager;->spotRotateBmp:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v2, Lcom/rockrobo/map/MapViewMainResourceManager;->spotRotateCanvas:Landroid/graphics/Canvas;

    :cond_0
    float-to-int p2, p2

    rem-int/lit16 p2, p2, 0x168

    sget v2, Lcom/rockrobo/map/MapViewMainResourceManager;->spotRotateDegree:I

    if-eq v2, p2, :cond_1

    sget-object v2, Lcom/rockrobo/map/MapViewMainResourceManager;->spotRotateCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v2, Lcom/rockrobo/map/MapViewMainResourceManager;->spotRotateCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    sget-object v2, Lcom/rockrobo/map/MapViewMainResourceManager;->spotRotateCanvas:Landroid/graphics/Canvas;

    int-to-float v3, p2

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    int-to-float v1, v1

    div-float v4, v1, v4

    invoke-virtual {v2, v3, v5, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    sget-object v2, Lcom/rockrobo/map/MapViewMainResourceManager;->tempRectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Lcom/rockrobo/map/MapViewMainResourceManager;->spotRotateCanvas:Landroid/graphics/Canvas;

    sget-object v1, Lcom/rockrobo/map/MapViewMainResourceManager;->tempRectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->spotRotateCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sput p2, Lcom/rockrobo/map/MapViewMainResourceManager;->spotRotateDegree:I

    :cond_1
    sget-object p1, Lcom/rockrobo/map/MapViewMainResourceManager;->spotRotateBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method
