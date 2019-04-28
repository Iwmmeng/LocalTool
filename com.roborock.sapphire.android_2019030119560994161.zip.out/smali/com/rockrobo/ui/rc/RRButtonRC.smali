.class public Lcom/rockrobo/ui/rc/RRButtonRC;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCListenerI;,
        Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;
    }
.end annotation


# static fields
.field public static final BEVEL_HORIZON_ANGLE:I = 0x14

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final TAN_BEVEL_HORIZON_ANGLE:D


# instance fields
.field private bitmapForward:Landroid/graphics/Bitmap;

.field private bitmapFrame:Landroid/graphics/Rect;

.field private bitmapLeft:Landroid/graphics/Bitmap;

.field private bitmapRight:Landroid/graphics/Bitmap;

.field private bitmapUnpressed:Landroid/graphics/Bitmap;

.field private buttonFrameSize:I

.field private buttonState:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

.field private centerX:I

.field private centerY:I

.field private innerCircleRadius:I

.field private innerCircleRadiusSquare:D

.field private innerLeftTopX:F

.field private innerRightTopX:F

.field onButtonStateChangeListener:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCListenerI;

.field private outerCircleRadius:I

.field private outerCircleRadiusSquare:D

.field private preButtonState:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/ui/rc/RRButtonRC;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/rc/RRButtonRC;->LOG_TAG:Ljava/lang/String;

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sput-wide v0, Lcom/rockrobo/ui/rc/RRButtonRC;->TAN_BEVEL_HORIZON_ANGLE:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/rockrobo/ui/rc/RRButtonRC;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/rockrobo/ui/rc/RRButtonRC;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2, p3}, Lcom/rockrobo/ui/rc/RRButtonRC;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private calcButtonState(Landroid/view/MotionEvent;)Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->centerX:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v5, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->centerY:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    float-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->innerCircleRadiusSquare:D

    cmpg-double v5, v1, v3

    if-ltz v5, :cond_6

    iget-wide v3, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->outerCircleRadiusSquare:D

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->innerLeftTopX:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->innerRightTopX:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    iget v1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->centerY:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    sget-object p1, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->FORWARD:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    return-object p1

    :cond_1
    iget p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->centerX:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    sget-object p1, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->RIGHT:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    return-object p1

    :cond_2
    sget-object p1, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->LEFT:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    return-object p1

    :cond_3
    iget v1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->centerY:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    float-to-double v1, v1

    iget v3, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->centerX:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    float-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    sget-wide v3, Lcom/rockrobo/ui/rc/RRButtonRC;->TAN_BEVEL_HORIZON_ANGLE:D

    cmpl-double v5, v1, v3

    if-lez v5, :cond_4

    iget v1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->centerY:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    sget-object p1, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->FORWARD:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    return-object p1

    :cond_4
    iget p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->centerX:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    sget-object p1, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->RIGHT:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    return-object p1

    :cond_5
    sget-object p1, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->LEFT:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    return-object p1

    :cond_6
    :goto_0
    sget-object p1, Lcom/rockrobo/ui/rc/RRButtonRC;->LOG_TAG:Ljava/lang/String;

    const-string v0, "out of press range!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->UNPRESSED:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRButtonRC;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050190

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->bitmapUnpressed:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRButtonRC;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f05018d

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->bitmapForward:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRButtonRC;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f05018e

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->bitmapLeft:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRButtonRC;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f05018f

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->bitmapRight:Landroid/graphics/Bitmap;

    sget-object p1, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->UNPRESSED:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->buttonState:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-object v0, Lcom/rockrobo/ui/rc/RRButtonRC$1;->$SwitchMap$com$rockrobo$ui$rc$RRButtonRC$RRButtonRCState:[I

    iget-object v1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->buttonState:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    invoke-virtual {v1}, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->bitmapUnpressed:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v2, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->bitmapFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->bitmapRight:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->bitmapLeft:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->bitmapForward:Landroid/graphics/Bitmap;

    goto :goto_0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRButtonRC;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f04015d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->buttonFrameSize:I

    iget p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->buttonFrameSize:I

    invoke-virtual {p0, p1, p1}, Lcom/rockrobo/ui/rc/RRButtonRC;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRButtonRC;->getWidth()I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->centerX:I

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRButtonRC;->getHeight()I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->centerY:I

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRButtonRC;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f040160

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->outerCircleRadius:I

    iget p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->outerCircleRadius:I

    int-to-double p1, p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->outerCircleRadiusSquare:D

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRButtonRC;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f04015f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->innerCircleRadius:I

    iget p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->innerCircleRadius:I

    int-to-double p1, p1

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->innerCircleRadiusSquare:D

    iget p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->innerCircleRadius:I

    int-to-double p1, p1

    sget-wide p3, Lcom/rockrobo/ui/rc/RRButtonRC;->TAN_BEVEL_HORIZON_ANGLE:D

    mul-double p1, p1, p3

    iget p3, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->centerX:I

    int-to-double p3, p3

    sub-double/2addr p3, p1

    double-to-float p3, p3

    iput p3, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->innerLeftTopX:F

    iget p3, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->centerX:I

    int-to-double p3, p3

    add-double/2addr p3, p1

    double-to-float p1, p3

    iput p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->innerRightTopX:F

    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->buttonFrameSize:I

    iget p3, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->buttonFrameSize:I

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->bitmapFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object p1, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->UNPRESSED:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->buttonState:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->preButtonState:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRButtonRC;->invalidate()V

    iget-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->onButtonStateChangeListener:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCListenerI;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->onButtonStateChangeListener:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCListenerI;

    invoke-interface {p1}, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCListenerI;->onButtonReleased()V

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/rc/RRButtonRC;->calcButtonState(Landroid/view/MotionEvent;)Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->buttonState:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    iget-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->preButtonState:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->buttonState:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    invoke-virtual {p1, v0}, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->buttonState:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->preButtonState:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRButtonRC;->invalidate()V

    iget-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->onButtonStateChangeListener:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCListenerI;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/rc/RRButtonRC;->calcButtonState(Landroid/view/MotionEvent;)Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->buttonState:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->preButtonState:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    sget-object p1, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->UNPRESSED:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->buttonState:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    invoke-virtual {p1, v0}, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/rockrobo/ui/rc/RRButtonRC;->invalidate()V

    iget-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->onButtonStateChangeListener:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCListenerI;

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->onButtonStateChangeListener:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCListenerI;

    iget-object v0, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->buttonState:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    invoke-interface {p1, v0}, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCListenerI;->onButtonPressed(Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;)V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public setOnButtonStateChangeListener(Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCListenerI;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/rc/RRButtonRC;->onButtonStateChangeListener:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCListenerI;

    return-void
.end method
