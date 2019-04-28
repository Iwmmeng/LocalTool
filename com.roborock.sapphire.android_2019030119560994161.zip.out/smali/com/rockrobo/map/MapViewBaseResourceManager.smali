.class public abstract Lcom/rockrobo/map/MapViewBaseResourceManager;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static antiAliasPaint:Landroid/graphics/Paint; = null

.field private static destinationInPaint:Landroid/graphics/Paint; = null

.field private static ditherPaint:Landroid/graphics/Paint; = null

.field private static dockBitmap:Landroid/graphics/Bitmap; = null

.field private static dockHalfHeight:I = -0x1

.field private static dockHalfWidth:I = -0x1

.field private static mapPadding:I = -0x1

.field private static mapPaint:Landroid/graphics/Paint; = null

.field private static mapSpaceColor:I = -0x1

.field private static mapViewBottomTextPaint:Landroid/graphics/Paint; = null

.field private static noMapPromptRectF:Landroid/graphics/RectF; = null

.field private static noMapPromptText:Ljava/lang/String; = null

.field private static normalMapNotPresentPromptBitmap:Landroid/graphics/Bitmap; = null

.field private static normalRobotBitmap:Landroid/graphics/Bitmap; = null

.field private static obstacleColor:I = -0x1

.field private static robotHalfHeight:I = -0x1

.field private static robotHalfWidth:I = -0x1

.field private static robotHaloColor:I = -0x1

.field private static robotHaloPaint:Landroid/graphics/Paint; = null

.field private static robotHaloRadius:I = -0x1

.field private static robotSpotColor:I = -0x1

.field private static robotSpotPaint:Landroid/graphics/Paint; = null

.field private static robotSpotRadius:I = -0x1

.field private static sleepingMapNotPresentPromptBitmap:Landroid/graphics/Bitmap; = null

.field private static sleepingMapSpaceColor:I = -0x1

.field private static sleepingObstacleColor:I = -0x1

.field private static sleepingRobotBitmap:Landroid/graphics/Bitmap; = null

.field private static titleBarHeight:I = -0x1


# instance fields
.field protected backgroundColor:I

.field protected backgroundColorGot:Z

.field private mapViewBottomTextBottomMargin:F

.field protected final resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->backgroundColorGot:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapViewBottomTextBottomMargin:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method private getNormalMapSpaceColor()I
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapSpaceColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0300b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapSpaceColor:I

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapSpaceColor:I

    return v0
.end method

.method private getNormalObstacleColor()I
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->obstacleColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0300af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->obstacleColor:I

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->obstacleColor:I

    return v0
.end method

.method private getNormalRobotBitmap()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->normalRobotBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f050145

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->normalRobotBitmap:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->normalRobotBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getSleepingMapSpaceColor()I
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingMapSpaceColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0300b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingMapSpaceColor:I

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingMapSpaceColor:I

    return v0
.end method

.method private getSleepingObstacleColor()I
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingObstacleColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0300b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingObstacleColor:I

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingObstacleColor:I

    return v0
.end method

.method private getSleepingRobotBitmap()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingRobotBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f050146

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingRobotBitmap:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingRobotBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public getAntiAliasPaint()Landroid/graphics/Paint;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->antiAliasPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->antiAliasPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->antiAliasPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->antiAliasPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public abstract getBackgroundBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;
.end method

.method public getBackgroundColor()I
    .locals 2

    iget-boolean v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->backgroundColorGot:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0300ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->backgroundColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->backgroundColorGot:Z

    :cond_0
    iget v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->backgroundColor:I

    return v0
.end method

.method public getCleanAreaColor(Lcom/rockrobo/clean/RobotStatus;)I
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getSleepingMapSpaceColor()I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getNormalMapSpaceColor()I

    move-result p1

    return p1
.end method

.method public abstract getCleanInfoHeight()I
.end method

.method public getDestinationInPaint()Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->destinationInPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->destinationInPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->destinationInPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->destinationInPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDitherPaint()Landroid/graphics/Paint;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->ditherPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->ditherPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->ditherPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->ditherPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDockBitmap()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->dockBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0500d5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->dockBitmap:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->dockBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDockHalfHeight()I
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->dockHalfHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->dockHalfHeight:I

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->dockHalfHeight:I

    return v0
.end method

.method public getDockHalfWidth()I
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->dockHalfWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->dockHalfWidth:I

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->dockHalfWidth:I

    return v0
.end method

.method public abstract getLoadingBrushBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;
.end method

.method public abstract getLoadingBrushRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;
.end method

.method public abstract getLoadingDesc()Ljava/lang/String;
.end method

.method public abstract getLoadingRobotBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;
.end method

.method public abstract getLoadingRobotRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
.end method

.method public getMapNotPresentPromptBitmap(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getSleepingMapNotPresentPromptBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getNormalMapNotPresentPromptBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getMapPadding()I
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapPadding:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f04010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapPadding:I

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapPadding:I

    return v0
.end method

.method public getMapPaint()Landroid/graphics/Paint;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getMapViewBottomTextBottomMargin()F
    .locals 2

    iget v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapViewBottomTextBottomMargin:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapViewBottomTextBottomMargin:F

    :cond_0
    iget v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapViewBottomTextBottomMargin:F

    return v0
.end method

.method public getMapViewBottomTextPaint()Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapViewBottomTextPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapViewBottomTextPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapViewBottomTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0300a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapViewBottomTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f04010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapViewBottomTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->mapViewBottomTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public abstract getMapViewCleanInfoAreaDescFormat()Ljava/lang/String;
.end method

.method public abstract getMapViewCleanInfoDurationDescFormat()Ljava/lang/String;
.end method

.method public abstract getMapViewCleanInfoNumberPaint()Landroid/graphics/Paint;
.end method

.method public abstract getMapViewCleanInfoSepHeight(Landroid/graphics/Rect;)F
.end method

.method public abstract getMapViewCleanInfoSepHorizontalMargin()F
.end method

.method public abstract getMapViewCleanInfoSepPaint()Landroid/graphics/Paint;
.end method

.method public abstract getMapViewCleanInfoSquareSymbolPaint()Landroid/graphics/Paint;
.end method

.method public abstract getMapViewCleanInfoY(Landroid/graphics/Rect;)F
.end method

.method public abstract getMapViewStatusPaint()Landroid/graphics/Paint;
.end method

.method public abstract getMapViewStatusY(Landroid/graphics/Rect;)F
.end method

.method public getNoMapPromptRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 5

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->noMapPromptRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const v0, 0x3e803fe0

    const v1, 0x3e80cccd

    const/high16 v2, 0x3e200000    # 0.15625f

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    add-float/2addr v3, v4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    add-float/2addr v0, v4

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v2

    sub-float/2addr v1, p1

    sub-float p1, v1, v0

    const v2, 0x3f900720

    mul-float p1, p1, v2

    add-float/2addr p1, v3

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0, v3, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v2, Lcom/rockrobo/map/MapViewBaseResourceManager;->noMapPromptRectF:Landroid/graphics/RectF;

    :cond_0
    sget-object p1, Lcom/rockrobo/map/MapViewBaseResourceManager;->noMapPromptRectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method public getNoMapPromptText()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->noMapPromptText:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->noMapPromptText:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->noMapPromptText:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalMapNotPresentPromptBitmap()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->normalMapNotPresentPromptBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f050141

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->normalMapNotPresentPromptBitmap:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->normalMapNotPresentPromptBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getObstacleColor(Lcom/rockrobo/clean/RobotStatus;)I
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getSleepingObstacleColor()I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getNormalObstacleColor()I

    move-result p1

    return p1
.end method

.method public abstract getParticlePaint(Lcom/rockrobo/clean/RobotStatus;I)Landroid/graphics/Paint;
.end method

.method public abstract getParticleRectF(Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRobotBitmap(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getSleepingRobotBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getNormalRobotBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getRobotHalfHeight()I
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHalfHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f040115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHalfHeight:I

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHalfHeight:I

    return v0
.end method

.method public getRobotHalfWidth()I
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHalfWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f040116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHalfWidth:I

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHalfWidth:I

    return v0
.end method

.method public getRobotHaloColor()I
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHaloColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0300d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHaloColor:I

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHaloColor:I

    return v0
.end method

.method public getRobotHaloPaint()Landroid/graphics/Paint;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHaloPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHaloPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHaloPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getRobotHaloColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHaloPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRobotHaloRadius()I
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHaloRadius:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f040174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHaloRadius:I

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotHaloRadius:I

    return v0
.end method

.method public getRobotSpotColor()I
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotSpotColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0300d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotSpotColor:I

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotSpotColor:I

    return v0
.end method

.method public getRobotSpotPaint()Landroid/graphics/Paint;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotSpotPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotSpotPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotSpotPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotSpotPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getRobotSpotColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotSpotPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRobotSpotRadius()F
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotSpotRadius:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f040175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotSpotRadius:I

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->robotSpotRadius:I

    int-to-float v0, v0

    return v0
.end method

.method public getSleepingMapNotPresentPromptBitmap()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingMapNotPresentPromptBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f050142

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingMapNotPresentPromptBitmap:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingMapNotPresentPromptBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public abstract getSpottingBrushBmp(Lcom/rockrobo/clean/RobotStatus;FI)Landroid/graphics/Bitmap;
.end method

.method public abstract getSpottingBrushRectF([FF)Landroid/graphics/RectF;
.end method

.method public abstract getSpottingRobotBmp(FF)Landroid/graphics/Bitmap;
.end method

.method public abstract getSpottingRobotPaint(I)Landroid/graphics/Paint;
.end method

.method public abstract getSpottingRobotPathPaint(I)Landroid/graphics/Paint;
.end method

.method public abstract getSpottingRobotRadiusLimit(Landroid/graphics/Rect;)F
.end method

.method public abstract getSpottingRobotSize(Landroid/graphics/Rect;)F
.end method

.method public abstract getStatusChargingText()Ljava/lang/String;
.end method

.method public abstract getStatusCommonCleanText()Ljava/lang/String;
.end method

.method public abstract getStatusInfoBgBmp(Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
.end method

.method public abstract getStatusWallAlongText()Ljava/lang/String;
.end method

.method public abstract getTargetBackgroundCenter(Landroid/graphics/Rect;)Landroid/graphics/PointF;
.end method

.method public abstract getTargetCircleRadiusDelta(Landroid/graphics/Rect;)F
.end method

.method public abstract getTargetCrossRectF(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/RectF;
.end method

.method public abstract getTargetLinePaint()Landroid/graphics/Paint;
.end method

.method public getTitleBarHeight()I
    .locals 2

    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->titleBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapViewBaseResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0401ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->titleBarHeight:I

    :cond_0
    sget v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->titleBarHeight:I

    return v0
.end method

.method protected releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public releaseResources()V
    .locals 2

    sget-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->dockBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->dockBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingMapNotPresentPromptBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingMapNotPresentPromptBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/map/MapViewBaseResourceManager;->normalMapNotPresentPromptBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->normalMapNotPresentPromptBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/map/MapViewBaseResourceManager;->normalRobotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->normalRobotBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingRobotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/map/MapViewBaseResourceManager;->sleepingRobotBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public abstract spotRotateBmp(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
.end method
