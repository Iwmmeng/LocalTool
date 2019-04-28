.class public Lcom/rockrobo/ui/mainview/MainViewResourceManager;
.super Ljava/lang/Object;


# static fields
.field public static final CAT_ANIMATE_DURATION:F = 3200.0f

.field public static final CAT_FRAME_COUNT:I = 0x20

.field public static final CAT_FRAME_INTERVAL:I = 0x64

.field public static final CLEAN_ROBOT_FRAME_TIME:F = 30.0f

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final ROBOT_CHARGING_ANIMATE_TIME:I = 0x7d0

.field public static final ROBOT_FADING_TIME:F = 400.0f

.field public static final ROBOT_LEFT_TO_RIGHT_FRAME_SIZE:I = 0x12

.field public static final ROBOT_LEFT_TO_RIGHT_TIME:F = 2000.0f

.field private static activeBgBitmap:Landroid/graphics/Bitmap; = null

.field private static antiAliasPaint:Landroid/graphics/Paint; = null

.field private static bottomPartRect:Landroid/graphics/Rect; = null

.field private static catBitmaps:[Landroid/graphics/Bitmap; = null

.field private static catRectF:Landroid/graphics/RectF; = null

.field private static chargingRobotAnimationYDelta:F = -1.0f

.field private static chargingRobotBmp:Landroid/graphics/Bitmap; = null

.field private static chargingRobotEndREctF:Landroid/graphics/RectF; = null

.field private static chargingRobotMovingRect:Landroid/graphics/Rect; = null

.field private static chargingRobotStartRectF:Landroid/graphics/RectF; = null

.field private static cleanInfoAreaDesc:Ljava/lang/String; = null

.field private static cleanInfoBatteryDesc:Ljava/lang/String; = null

.field private static cleanInfoBmpHeight:I = -0x1

.field private static cleanInfoCleanDurationDesc:Ljava/lang/String; = null

.field private static cleanInfoColor:I = -0x1

.field private static cleanInfoColorGot:Z = false

.field private static cleanInfoDescPaint:Landroid/graphics/Paint; = null

.field private static cleanInfoDescTopGap:F = -1.0f

.field private static cleanInfoNumberPaint:Landroid/graphics/Paint; = null

.field private static cleanInfoRect:Landroid/graphics/Rect; = null

.field private static cleanInfoSuperscribe2Paint:Landroid/graphics/Paint; = null

.field private static cleanInfoSuperscribePaint:Landroid/graphics/Paint; = null

.field private static cleanInfoTopMargin:I = -0x1

.field private static cleaningRobotMovingRect:Landroid/graphics/Rect; = null

.field private static ditherPaint:Landroid/graphics/Paint; = null

.field private static emptyRect:Landroid/graphics/Rect; = null

.field private static leftGarbageBmp:Landroid/graphics/Bitmap; = null

.field private static leftGarbageRectF:Landroid/graphics/RectF; = null

.field private static leftToRightMovingRobotBmp:[Landroid/graphics/Bitmap; = null

.field private static mapButtonBitmap:Landroid/graphics/Bitmap; = null

.field private static mapButtonBottomMargin:F = -1.0f

.field private static mapButtonBottomMarginUp:F = -1.0f

.field private static mapButtonDesc:Ljava/lang/String; = null

.field private static mapButtonDescOffset:F = -1.0f

.field private static mapButtonDescPaint:Landroid/graphics/Paint; = null

.field private static mapButtonRightMargin:F = -1.0f

.field private static mapButtonSize:F = -1.0f

.field private static rightGarbageBmp:Landroid/graphics/Bitmap; = null

.field private static rightGarbageRectF:Landroid/graphics/RectF; = null

.field private static rightToLeftMovingRobotBmp:Landroid/graphics/Bitmap; = null

.field private static robotAlphaPaint:Landroid/graphics/Paint; = null

.field private static robotBmpSize:Landroid/graphics/RectF; = null

.field private static robotHorizontalMovingXDelta:F = -1.0f

.field private static robotHorizontalMovingY:F = -1.0f

.field private static robotHorizontalPadding:F = -1.0f

.field private static sleepingBgBitmap:Landroid/graphics/Bitmap; = null

.field private static sleepingCatBitmaps:[Landroid/graphics/Bitmap; = null

.field private static sleepingLeftToRightMovingRobotBmp:[Landroid/graphics/Bitmap; = null

.field private static sleepingMapButtonBitmap:Landroid/graphics/Bitmap; = null

.field private static sleepingMapButtonDescPaint:Landroid/graphics/Paint; = null

.field private static sleepingRightToLeftMovingRobotBmp:Landroid/graphics/Bitmap; = null

.field private static titleBarHeight:I = -0x1


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x20

    new-array v1, v0, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->catBitmaps:[Landroid/graphics/Bitmap;

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingCatBitmaps:[Landroid/graphics/Bitmap;

    const/16 v0, 0x12

    new-array v1, v0, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->leftToRightMovingRobotBmp:[Landroid/graphics/Bitmap;

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingLeftToRightMovingRobotBmp:[Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method private getChargingRobotMovingRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotMovingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotMovingRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotStartRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotEndRectF(Landroid/graphics/Rect;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sget-object v3, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotMovingRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, p1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotMovingRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method private getCleanInfoColor()I
    .locals 2

    sget-boolean v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoColorGot:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f03009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoColor:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoColorGot:Z

    :cond_0
    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoColor:I

    return v0
.end method

.method private getCleaningRobotMovingRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleaningRobotMovingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleaningRobotMovingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotBmpSize()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotStartRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotEndRectF(Landroid/graphics/Rect;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotHorizontalMovingY(Landroid/graphics/Rect;)F

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float/2addr v2, v0

    float-to-int v0, v2

    sget-object v2, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleaningRobotMovingRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v1, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleaningRobotMovingRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method private getNormCatBitmap(I)Landroid/graphics/Bitmap;
    .locals 5

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->catBitmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->catBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "cat_%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/rockrobo/app/R$drawable;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->catBitmaps:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchFieldException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalAccessException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->catBitmaps:[Landroid/graphics/Bitmap;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getNormalMapButtonBitmap()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f050131

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonBitmap:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getNormalMapButtonDescPaint()Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonDescPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonDescPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonDescPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonDescPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f03009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonDescPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0400e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonDescPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonDescPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getSleepingCatBitmap(I)Landroid/graphics/Bitmap;
    .locals 5

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingCatBitmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingCatBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "cat_sleeping_%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/rockrobo/app/R$drawable;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingCatBitmaps:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchFieldException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalAccessException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingCatBitmaps:[Landroid/graphics/Bitmap;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroyResources()V
    .locals 4

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->activeBgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingBgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingMapButtonBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->activeBgBitmap:Landroid/graphics/Bitmap;

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingBgBitmap:Landroid/graphics/Bitmap;

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonBitmap:Landroid/graphics/Bitmap;

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingMapButtonBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->catBitmaps:[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    sget-object v3, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->catBitmaps:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sget-object v3, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->catBitmaps:[Landroid/graphics/Bitmap;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingCatBitmaps:[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingCatBitmaps:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sget-object v3, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingCatBitmaps:[Landroid/graphics/Bitmap;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_2
    sget-object v3, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->leftToRightMovingRobotBmp:[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->leftToRightMovingRobotBmp:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sget-object v3, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->leftToRightMovingRobotBmp:[Landroid/graphics/Bitmap;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    sget-object v2, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingLeftToRightMovingRobotBmp:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    sget-object v2, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingLeftToRightMovingRobotBmp:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingLeftToRightMovingRobotBmp:[Landroid/graphics/Bitmap;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->rightToLeftMovingRobotBmp:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->rightToLeftMovingRobotBmp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingRightToLeftMovingRobotBmp:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingRightToLeftMovingRobotBmp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->leftGarbageBmp:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->leftGarbageBmp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->rightGarbageBmp:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->rightGarbageBmp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotBmp:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getActiveBgBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->activeBgBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->activeBgBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f050127

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    sget-object v2, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->activeBgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->activeBgBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getAntiAliasPaint()Landroid/graphics/Paint;
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->antiAliasPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->antiAliasPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->antiAliasPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->antiAliasPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getBackgroundBitmap(Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getSleepingBgBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getActiveBgBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBottomPartRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->bottomPartRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->bottomPartRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCatRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p1

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->bottomPartRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    :cond_0
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->bottomPartRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method public getCatBitmap(Lcom/rockrobo/clean/RobotStatus;I)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getSleepingCatBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getNormCatBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getCatRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 4

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->catRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const v0, 0x3ec91d8e

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    const v0, 0x3e0a2bc1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    const v0, 0x3df04c75

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    new-instance v0, Landroid/graphics/RectF;

    add-float v3, p1, v2

    add-float/2addr v2, v1

    invoke-direct {v0, p1, v1, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->catRectF:Landroid/graphics/RectF;

    :cond_0
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->catRectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method public getChargingRobotAnimationYDelta()F
    .locals 2

    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotAnimationYDelta:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotAnimationYDelta:F

    :cond_0
    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotAnimationYDelta:F

    return v0
.end method

.method public getChargingRobotBmp()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0501b0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotBmp:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getChargingRobotEndRectF(Landroid/graphics/Rect;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotEndREctF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f13ed9b

    mul-float p1, p1, v0

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    add-float/2addr p2, p1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0, p1, v1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v2, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotEndREctF:Landroid/graphics/RectF;

    :cond_0
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotEndREctF:Landroid/graphics/RectF;

    return-object p1
.end method

.method public getChargingRobotStartRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 4

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotStartRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43770000    # 247.0f

    mul-float v0, v0, v1

    const v1, 0x43bb8000    # 375.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0400be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0400f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0400f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    sub-float/2addr v0, v3

    add-float/2addr v1, v0

    add-float/2addr v2, p1

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0, p1, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v3, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotStartRectF:Landroid/graphics/RectF;

    :cond_0
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->chargingRobotStartRectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method public getCleanInfoAreaDesc()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoAreaDesc:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoAreaDesc:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoAreaDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getCleanInfoBatteryDesc()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoBatteryDesc:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoBatteryDesc:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoBatteryDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getCleanInfoBmpHeight()I
    .locals 4

    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoBmpHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoDescTopGap()F

    move-result v0

    invoke-virtual {p0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoNumberPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoDescPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v3, v1

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v3, v0

    add-float/2addr v3, v1

    float-to-int v0, v3

    sput v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoBmpHeight:I

    :cond_0
    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoBmpHeight:I

    return v0
.end method

.method public getCleanInfoCleanDurationDesc()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoCleanDurationDesc:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoCleanDurationDesc:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoCleanDurationDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getCleanInfoDescPaint()Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoDescPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoDescPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoDescPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoDescPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0400c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoDescPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoDescPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getCleanInfoDescTopGap()F
    .locals 2

    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoDescTopGap:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoDescTopGap:F

    :cond_0
    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoDescTopGap:F

    return v0
.end method

.method public getCleanInfoNumberPaint()Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoNumberPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoNumberPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoNumberPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoNumberPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0400c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoNumberPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoNumberPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getCleanInfoRect(IIII)Landroid/graphics/Rect;
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New cleanInfoRect entry!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoRect:Landroid/graphics/Rect;

    :cond_0
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method public getCleanInfoSuperscribe2Paint()Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoSuperscribe2Paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoSuperscribe2Paint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoSuperscribe2Paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoSuperscribe2Paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0400c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoSuperscribe2Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoSuperscribe2Paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getCleanInfoSuperscribePaint()Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoSuperscribePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoSuperscribePaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoSuperscribePaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoSuperscribePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0400c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoSuperscribePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoSuperscribePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getCleanInfoTopMargin()I
    .locals 2

    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoTopMargin:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoTopMargin:I

    :cond_0
    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->cleanInfoTopMargin:I

    return v0
.end method

.method public getDitherPaint()Landroid/graphics/Paint;
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->ditherPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->ditherPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->ditherPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->ditherPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getEmptyRect()Landroid/graphics/Rect;
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->emptyRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->emptyRect:Landroid/graphics/Rect;

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->emptyRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLeftGarbageBmp()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->leftGarbageBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f05012f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->leftGarbageBmp:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->leftGarbageBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLeftGarbageRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->leftGarbageRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0400d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0400d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    sub-float/2addr p1, v3

    add-float/2addr v0, v2

    add-float/2addr v1, p1

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2, p1, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v3, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->leftGarbageRectF:Landroid/graphics/RectF;

    :cond_0
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->leftGarbageRectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method public getLeftToRightMovingRobotBmp(Lcom/rockrobo/clean/RobotStatus;I)Landroid/graphics/Bitmap;
    .locals 4

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingLeftToRightMovingRobotBmp:[Landroid/graphics/Bitmap;

    aget-object p1, p1, p2

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "robot_to_right_sleeping_%02d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/rockrobo/app/R$drawable;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingLeftToRightMovingRobotBmp:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    aput-object p1, v0, p2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoSuchFieldException, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalAccessException, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingLeftToRightMovingRobotBmp:[Landroid/graphics/Bitmap;

    aget-object p1, p1, p2

    return-object p1

    :cond_1
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->leftToRightMovingRobotBmp:[Landroid/graphics/Bitmap;

    aget-object p1, p1, p2

    if-nez p1, :cond_2

    :try_start_1
    const-string p1, "robot_to_right_%02d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/rockrobo/app/R$drawable;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->leftToRightMovingRobotBmp:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    aput-object p1, v0, p2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoSuchFieldException, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :catch_3
    move-exception p1

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalAccessException, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->leftToRightMovingRobotBmp:[Landroid/graphics/Bitmap;

    aget-object p1, p1, p2

    return-object p1
.end method

.method public getMapButtonBitmap(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getSleepingMapButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getNormalMapButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getMapButtonBottomMargin()F
    .locals 2

    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonBottomMargin:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonBottomMargin:F

    :cond_0
    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonBottomMargin:F

    return v0
.end method

.method public getMapButtonBottomMarginUp()F
    .locals 2

    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonBottomMarginUp:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonBottomMarginUp:F

    :cond_0
    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonBottomMarginUp:F

    return v0
.end method

.method public getMapButtonDesc()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonDesc:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonDesc:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getMapButtonDescOffset()F
    .locals 2

    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonDescOffset:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonDescOffset:F

    :cond_0
    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonDescOffset:F

    return v0
.end method

.method public getMapButtonDescPaint(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getSleepingMapButtonDescPaint()Landroid/graphics/Paint;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getNormalMapButtonDescPaint()Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public getMapButtonRightMargin()F
    .locals 2

    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonRightMargin:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonRightMargin:F

    :cond_0
    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonRightMargin:F

    return v0
.end method

.method public getMapButtonSize()F
    .locals 2

    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonSize:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonSize:F

    :cond_0
    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->mapButtonSize:F

    return v0
.end method

.method public getRightGarbageBmp()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->rightGarbageBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f050130

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->rightGarbageBmp:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->rightGarbageBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRightGarbageRectF(Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 4

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->rightGarbageRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0400d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0400da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    sub-float/2addr p2, v2

    sub-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    sub-float/2addr p1, v2

    add-float/2addr v0, p2

    add-float/2addr v1, p1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p2, p1, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v2, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->rightGarbageRectF:Landroid/graphics/RectF;

    :cond_0
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->rightGarbageRectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method public getRightToLeftMovingRobotBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingRightToLeftMovingRobotBmp:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v0, 0x7f0501b3

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingRightToLeftMovingRobotBmp:Landroid/graphics/Bitmap;

    :cond_0
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingRightToLeftMovingRobotBmp:Landroid/graphics/Bitmap;

    return-object p1

    :cond_1
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->rightToLeftMovingRobotBmp:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v0, 0x7f0501b2

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->rightToLeftMovingRobotBmp:Landroid/graphics/Bitmap;

    :cond_2
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->rightToLeftMovingRobotBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getRobotAlphaPaint(II)Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotAlphaPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotAlphaPaint:Landroid/graphics/Paint;

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    sub-float/2addr v0, p1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float v0, v0, p1

    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotAlphaPaint:Landroid/graphics/Paint;

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotAlphaPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method public getRobotBmpSize()Landroid/graphics/RectF;
    .locals 4

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotBmpSize:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0400f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v2, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotBmpSize:Landroid/graphics/RectF;

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotBmpSize:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRobotHorizontalMovingXDelta()F
    .locals 2

    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotHorizontalMovingXDelta:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotHorizontalMovingXDelta:F

    :cond_0
    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotHorizontalMovingXDelta:F

    return v0
.end method

.method public getRobotHorizontalMovingY(Landroid/graphics/Rect;)F
    .locals 2

    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotHorizontalMovingY:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const v0, 0x3f1e2102

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    sput p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotHorizontalMovingY:F

    :cond_0
    sget p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotHorizontalMovingY:F

    return p1
.end method

.method public getRobotHorizontalPadding()F
    .locals 2

    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotHorizontalPadding:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0400f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotHorizontalPadding:F

    :cond_0
    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->robotHorizontalPadding:F

    return v0
.end method

.method public getRobotMovingRect(Landroid/graphics/Rect;Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Rect;
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    invoke-virtual {p2}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lcom/rockrobo/clean/RobotStatus;->isMoving()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotMovingRect(Landroid/graphics/Rect;Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getEmptyRect()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotMovingRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleaningRobotMovingRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getEmptyRect()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getEmptyRect()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSleepingBgBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingBgBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingBgBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f050128

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    sget-object v2, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingBgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingBgBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getSleepingMapButtonBitmap()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingMapButtonBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f050132

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingMapButtonBitmap:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingMapButtonBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSleepingMapButtonDescPaint()Landroid/graphics/Paint;
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingMapButtonDescPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingMapButtonDescPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingMapButtonDescPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingMapButtonDescPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f03009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingMapButtonDescPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0400e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingMapButtonDescPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->sleepingMapButtonDescPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTitleBarHeight()I
    .locals 2

    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->titleBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0401ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->titleBarHeight:I

    :cond_0
    sget v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->titleBarHeight:I

    return v0
.end method
