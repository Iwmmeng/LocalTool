.class public Lcom/rockrobo/ui/HeartBeatView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/ui/HeartBeatView$UIStatus;
    }
.end annotation


# static fields
.field private static final CAN_STOP_TIME_DELTA:I = 0x78

.field private static final DISABLED_ALPHA_RATE:F = 0.5f

.field public static final ENABLED_ALPHA_RATE:F = 1.0f

.field private static final FIRST_SCALE_DOWN_DURATION:I = 0x64

.field private static final FIRST_SCALE_UP_DURATION:I = 0x96

.field private static final FIRST_SCALE_UP_RATIO:F = 1.25f

.field private static final FREEZE_DURATION:I = 0x1f4

.field public static final INVALID_RES_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PHASE1_TIME:I = 0x96

.field public static final PHASE2_TIME:I = 0xfa

.field public static final PHASE3_TIME:I = 0x154

.field public static final PHASE4_TIME:I = 0x1e5

.field public static final PHASE5_TIME:I = 0x3d9

.field private static final REDRAW_INTERVAL:I = 0x14

.field private static final SECOND_SCALE_DOWN_DURATION:I = 0x91

.field private static final SECOND_SCALE_UP_DURATION:I = 0x5a

.field private static final SECOND_SCALE_UP_RATIO:F = 1.1f

.field private static final TOTAL_ANIMATING_TIME:I = 0x3d9


# instance fields
.field private centerX:I

.field private centerY:I

.field private changeableImageSize:I

.field private currentBitmap:Landroid/graphics/Bitmap;

.field private currentText:Ljava/lang/String;

.field private currentTextPaint:Landroid/graphics/Paint;

.field private firstStageDownSpeed:D

.field private firstStageEndSize:I

.field private firstStageUpSpeed:D

.field private imageAlpha:I

.field private imageDrawRect:Landroid/graphics/RectF;

.field private imagePaint:Landroid/graphics/Paint;

.field private imageSize:I

.field private imageTextGap:I

.field private normTextPaint:Landroid/graphics/Paint;

.field private normalImage:Landroid/graphics/Bitmap;

.field private normalImageId:I

.field private normalText:Ljava/lang/String;

.field private normalTextId:I

.field private pauseImage:Landroid/graphics/Bitmap;

.field private pauseImageId:I

.field private pauseText:Ljava/lang/String;

.field protected resource:Landroid/content/res/Resources;

.field protected robotStatus:Lcom/rockrobo/clean/RobotStatus;

.field protected running:Z

.field private secondStageDownSpeed:D

.field private secondStageEndSize:I

.field private secondStageUpSpeed:D

.field private sleepImageId:I

.field private sleepingImage:Landroid/graphics/Bitmap;

.field private sleepingTextPaint:Landroid/graphics/Paint;

.field private startTime:J

.field private status:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

.field private textAlpha:I

.field private textX:I

.field private textY:I

.field private toStop:Z

.field private touched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/HeartBeatView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rockrobo/ui/HeartBeatView;->running:Z

    iput-boolean p1, p0, Lcom/rockrobo/ui/HeartBeatView;->toStop:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rockrobo/ui/HeartBeatView;->startTime:J

    iput-boolean p1, p0, Lcom/rockrobo/ui/HeartBeatView;->touched:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->normalImage:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->NORM:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->status:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    iput-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->pauseImage:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepingImage:Landroid/graphics/Bitmap;

    const/16 v0, 0xff

    iput v0, p0, Lcom/rockrobo/ui/HeartBeatView;->imageAlpha:I

    iput-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->currentBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->currentText:Ljava/lang/String;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->currentTextPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->running:Z

    iput-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->toStop:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/rockrobo/ui/HeartBeatView;->startTime:J

    iput-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->touched:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->normalImage:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->NORM:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    iput-object v1, p0, Lcom/rockrobo/ui/HeartBeatView;->status:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->pauseImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepingImage:Landroid/graphics/Bitmap;

    const/16 v1, 0xff

    iput v1, p0, Lcom/rockrobo/ui/HeartBeatView;->imageAlpha:I

    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->currentBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->currentText:Ljava/lang/String;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    iput-object v1, p0, Lcom/rockrobo/ui/HeartBeatView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->currentTextPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/rockrobo/ui/HeartBeatView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Constructor entry!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/rockrobo/ui/HeartBeatView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-direct {p0}, Lcom/rockrobo/ui/HeartBeatView;->resetPosition()V

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/HeartBeatView;->imageDrawRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/rockrobo/ui/HeartBeatView;->imagePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->getCurrentText()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/rockrobo/ui/HeartBeatView;->textX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/rockrobo/ui/HeartBeatView;->textY:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getNormalImage()Landroid/graphics/Bitmap;
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/HeartBeatView$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v1, p0, Lcom/rockrobo/ui/HeartBeatView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->normalImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockrobo/ui/HeartBeatView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sleep image id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/rockrobo/ui/HeartBeatView;->normalImageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->resource:Landroid/content/res/Resources;

    iget v1, p0, Lcom/rockrobo/ui/HeartBeatView;->normalImageId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->normalImage:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->normalImage:Landroid/graphics/Bitmap;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepingImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    sget-object v0, Lcom/rockrobo/ui/HeartBeatView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sleep image id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepImageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->resource:Landroid/content/res/Resources;

    iget v1, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepImageId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepingImage:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepingImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getPauseImage()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->pauseImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/rockrobo/ui/HeartBeatView;->pauseImageId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->resource:Landroid/content/res/Resources;

    iget v1, p0, Lcom/rockrobo/ui/HeartBeatView;->pauseImageId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->pauseImage:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/rockrobo/ui/HeartBeatView;->getNormalImage()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->pauseImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->resource:Landroid/content/res/Resources;

    sget-object v0, Lcom/rockrobo/app/R$styleable;->rr_heart_beat:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/ui/HeartBeatView;->normalImageId:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/rockrobo/ui/HeartBeatView;->pauseImageId:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepImageId:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/rockrobo/ui/HeartBeatView;->normalTextId:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iget v2, p0, Lcom/rockrobo/ui/HeartBeatView;->normalTextId:I

    if-eq v2, p2, :cond_0

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/rockrobo/ui/HeartBeatView;->normalTextId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rockrobo/ui/HeartBeatView;->normalText:Ljava/lang/String;

    :cond_0
    if-eq v1, p2, :cond_1

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/rockrobo/ui/HeartBeatView;->pauseText:Ljava/lang/String;

    :cond_1
    const/4 p2, 0x7

    const/high16 v1, -0x1000000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iput v2, p0, Lcom/rockrobo/ui/HeartBeatView;->textAlpha:I

    const/16 v2, 0x8

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/rockrobo/ui/HeartBeatView;->imageTextGap:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->imagePaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->imagePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->imagePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/rockrobo/ui/HeartBeatView;->imageAlpha:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->normTextPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->normTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->normTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->normTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->normTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->normTextPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance p1, Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/rockrobo/ui/HeartBeatView;->normTextPaint:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepingTextPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepingTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private initData(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0400c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/ui/HeartBeatView;->imageSize:I

    iput v0, p0, Lcom/rockrobo/ui/HeartBeatView;->changeableImageSize:I

    iget v0, p0, Lcom/rockrobo/ui/HeartBeatView;->imageSize:I

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/rockrobo/ui/HeartBeatView;->firstStageEndSize:I

    iget v0, p0, Lcom/rockrobo/ui/HeartBeatView;->imageSize:I

    int-to-float v0, v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/rockrobo/ui/HeartBeatView;->secondStageEndSize:I

    iget v0, p0, Lcom/rockrobo/ui/HeartBeatView;->firstStageEndSize:I

    iget v1, p0, Lcom/rockrobo/ui/HeartBeatView;->imageSize:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x4062c00000000000L    # 150.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/rockrobo/ui/HeartBeatView;->firstStageUpSpeed:D

    iget v0, p0, Lcom/rockrobo/ui/HeartBeatView;->imageSize:I

    iget v1, p0, Lcom/rockrobo/ui/HeartBeatView;->firstStageEndSize:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/rockrobo/ui/HeartBeatView;->firstStageDownSpeed:D

    iget v0, p0, Lcom/rockrobo/ui/HeartBeatView;->secondStageEndSize:I

    iget v1, p0, Lcom/rockrobo/ui/HeartBeatView;->imageSize:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/rockrobo/ui/HeartBeatView;->secondStageUpSpeed:D

    iget v0, p0, Lcom/rockrobo/ui/HeartBeatView;->imageSize:I

    iget v1, p0, Lcom/rockrobo/ui/HeartBeatView;->secondStageEndSize:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x4062200000000000L    # 145.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/rockrobo/ui/HeartBeatView;->secondStageDownSpeed:D

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->normTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lcom/rockrobo/ui/HeartBeatView;->normTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/rockrobo/ui/HeartBeatView;->imageSize:I

    iget v2, p0, Lcom/rockrobo/ui/HeartBeatView;->imageTextGap:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    sub-int v0, p2, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/rockrobo/ui/HeartBeatView;->centerX:I

    int-to-float p1, v0

    iget v2, p0, Lcom/rockrobo/ui/HeartBeatView;->imageSize:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/rockrobo/ui/HeartBeatView;->centerY:I

    iget p1, p0, Lcom/rockrobo/ui/HeartBeatView;->centerX:I

    iput p1, p0, Lcom/rockrobo/ui/HeartBeatView;->textX:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/rockrobo/ui/HeartBeatView;->textY:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->imageDrawRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/rockrobo/ui/HeartBeatView;->resetPosition()V

    return-void
.end method

.method private resetPosition()V
    .locals 5

    iget v0, p0, Lcom/rockrobo/ui/HeartBeatView;->centerX:I

    iget v1, p0, Lcom/rockrobo/ui/HeartBeatView;->changeableImageSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/rockrobo/ui/HeartBeatView;->centerY:I

    iget v2, p0, Lcom/rockrobo/ui/HeartBeatView;->changeableImageSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/rockrobo/ui/HeartBeatView;->centerX:I

    iget v3, p0, Lcom/rockrobo/ui/HeartBeatView;->changeableImageSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/rockrobo/ui/HeartBeatView;->centerY:I

    iget v4, p0, Lcom/rockrobo/ui/HeartBeatView;->changeableImageSize:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/rockrobo/ui/HeartBeatView;->imageDrawRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private stopAnimation()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->toStop:Z

    iput-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->running:Z

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->imagePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->invalidate()V

    return-void
.end method


# virtual methods
.method public destroyResources()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->normalImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->normalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->normalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->pauseImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->pauseImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->pauseImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepingImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepingImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepingImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method

.method protected getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/HeartBeatView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getCurrentBitmap entry!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->running:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->currentBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/HeartBeatView$1;->$SwitchMap$com$rockrobo$ui$HeartBeatView$UIStatus:[I

    iget-object v1, p0, Lcom/rockrobo/ui/HeartBeatView;->status:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    invoke-virtual {v1}, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/rockrobo/ui/HeartBeatView;->getNormalImage()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->currentBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/rockrobo/ui/HeartBeatView;->getPauseImage()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->currentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getCurrentText()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->running:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->currentText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->currentText:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/HeartBeatView$1;->$SwitchMap$com$rockrobo$ui$HeartBeatView$UIStatus:[I

    iget-object v1, p0, Lcom/rockrobo/ui/HeartBeatView;->status:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    invoke-virtual {v1}, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->pauseText:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->currentText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->normalText:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->currentText:Ljava/lang/String;

    return-object v0
.end method

.method protected getTextPaint()Landroid/graphics/Paint;
    .locals 2

    iget-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->running:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->currentTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->currentTextPaint:Landroid/graphics/Paint;

    return-object v0

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/HeartBeatView$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v1, p0, Lcom/rockrobo/ui/HeartBeatView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->normTextPaint:Landroid/graphics/Paint;

    :goto_0
    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->currentTextPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepingTextPaint:Landroid/graphics/Paint;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->currentTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->destroyResources()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    sget-object v0, Lcom/rockrobo/ui/HeartBeatView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw entry! running:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/rockrobo/ui/HeartBeatView;->running:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->touched:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->imagePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rockrobo/ui/HeartBeatView;->imageAlpha:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->imagePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rockrobo/ui/HeartBeatView;->imageAlpha:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    :goto_0
    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/rockrobo/ui/HeartBeatView;->textAlpha:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->running:Z

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rockrobo/ui/HeartBeatView;->startTime:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3d9

    rem-long/2addr v4, v0

    long-to-int v0, v4

    const/16 v1, 0x1e5

    const/16 v2, 0x96

    if-gt v0, v2, :cond_1

    iget v2, p0, Lcom/rockrobo/ui/HeartBeatView;->imageSize:I

    int-to-double v2, v2

    int-to-double v4, v0

    iget-wide v6, p0, Lcom/rockrobo/ui/HeartBeatView;->firstStageUpSpeed:D

    :goto_1
    mul-double v4, v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    :goto_2
    iput v2, p0, Lcom/rockrobo/ui/HeartBeatView;->changeableImageSize:I

    goto :goto_3

    :cond_1
    const/16 v2, 0xfa

    if-gt v0, v2, :cond_2

    iget v2, p0, Lcom/rockrobo/ui/HeartBeatView;->firstStageEndSize:I

    int-to-double v2, v2

    add-int/lit16 v4, v0, -0x96

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/rockrobo/ui/HeartBeatView;->firstStageDownSpeed:D

    goto :goto_1

    :cond_2
    const/16 v2, 0x154

    if-gt v0, v2, :cond_3

    iget v2, p0, Lcom/rockrobo/ui/HeartBeatView;->imageSize:I

    int-to-double v2, v2

    add-int/lit16 v4, v0, -0xfa

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/rockrobo/ui/HeartBeatView;->secondStageUpSpeed:D

    goto :goto_1

    :cond_3
    if-gt v0, v1, :cond_4

    iget v2, p0, Lcom/rockrobo/ui/HeartBeatView;->secondStageEndSize:I

    int-to-double v2, v2

    add-int/lit16 v4, v0, -0x154

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/rockrobo/ui/HeartBeatView;->secondStageDownSpeed:D

    goto :goto_1

    :cond_4
    const/16 v2, 0x3d9

    if-gt v0, v2, :cond_5

    iget v2, p0, Lcom/rockrobo/ui/HeartBeatView;->imageSize:I

    goto :goto_2

    :cond_5
    :goto_3
    iget-boolean v2, p0, Lcom/rockrobo/ui/HeartBeatView;->toStop:Z

    if-eqz v2, :cond_6

    sub-int/2addr v0, v1

    const/16 v1, 0x78

    if-le v0, v1, :cond_6

    invoke-direct {p0}, Lcom/rockrobo/ui/HeartBeatView;->stopAnimation()V

    :cond_6
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/HeartBeatView;->doDraw(Landroid/graphics/Canvas;)V

    const-wide/16 v0, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/rockrobo/ui/HeartBeatView;->postInvalidateDelayed(J)V

    return-void

    :cond_7
    iget v0, p0, Lcom/rockrobo/ui/HeartBeatView;->imageSize:I

    iput v0, p0, Lcom/rockrobo/ui/HeartBeatView;->changeableImageSize:I

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/HeartBeatView;->doDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rockrobo/ui/HeartBeatView;->initData(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->touched:Z

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->invalidate()V

    goto :goto_1

    :cond_0
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public restore()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->status:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    sget-object v1, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->NORM:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->NORM:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->status:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->invalidate()V

    return-void
.end method

.method public setPause()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->status:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    sget-object v1, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->PAUSE:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->PAUSE:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->status:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->invalidate()V

    return-void
.end method

.method public setResources(III)V
    .locals 2

    iget v0, p0, Lcom/rockrobo/ui/HeartBeatView;->normalImageId:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepImageId:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/rockrobo/ui/HeartBeatView;->normalTextId:I

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->normalImage:Landroid/graphics/Bitmap;

    iput p1, p0, Lcom/rockrobo/ui/HeartBeatView;->normalImageId:I

    iget-object v1, p0, Lcom/rockrobo/ui/HeartBeatView;->resource:Landroid/content/res/Resources;

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->normalImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepingImage:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepImageId:I

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->resource:Landroid/content/res/Resources;

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/rockrobo/ui/HeartBeatView;->sleepingImage:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iput p3, p0, Lcom/rockrobo/ui/HeartBeatView;->normalTextId:I

    iget-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->resource:Landroid/content/res/Resources;

    iget p2, p0, Lcom/rockrobo/ui/HeartBeatView;->normalTextId:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->normalText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->invalidate()V

    return-void
.end method

.method public setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {p1, v0}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/rockrobo/ui/HeartBeatView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->invalidate()V

    return-void
.end method

.method public startBeat()V
    .locals 2

    iget-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->running:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/HeartBeatView;->imagePaint:Landroid/graphics/Paint;

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/ui/HeartBeatView;->startTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->running:Z

    invoke-virtual {p0}, Lcom/rockrobo/ui/HeartBeatView;->invalidate()V

    return-void
.end method

.method public stopBeat()V
    .locals 1

    iget-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->running:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->toStop:Z

    return-void
.end method

.method public stopBeatImmediately()V
    .locals 1

    iget-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->running:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->toStop:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/ui/HeartBeatView;->running:Z

    invoke-direct {p0}, Lcom/rockrobo/ui/HeartBeatView;->stopAnimation()V

    return-void
.end method
