.class Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomCircleAttribute"
.end annotation


# instance fields
.field public backgroundPainter:Landroid/graphics/Paint;

.field public insideIndent:I

.field public paintColor:I

.field public paintWidth:I

.field public progressPainter:Landroid/graphics/Paint;

.field public roundOval:Landroid/graphics/RectF;

.field public startDegrees:I

.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;


# direct methods
.method public constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->roundOval:Landroid/graphics/RectF;

    const/4 p1, 0x4

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->insideIndent:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->paintWidth:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->paintColor:I

    const/16 p1, -0x5a

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->startDegrees:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->progressPainter:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->progressPainter:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->progressPainter:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->progressPainter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->paintWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->progressPainter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->paintColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->backgroundPainter:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->backgroundPainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->backgroundPainter:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->backgroundPainter:Landroid/graphics/Paint;

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->paintWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->backgroundPainter:Landroid/graphics/Paint;

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public resize(II)V
    .locals 6

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->insideIndent:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->roundOval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->paintWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->insideIndent:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->paintWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->insideIndent:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->paintWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->insideIndent:I

    sub-int/2addr p1, v3

    int-to-float p1, p1

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->paintWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p2, v3

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->insideIndent:I

    sub-int/2addr p2, v3

    int-to-float p2, p2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    invoke-virtual {v1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    invoke-virtual {v2}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    invoke-virtual {v3}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->getPaddingBottom()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->roundOval:Landroid/graphics/RectF;

    iget v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->paintWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    int-to-float v0, v0

    iget v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->paintWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    int-to-float v2, v2

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->paintWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    int-to-float p1, p1

    sub-int/2addr p2, v3

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->paintWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    int-to-float p2, p2

    invoke-virtual {v4, v0, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setPaintColor(I)V
    .locals 1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->paintColor:I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->progressPainter:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setPaintWidth(I)V
    .locals 1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->paintWidth:I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->progressPainter:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar$CustomCircleAttribute;->backgroundPainter:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
