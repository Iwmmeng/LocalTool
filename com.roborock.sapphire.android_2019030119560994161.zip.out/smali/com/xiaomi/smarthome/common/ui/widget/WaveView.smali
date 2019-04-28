.class public Lcom/xiaomi/smarthome/common/ui/widget/WaveView;
.super Landroid/view/View;


# static fields
.field static final MSG_REFRESH:I = 0x2

.field static final MSG_START:I = 0x1

.field static final MSG_STOP:I = 0x3

.field private static final REFRESH_TIME:J = 0xaL

.field private static final SPREAD_TIME:J = 0x320L

.field private static final TIME_INTERVAL:J = 0x12cL


# instance fields
.field private mColor:I

.field private mEndR:I

.field mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIsRunning:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mStartR:I

.field private mStartTime:J

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mWidth:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mHeight:I

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mIsRunning:Z

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mStartR:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mEndR:I

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mStartTime:J

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mColor:I

    new-instance p1, Lcom/xiaomi/smarthome/common/ui/widget/WaveView$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/smarthome/common/ui/widget/WaveView$1;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/WaveView;)V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/smarthome/common/ui/widget/WaveView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mIsRunning:Z

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mStartTime:J

    sub-long v4, v0, v2

    long-to-double v0, v4

    const-wide v2, 0x4072c00000000000L    # 300.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mEndR:I

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mStartR:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v6, 0x4089000000000000L    # 800.0

    div-double/2addr v1, v6

    :goto_0
    if-lez v0, :cond_2

    const-wide/16 v6, 0x12c

    add-int/lit8 v3, v0, -0x1

    int-to-long v8, v3

    mul-long v8, v8, v6

    sub-long v6, v4, v8

    long-to-double v6, v6

    mul-double v6, v6, v1

    double-to-int v3, v6

    iget v6, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mEndR:I

    iget v7, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mStartR:I

    sub-int/2addr v6, v7

    if-lt v3, v6, :cond_1

    return-void

    :cond_1
    int-to-float v6, v3

    iget v7, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mEndR:I

    iget v8, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mStartR:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v7, v7, v6

    float-to-int v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    iget v7, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mColor:I

    or-int/2addr v6, v7

    iget v7, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mStartR:I

    add-int/2addr v3, v7

    iget-object v7, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget v8, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    int-to-float v3, v3

    iget-object v7, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8, v3, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mWidth:I

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mHeight:I

    return-void
.end method

.method public start(III)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mIsRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mStartR:I

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mEndR:I

    iput p3, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mColor:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mStartTime:J

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mIsRunning:Z

    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
