.class public Lcom/rockrobo/map/MapShareBuilder;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final cleanAreaTitle:Ljava/lang/String;

.field private final cleanAreaTitleW:F

.field private final cleanDurationTitle:Ljava/lang/String;

.field private final cleanDurationTitleW:F

.field private final dockHalfHeight:I

.field private final dockHalfWidth:I

.field private final infoBarNumberPaint:Landroid/graphics/Paint;

.field private final infoBarTitlePaint:Landroid/graphics/Paint;

.field private final mapAreaTitle:Ljava/lang/String;

.field private final mapAreaTitleW:F

.field private mapBuilder:Lcom/rockrobo/map/MapBuilder;

.field private final mapView:Lcom/rockrobo/map/MapViewI;

.field private final resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

.field private resources:Landroid/content/res/Resources;

.field private final robotPaint:Landroid/graphics/Paint;

.field private final runningRobotHeight:F

.field private final runningRobotWidth:F

.field private subTitlePaint:Landroid/graphics/Paint;

.field private final superscriptPaint:Landroid/graphics/Paint;

.field private titlePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/map/MapShareBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapShareBuilder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/rockrobo/map/MapViewI;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-interface {p1}, Lcom/rockrobo/map/MapViewI;->getResourceManager()Lcom/rockrobo/map/MapViewBaseResourceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {p1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    new-instance p1, Lcom/rockrobo/map/MapBuilder;

    iget-object v0, p0, Lcom/rockrobo/map/MapShareBuilder;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-direct {p1, v0}, Lcom/rockrobo/map/MapBuilder;-><init>(Lcom/rockrobo/map/MapViewBaseResourceManager;)V

    iput-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->mapBuilder:Lcom/rockrobo/map/MapBuilder;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->titlePaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->titlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0300b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->titlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v2, 0x7f040131

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->subTitlePaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->subTitlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v2, 0x7f04012d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->subTitlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->infoBarTitlePaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->infoBarTitlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->infoBarTitlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v2, 0x7f04011e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v0, 0x7f0a0119

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->cleanAreaTitle:Ljava/lang/String;

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->infoBarTitlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rockrobo/map/MapShareBuilder;->cleanAreaTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/rockrobo/map/MapShareBuilder;->cleanAreaTitleW:F

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v0, 0x7f0a011a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->cleanDurationTitle:Ljava/lang/String;

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->infoBarTitlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rockrobo/map/MapShareBuilder;->cleanDurationTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/rockrobo/map/MapShareBuilder;->cleanDurationTitleW:F

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v0, 0x7f0a0117

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->mapAreaTitle:Ljava/lang/String;

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->infoBarTitlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rockrobo/map/MapShareBuilder;->mapAreaTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/rockrobo/map/MapShareBuilder;->mapAreaTitleW:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->infoBarNumberPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->infoBarNumberPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->infoBarNumberPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v2, 0x7f04011c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->superscriptPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->superscriptPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->superscriptPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v1, 0x7f04011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v0, 0x7f0400ff

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/rockrobo/map/MapShareBuilder;->dockHalfWidth:I

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v0, 0x7f0400fe

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/rockrobo/map/MapShareBuilder;->dockHalfHeight:I

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v0, 0x7f04017c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/rockrobo/map/MapShareBuilder;->runningRobotWidth:F

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v0, 0x7f04017b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/rockrobo/map/MapShareBuilder;->runningRobotHeight:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->robotPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->robotPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private randomTitleId()I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const v1, 0x7f0a01dc

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const v0, 0x7f0a01e9

    return v0

    :pswitch_1
    const v0, 0x7f0a01e8

    return v0

    :pswitch_2
    const v0, 0x7f0a01e7

    return v0

    :pswitch_3
    const v0, 0x7f0a01e6

    return v0

    :pswitch_4
    const v0, 0x7f0a01e5

    return v0

    :pswitch_5
    const v0, 0x7f0a01e4

    return v0

    :pswitch_6
    const v0, 0x7f0a01e3

    return v0

    :pswitch_7
    const v0, 0x7f0a01e2

    return v0

    :pswitch_8
    const v0, 0x7f0a01e1

    return v0

    :pswitch_9
    const v0, 0x7f0a01e0

    return v0

    :pswitch_a
    const v0, 0x7f0a01df

    return v0

    :pswitch_b
    const v0, 0x7f0a01de

    return v0

    :pswitch_c
    const v0, 0x7f0a01dd

    return v0

    :pswitch_d
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private transformChargerLocation(Lcom/rockrobo/map/MapInfo;Landroid/graphics/Matrix;)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getChargerLocation()[F

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getChargerLocation()[F

    move-result-object v0

    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getChargerLocation()[F

    move-result-object p1

    array-length p1, p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 p2, 0x0

    aget p2, p1, p2

    float-to-int p2, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    float-to-int p1, p1

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/rockrobo/map/MapShareBuilder;->dockHalfWidth:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/rockrobo/map/MapShareBuilder;->dockHalfHeight:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/rockrobo/map/MapShareBuilder;->dockHalfWidth:I

    add-int/2addr p2, v3

    iget v3, p0, Lcom/rockrobo/map/MapShareBuilder;->dockHalfHeight:I

    add-int/2addr p1, v3

    invoke-direct {v0, v1, v2, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private transformRobotLocation(Lcom/rockrobo/map/MapInfo;Landroid/graphics/Matrix;)Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getRobotLocation()[F

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getRobotLocation()[F

    move-result-object v0

    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getRobotLocation()[F

    move-result-object p1

    array-length p1, p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 p2, 0x0

    aget p2, p1, p2

    float-to-int p2, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/rockrobo/map/MapShareBuilder;->runningRobotWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, p0, Lcom/rockrobo/map/MapShareBuilder;->runningRobotHeight:F

    div-float/2addr v2, v1

    float-to-int v1, v2

    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, p2, v0

    sub-int v4, p1, v1

    add-int/2addr p2, v0

    add-int/2addr p1, v1

    invoke-direct {v2, v3, v4, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public createShareBitmap()Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v6, p0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, v6, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v2, 0x7f040133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, v6, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v3, 0x7f04011a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x1e0

    iput v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    iput v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    iput v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v1, v1, 0xa0

    int-to-float v1, v1

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    new-instance v7, Landroid/content/res/Resources;

    iget-object v1, v6, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v4, v6, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v7, v1, v0, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, v6, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0300b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, v6, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v1, 0x7f040130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/rockrobo/map/MapShareBuilder;->randomTitleId()I

    move-result v5

    const v0, 0x7f04012f

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    move-object v0, v6

    move-object v1, v11

    move v3, v13

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/rockrobo/map/MapShareBuilder;->drawTitle(Landroid/graphics/Canvas;FFII)F

    move-result v0

    invoke-virtual {v6, v11, v13, v0}, Lcom/rockrobo/map/MapShareBuilder;->drawSubTitle(Landroid/graphics/Canvas;FF)F

    move-result v0

    const v1, 0x7f04011b

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v1, 0x7f04011f

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f040120

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, v6, Lcom/rockrobo/map/MapShareBuilder;->mapBuilder:Lcom/rockrobo/map/MapBuilder;

    sget-object v4, Lcom/rockrobo/clean/RobotStatus;->CLEAN:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v3, v4}, Lcom/rockrobo/map/MapBuilder;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    iget-object v3, v6, Lcom/rockrobo/map/MapShareBuilder;->mapBuilder:Lcom/rockrobo/map/MapBuilder;

    iget-object v4, v6, Lcom/rockrobo/map/MapShareBuilder;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-interface {v4}, Lcom/rockrobo/map/MapViewI;->getMapInfo()Lcom/rockrobo/map/MapInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/rockrobo/map/MapBuilder;->createMap(Lcom/rockrobo/map/MapInfo;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/high16 v16, 0x40000000    # 2.0f

    if-eqz v14, :cond_2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v17, v10

    const/4 v10, 0x0

    invoke-direct {v4, v10, v10, v5, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    add-int/lit8 v10, v1, 0x0

    int-to-float v10, v10

    int-to-float v15, v2

    add-float/2addr v0, v15

    sub-int v1, v8, v1

    int-to-float v1, v1

    sub-int v15, v9, v13

    sub-int/2addr v15, v2

    int-to-float v2, v15

    invoke-direct {v5, v10, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v0, v0, v2

    div-float v0, v0, v16

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, v2

    div-float v1, v1, v16

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    sub-float/2addr v10, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    sub-float/2addr v15, v1

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v18

    add-float v0, v18, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    add-float/2addr v5, v1

    invoke-direct {v2, v10, v15, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    invoke-virtual {v11, v14, v3, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, v6, Lcom/rockrobo/map/MapShareBuilder;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-interface {v0}, Lcom/rockrobo/map/MapViewI;->getMapInfo()Lcom/rockrobo/map/MapInfo;

    move-result-object v0

    invoke-direct {v6, v0, v3}, Lcom/rockrobo/map/MapShareBuilder;->transformChargerLocation(Lcom/rockrobo/map/MapInfo;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v6, Lcom/rockrobo/map/MapShareBuilder;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v1}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getDockBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v0, v6, Lcom/rockrobo/map/MapShareBuilder;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-interface {v0}, Lcom/rockrobo/map/MapViewI;->getMapInfo()Lcom/rockrobo/map/MapInfo;

    move-result-object v0

    invoke-direct {v6, v0, v3}, Lcom/rockrobo/map/MapShareBuilder;->transformRobotLocation(Lcom/rockrobo/map/MapInfo;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v6, Lcom/rockrobo/map/MapShareBuilder;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    sget-object v3, Lcom/rockrobo/clean/RobotStatus;->CLEAN:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v3}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getRobotBitmap(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, v6, Lcom/rockrobo/map/MapShareBuilder;->robotPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    move-object/from16 v17, v10

    :cond_3
    :goto_2
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    const v0, 0x7f040103

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v0, 0x7f0300ab

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    sub-int v12, v9, v13

    int-to-float v15, v12

    int-to-float v5, v8

    move-object v0, v11

    move v2, v15

    move v3, v5

    move v4, v15

    move/from16 v18, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v0, 0x7f040104

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-double v1, v8

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    div-double/2addr v1, v3

    double-to-int v3, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v4

    double-to-int v8, v1

    sub-int/2addr v13, v0

    int-to-float v1, v13

    div-float v1, v1, v16

    add-float/2addr v15, v1

    float-to-int v1, v15

    int-to-float v3, v3

    int-to-float v13, v1

    add-int/2addr v1, v0

    int-to-float v15, v1

    move-object v0, v11

    move v1, v3

    move v2, v13

    move v4, v15

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v3, v8

    move v1, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v6, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v1, 0x7f050079

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/map/MapShareBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "estimate bitmap width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f040118

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f040117

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f040119

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v12, v3

    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v2, v1

    add-int/2addr v1, v12

    invoke-direct {v3, v2, v12, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, v6, Lcom/rockrobo/map/MapShareBuilder;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-interface {v0}, Lcom/rockrobo/map/MapViewI;->getMapInfo()Lcom/rockrobo/map/MapInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockrobo/map/MapInfo;->getMapData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/rockrobo/map/MapBuilder;->calcMapArea([B)I

    move-result v0

    iget-object v1, v6, Lcom/rockrobo/map/MapShareBuilder;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-interface {v1}, Lcom/rockrobo/map/MapViewI;->getCleanInfo()Lcom/rockrobo/common/CleanInfo;

    move-result-object v1

    int-to-double v2, v0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v7, v2, v4

    const/4 v2, 0x0

    if-gtz v7, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/16 v3, 0x14

    if-ge v0, v3, :cond_5

    invoke-virtual {v1}, Lcom/rockrobo/common/CleanInfo;->getCleanArea()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/rockrobo/common/CleanInfo;->getCleanArea()I

    move-result v3

    add-int/2addr v0, v3

    :goto_3
    if-nez v14, :cond_6

    const/4 v0, 0x0

    :cond_6
    iget-object v2, v6, Lcom/rockrobo/map/MapShareBuilder;->infoBarTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, v6, Lcom/rockrobo/map/MapShareBuilder;->infoBarTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, v6, Lcom/rockrobo/map/MapShareBuilder;->infoBarNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, v6, Lcom/rockrobo/map/MapShareBuilder;->infoBarNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    int-to-float v4, v9

    sub-float/2addr v4, v2

    sub-float v2, v4, v3

    iget-object v3, v6, Lcom/rockrobo/map/MapShareBuilder;->superscriptPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    iget-object v5, v6, Lcom/rockrobo/map/MapShareBuilder;->infoBarNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "2"

    iget-object v7, v6, Lcom/rockrobo/map/MapShareBuilder;->infoBarNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    iget-object v8, v6, Lcom/rockrobo/map/MapShareBuilder;->superscriptPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    add-float/2addr v8, v7

    const/high16 v9, 0x40c00000    # 6.0f

    div-float v9, v18, v9

    div-float v8, v8, v16

    sub-float v8, v9, v8

    iget-object v10, v6, Lcom/rockrobo/map/MapShareBuilder;->infoBarNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v8, v2, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v8, v7

    sub-float v0, v2, v3

    iget-object v3, v6, Lcom/rockrobo/map/MapShareBuilder;->superscriptPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v5, v8, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v3, v6, Lcom/rockrobo/map/MapShareBuilder;->mapAreaTitleW:F

    div-float v3, v3, v16

    sub-float v3, v9, v3

    iget-object v5, v6, Lcom/rockrobo/map/MapShareBuilder;->mapAreaTitle:Ljava/lang/String;

    iget-object v7, v6, Lcom/rockrobo/map/MapShareBuilder;->infoBarTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v5, v3, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/rockrobo/common/CleanInfo;->getCleanArea()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "m"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "2"

    iget-object v7, v6, Lcom/rockrobo/map/MapShareBuilder;->infoBarNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    iget-object v8, v6, Lcom/rockrobo/map/MapShareBuilder;->superscriptPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    add-float/2addr v8, v7

    div-float v10, v18, v16

    div-float v8, v8, v16

    sub-float v8, v10, v8

    iget-object v12, v6, Lcom/rockrobo/map/MapShareBuilder;->infoBarNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v3, v8, v2, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v8, v7

    iget-object v3, v6, Lcom/rockrobo/map/MapShareBuilder;->superscriptPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v5, v8, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, v6, Lcom/rockrobo/map/MapShareBuilder;->cleanAreaTitleW:F

    div-float v0, v0, v16

    sub-float/2addr v10, v0

    iget-object v0, v6, Lcom/rockrobo/map/MapShareBuilder;->cleanAreaTitle:Ljava/lang/String;

    iget-object v3, v6, Lcom/rockrobo/map/MapShareBuilder;->infoBarTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v10, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/rockrobo/common/CleanInfo;->getCleanDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lcom/rockrobo/map/MapShareBuilder;->infoBarNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v9, v9, v3

    div-float v1, v1, v16

    sub-float v1, v9, v1

    iget-object v3, v6, Lcom/rockrobo/map/MapShareBuilder;->infoBarNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, v6, Lcom/rockrobo/map/MapShareBuilder;->cleanDurationTitleW:F

    div-float v0, v0, v16

    sub-float/2addr v9, v0

    iget-object v0, v6, Lcom/rockrobo/map/MapShareBuilder;->cleanDurationTitle:Ljava/lang/String;

    iget-object v1, v6, Lcom/rockrobo/map/MapShareBuilder;->infoBarTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v9, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v17
.end method

.method public createShareFile()Ljava/io/File;
    .locals 5

    const-string v0, "sapphire_map_share.jpeg"

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/rockrobo/map/MapShareBuilder;->createShareBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public drawSubTitle(Landroid/graphics/Canvas;FF)F
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v2, 0x7f040132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr p3, v1

    iget-object v1, p0, Lcom/rockrobo/map/MapShareBuilder;->subTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float v1, p3, v1

    iget-object v2, p0, Lcom/rockrobo/map/MapShareBuilder;->subTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/rockrobo/map/MapShareBuilder;->subTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    sub-float/2addr p3, p1

    return p3
.end method

.method public drawTitle(Landroid/graphics/Canvas;FFII)F
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v2, 0x7f04012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, v0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    const v3, 0x7f04012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, v0, Lcom/rockrobo/map/MapShareBuilder;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iget-object v2, v0, Lcom/rockrobo/map/MapShareBuilder;->resources:Landroid/content/res/Resources;

    move/from16 v5, p5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v6, p2

    move/from16 v5, p3

    const/4 v12, 0x0

    :goto_0
    array-length v7, v2

    if-ge v12, v7, :cond_1

    iget-object v7, v0, Lcom/rockrobo/map/MapShareBuilder;->titlePaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v12, v8}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v7

    add-float/2addr v5, v7

    move/from16 v13, p4

    int-to-float v8, v13

    sub-float/2addr v8, v1

    cmpl-float v8, v5, v8

    if-lez v8, :cond_0

    add-float v5, p3, v7

    add-float/2addr v6, v4

    :cond_0
    move v14, v5

    move v15, v6

    const/4 v8, 0x1

    sub-float v9, v14, v7

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v10, v15, v5

    iget-object v11, v0, Lcom/rockrobo/map/MapShareBuilder;->titlePaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move-object v6, v2

    move v7, v12

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    move v5, v14

    move v6, v15

    goto :goto_0

    :cond_1
    iget v1, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v6, v1

    return v6
.end method
