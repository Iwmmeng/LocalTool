.class public Lcom/rockrobo/ui/rc/RRStickRC;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;
    }
.end annotation


# static fields
.field public static final LIMIT_DEGREE:D = 117.55

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final REDRAW_DELAY:I = 0xa

.field public static final ROTATE_DELTA:I = 0xa

.field private static final STICK_MOVE_DELTA_X:I = 0x14

.field private static final STICK_MOVE_DELTA_Y:I = 0x14

.field public static final STICK_PRECISION:F = 0.1f


# instance fields
.field private centerX:I

.field private centerY:I

.field private currentRotateDegree:D

.field private currentStickCenterX:I

.field private currentStickCenterY:I

.field private inAnimate:Z

.field private innerRadius:I

.field private limitRadius:I

.field private mCallBack:Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;

.field private maxStickMoveRangeSquare:I

.field private moveStick:Landroid/graphics/Bitmap;

.field private moveStickOuterRadius:I

.field private oldOmega:F

.field private oldVelocity:F

.field private final paint:Landroid/graphics/Paint;

.field private pointerImage:Landroid/graphics/Bitmap;

.field private rcFrameSize:I

.field private realHeight:I

.field private realWidth:I

.field private startX:I

.field private startY:I

.field private stickInAction:Z

.field private stillImage:Landroid/graphics/Bitmap;

.field private stillStick:Landroid/graphics/Bitmap;

.field private targetRotateDegree:D

.field private targetStickCenterX:I

.field private targetStickCenterY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/ui/rc/RRStickRC;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/rc/RRStickRC;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/rockrobo/ui/rc/RRStickRC;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->mCallBack:Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetRotateDegree:D

    iput-wide p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentRotateDegree:D

    const/4 p1, 0x0

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterX:I

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterY:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->paint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private calcOmega()F
    .locals 6

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterX:I

    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->limitRadius:I

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    int-to-double v4, v1

    div-double/2addr v2, v4

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-double v0, v0

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private calcVelocity()F
    .locals 6

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterY:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->limitRadius:I

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    int-to-double v4, v1

    div-double/2addr v2, v4

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private changeStickCenterPosition(Landroid/view/MotionEvent;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int v1, v0, v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v5, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    sub-int v5, p1, v5

    int-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v1, v5

    iget v5, p0, Lcom/rockrobo/ui/rc/RRStickRC;->limitRadius:I

    iget v6, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpg-double v7, v1, v5

    if-gtz v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int v2, v0, v2

    int-to-double v5, v2

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    sub-int/2addr v2, p1

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    const-wide v7, 0x405d633333333333L    # 117.55

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    if-eqz v1, :cond_2

    iput v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterX:I

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v11, v1, v7

    if-lez v11, :cond_1

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    int-to-double v1, p1

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int/2addr v0, p1

    int-to-double v11, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->signum(D)D

    move-result-wide v5

    mul-double v5, v5, v9

    div-double/2addr v11, v5

    sub-double/2addr v1, v11

    double-to-int p1, v1

    :cond_1
    :goto_1
    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterY:I

    goto/16 :goto_7

    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v11, v1, v7

    if-lez v11, :cond_5

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->limitRadius:I

    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    sub-int/2addr p1, v1

    int-to-double v1, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double v1, v1, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-int p1, v1

    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, p1, :cond_4

    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int/2addr v0, p1

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    add-int/2addr v0, p1

    :cond_4
    :goto_2
    iput v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterX:I

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    int-to-double v0, p1

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterX:I

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int/2addr p1, v2

    int-to-double v11, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->signum(D)D

    move-result-wide v5

    mul-double v5, v5, v9

    div-double/2addr v11, v5

    sub-double/2addr v0, v11

    double-to-int p1, v0

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-gt v1, v2, :cond_7

    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    sub-int/2addr p1, v1

    int-to-double v1, p1

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int p1, v0, p1

    int-to-double v9, p1

    div-double/2addr v1, v9

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v9, v5

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->maxStickMoveRangeSquare:I

    int-to-double v5, p1

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int p1, v5

    iget v5, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    if-lt v0, v5, :cond_6

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    add-int/2addr v0, p1

    :goto_3
    iput v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterX:I

    goto :goto_4

    :cond_6
    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int/2addr v0, p1

    goto :goto_3

    :goto_4
    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterX:I

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int/2addr p1, v0

    int-to-double v5, p1

    mul-double v1, v1, v5

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    double-to-int v0, v1

    add-int/2addr p1, v0

    goto/16 :goto_1

    :cond_7
    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    sub-int v2, p1, v2

    int-to-double v9, v2

    div-double/2addr v0, v9

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v9, v5

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->maxStickMoveRangeSquare:I

    int-to-double v5, v2

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v2, v5

    iget v5, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    if-lt p1, v5, :cond_8

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    add-int/2addr p1, v2

    :goto_5
    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterY:I

    goto :goto_6

    :cond_8
    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    sub-int/2addr p1, v2

    goto :goto_5

    :goto_6
    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterY:I

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    sub-int/2addr p1, v2

    int-to-double v5, p1

    mul-double v0, v0, v5

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    double-to-int v0, v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterX:I

    :goto_7
    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterX:I

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int/2addr p1, v0

    int-to-double v0, p1

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterY:I

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    sub-int/2addr p1, v2

    int-to-double v5, p1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    int-to-double v5, p1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_9

    const-wide/16 v0, 0x0

    :goto_8
    iput-wide v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetRotateDegree:D

    goto :goto_9

    :cond_9
    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterX:I

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int/2addr p1, v0

    int-to-double v0, p1

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterY:I

    sub-int/2addr p1, v2

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    goto :goto_8

    :goto_9
    iget-wide v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetRotateDegree:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p1, v0, v7

    if-lez p1, :cond_a

    iget-wide v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetRotateDegree:D

    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    mul-double v0, v0, v7

    iput-wide v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetRotateDegree:D

    :cond_a
    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRStickRC;->invalidate()V

    return-void
.end method

.method private isInAction()Z
    .locals 5

    iget-boolean v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->stickInAction:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetRotateDegree:D

    iget-wide v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentRotateDegree:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterX:I

    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterY:I

    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterY:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private loadScaleBitmap(III)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRStickRC;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iput-boolean v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->inAnimate:Z

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterX:I

    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterX:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x14

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterX:I

    iput v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterX:I

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterX:I

    iget v3, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterX:I

    if-le v0, v3, :cond_1

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterX:I

    add-int/2addr v0, v2

    :goto_0
    iput v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterX:I

    iput-boolean v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->inAnimate:Z

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterX:I

    sub-int/2addr v0, v2

    goto :goto_0

    :goto_1
    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterY:I

    iget v3, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterY:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v2, :cond_2

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterY:I

    iput v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterY:I

    goto :goto_3

    :cond_2
    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterY:I

    iget v3, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterY:I

    if-le v0, v3, :cond_3

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterY:I

    add-int/2addr v0, v2

    :goto_2
    iput v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterY:I

    iput-boolean v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->inAnimate:Z

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterY:I

    sub-int/2addr v0, v2

    goto :goto_2

    :goto_3
    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterX:I

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int/2addr v0, v2

    int-to-double v2, v0

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    iget v4, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterY:I

    sub-int/2addr v0, v4

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x405d633333333333L    # 117.55

    cmpl-double v0, v4, v6

    if-lez v0, :cond_4

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    int-to-double v4, v0

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterX:I

    iget v8, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    sub-int/2addr v0, v8

    int-to-double v8, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    div-double/2addr v8, v2

    sub-double/2addr v4, v8

    double-to-int v0, v4

    iput v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterY:I

    :cond_4
    iget-wide v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetRotateDegree:D

    iget-wide v4, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentRotateDegree:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_7

    iget-wide v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetRotateDegree:D

    iget-wide v6, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentRotateDegree:D

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v6, 0x4075e00000000000L    # 350.0

    cmpl-double v0, v2, v6

    if-lez v0, :cond_5

    goto :goto_6

    :cond_5
    iget-wide v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetRotateDegree:D

    iget-wide v6, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentRotateDegree:D

    sub-double/2addr v2, v6

    const-wide/16 v6, 0x0

    cmpl-double v0, v2, v6

    if-lez v0, :cond_6

    iget-wide v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentRotateDegree:D

    add-double/2addr v2, v4

    :goto_4
    iput-wide v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentRotateDegree:D

    goto :goto_5

    :cond_6
    iget-wide v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentRotateDegree:D

    sub-double/2addr v2, v4

    goto :goto_4

    :goto_5
    iput-boolean v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->inAnimate:Z

    goto :goto_7

    :cond_7
    :goto_6
    iget-wide v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetRotateDegree:D

    iput-wide v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentRotateDegree:D

    :goto_7
    invoke-direct {p0}, Lcom/rockrobo/ui/rc/RRStickRC;->isInAction()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-wide v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentRotateDegree:D

    double-to-float v0, v0

    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStick:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterX:I

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterY:I

    iget v3, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/rockrobo/ui/rc/RRStickRC;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_8
    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->stillStick:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    iget v3, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/rockrobo/ui/rc/RRStickRC;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_8
    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->stillImage:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->startX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->startY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/rockrobo/ui/rc/RRStickRC;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/rockrobo/ui/rc/RRStickRC;->isInAction()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-wide v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentRotateDegree:D

    double-to-float v0, v0

    iget v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->pointerImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    iget-boolean p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->inAnimate:Z

    if-eqz p1, :cond_a

    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/rockrobo/ui/rc/RRStickRC;->postInvalidateDelayed(J)V

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRStickRC;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f04016b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->rcFrameSize:I

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->rcFrameSize:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->rcFrameSize:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/rockrobo/ui/rc/RRStickRC;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    sget-object v0, Lcom/rockrobo/ui/rc/RRStickRC;->LOG_TAG:Ljava/lang/String;

    const-string v1, "w:%d,h:%d,oldw:%d,oldh:%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, v2, p4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->realWidth:I

    iput p2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->realHeight:I

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->realWidth:I

    div-int/2addr p1, v3

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterX:I

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterX:I

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->realHeight:I

    div-int/2addr p1, v3

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterY:I

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->currentStickCenterY:I

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRStickRC;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f04016d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRStickRC;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f04016c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->limitRadius:I

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->limitRadius:I

    iget p2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    sub-int/2addr p1, p2

    int-to-double p1, p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->maxStickMoveRangeSquare:I

    sget-object p1, Lcom/rockrobo/ui/rc/RRStickRC;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "(outR - innerR) ^ 2 = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/rockrobo/ui/rc/RRStickRC;->maxStickMoveRangeSquare:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/rockrobo/ui/rc/RRStickRC;->startY:I

    iput v4, p0, Lcom/rockrobo/ui/rc/RRStickRC;->startX:I

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->rcFrameSize:I

    iget p2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->rcFrameSize:I

    const p3, 0x7f050199

    invoke-direct {p0, p3, p1, p2}, Lcom/rockrobo/ui/rc/RRStickRC;->loadScaleBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->stillImage:Landroid/graphics/Bitmap;

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->rcFrameSize:I

    iget p2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->rcFrameSize:I

    const p3, 0x7f050191

    invoke-direct {p0, p3, p1, p2}, Lcom/rockrobo/ui/rc/RRStickRC;->loadScaleBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->pointerImage:Landroid/graphics/Bitmap;

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    mul-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    mul-int/lit8 p2, p2, 0x2

    const p3, 0x7f05018c

    invoke-direct {p0, p3, p1, p2}, Lcom/rockrobo/ui/rc/RRStickRC;->loadScaleBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStick:Landroid/graphics/Bitmap;

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    mul-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStickOuterRadius:I

    mul-int/lit8 p2, p2, 0x2

    const p3, 0x7f05019a

    invoke-direct {p0, p3, p1, p2}, Lcom/rockrobo/ui/rc/RRStickRC;->loadScaleBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->stillStick:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerX:I

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterX:I

    iget p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->centerY:I

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetStickCenterY:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->stickInAction:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->targetRotateDegree:D

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRStickRC;->invalidate()V

    iget-object p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->mCallBack:Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->mCallBack:Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;

    invoke-interface {p1}, Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;->onNavStickReleased()V

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/rc/RRStickRC;->changeStickCenterPosition(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->mCallBack:Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/rockrobo/ui/rc/RRStickRC;->calcOmega()F

    move-result p1

    invoke-direct {p0}, Lcom/rockrobo/ui/rc/RRStickRC;->calcVelocity()F

    move-result v0

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->oldOmega:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->oldVelocity:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    :cond_1
    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->oldOmega:F

    iput v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->oldVelocity:F

    iget-object v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->mCallBack:Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;

    invoke-interface {v2, p1, v0}, Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;->onNavAndSpeed(FF)V

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/rc/RRStickRC;->changeStickCenterPosition(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->oldOmega:F

    iput p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->oldVelocity:F

    iput-boolean v1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->stickInAction:Z

    iget-object p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->mCallBack:Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/rockrobo/ui/rc/RRStickRC;->calcOmega()F

    move-result p1

    invoke-direct {p0}, Lcom/rockrobo/ui/rc/RRStickRC;->calcVelocity()F

    move-result v0

    iget-object v2, p0, Lcom/rockrobo/ui/rc/RRStickRC;->mCallBack:Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;

    invoke-interface {v2, p1, v0}, Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;->onNavStickTouched(FF)V

    :cond_3
    return v1
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->stillImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->stillImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->pointerImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->pointerImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStick:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRStickRC;->moveStick:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method

.method public setOnNavigateListener(Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRStickRC;->mCallBack:Lcom/rockrobo/ui/rc/RRStickRC$OnStickRCListener;

    return-void
.end method
