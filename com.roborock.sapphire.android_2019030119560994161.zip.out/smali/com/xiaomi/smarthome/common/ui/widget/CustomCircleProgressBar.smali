.class public Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSIDE_INDENT:I = 0x4

.field private static final DEFAULT_MAX_VALUE:I = 0x64

.field private static final DEFAULT_PAINT_COLOR:I = -0x1

.field private static final DEFAULT_PAINT_WIDTH:I = 0x4


# instance fields
.field private mBackgroundPicture:Landroid/graphics/drawable/Drawable;

.field private mCircleAttribute:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;

.field private mCurrent:I

.field private mMax:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;

    invoke-direct {p1, p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;)V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCircleAttribute:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mBackgroundPicture:Landroid/graphics/drawable/Drawable;

    const/16 p1, 0x64

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mMax:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCurrent:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;

    invoke-direct {p1, p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;)V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCircleAttribute:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mBackgroundPicture:Landroid/graphics/drawable/Drawable;

    const/16 p1, 0x64

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mMax:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCurrent:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mMax:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCircleAttribute:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->setPaintWidth(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCircleAttribute:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->setPaintColor(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCircleAttribute:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;

    iput p2, p1, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->insideIndent:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCurrent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mBackgroundPicture:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCircleAttribute:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;

    iget-object v2, v0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->roundOval:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCircleAttribute:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;

    iget-object v6, v0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->backgroundPainter:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCurrent:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v5, v0, v1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCircleAttribute:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;

    iget-object v3, v0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->roundOval:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCircleAttribute:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;

    iget v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->startDegrees:I

    int-to-float v4, v0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCircleAttribute:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;

    iget-object v7, v0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->progressPainter:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mBackgroundPicture:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mBackgroundPicture:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mBackgroundPicture:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mBackgroundPicture:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    :cond_0
    invoke-static {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCircleAttribute:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;

    invoke-virtual {p3, p1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->resize(II)V

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mMax:I

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mMax:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mMax:I

    :cond_0
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mMax:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCurrent:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCurrent:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mMax:I

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCurrent:I

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCurrent:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCurrent:I

    :cond_0
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCurrent:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mMax:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->mCurrent:I

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
