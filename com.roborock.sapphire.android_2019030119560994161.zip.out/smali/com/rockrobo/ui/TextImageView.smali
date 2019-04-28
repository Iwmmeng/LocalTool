.class public Lcom/rockrobo/ui/TextImageView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/ui/TextImageView$PositionText;
    }
.end annotation


# static fields
.field private static final INVALID_RES_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private extraBottom:I

.field private extraLeft:I

.field private extraRight:I

.field private extraTop:I

.field private image:Landroid/graphics/Bitmap;

.field private imageHeight:I

.field private imagePaint:Landroid/graphics/Paint;

.field private imageRectF:Landroid/graphics/RectF;

.field private imageWidth:I

.field private positionTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rockrobo/ui/TextImageView$PositionText;",
            ">;"
        }
    .end annotation
.end field

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/ui/TextImageView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/TextImageView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/rockrobo/ui/TextImageView;->image:Landroid/graphics/Bitmap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/ui/TextImageView;->positionTexts:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/rockrobo/ui/TextImageView;->extraTop:I

    iput p1, p0, Lcom/rockrobo/ui/TextImageView;->extraLeft:I

    iput p1, p0, Lcom/rockrobo/ui/TextImageView;->extraRight:I

    iput p1, p0, Lcom/rockrobo/ui/TextImageView;->extraBottom:I

    const-string p1, "Constructor 1"

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/TextImageView;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/ui/TextImageView;->image:Landroid/graphics/Bitmap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockrobo/ui/TextImageView;->positionTexts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/ui/TextImageView;->extraTop:I

    iput v0, p0, Lcom/rockrobo/ui/TextImageView;->extraLeft:I

    iput v0, p0, Lcom/rockrobo/ui/TextImageView;->extraRight:I

    iput v0, p0, Lcom/rockrobo/ui/TextImageView;->extraBottom:I

    const-string v1, "Constructor 2"

    invoke-direct {p0, v1}, Lcom/rockrobo/ui/TextImageView;->logDebug(Ljava/lang/String;)V

    sget-object v1, Lcom/rockrobo/app/R$styleable;->text_image_view:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, p2, :cond_0

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/rockrobo/ui/TextImageView;->image:Landroid/graphics/Bitmap;

    :cond_0
    const/4 p2, 0x2

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/TextImageView;->dp2pix(I)I

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/rockrobo/ui/TextImageView;->imageWidth:I

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/TextImageView;->dp2pix(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/rockrobo/ui/TextImageView;->imageHeight:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extra top:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/rockrobo/ui/TextImageView;->imageWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",extra bottom:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/rockrobo/ui/TextImageView;->imageHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/rockrobo/ui/TextImageView;->logDebug(Ljava/lang/String;)V

    const/4 p2, 0x4

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/TextImageView;->sp2pix(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    const/4 v0, 0x3

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/ui/TextImageView;->imagePaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/rockrobo/ui/TextImageView;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/ui/TextImageView;->textPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/rockrobo/ui/TextImageView;->textPaint:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/rockrobo/ui/TextImageView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/rockrobo/ui/TextImageView;->textPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/rockrobo/ui/TextImageView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/ui/TextImageView;->imageRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private dp2pix(I)I
    .locals 2

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/rockrobo/ui/TextImageView;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sp2pix(I)I
    .locals 2

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public addPositionText(Lcom/rockrobo/ui/TextImageView$PositionText;)V
    .locals 1

    const-string v0, "addPositionText entry!"

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/TextImageView;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rockrobo/ui/TextImageView;->positionTexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/ui/TextImageView;->imageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/ui/TextImageView;->imageWidth:I

    return v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/TextImageView;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockrobo/ui/TextImageView;->image:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/rockrobo/ui/TextImageView;->imageRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/rockrobo/ui/TextImageView;->imagePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/rockrobo/ui/TextImageView;->positionTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/ui/TextImageView$PositionText;

    invoke-virtual {v1}, Lcom/rockrobo/ui/TextImageView$PositionText;->getCenter()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/rockrobo/ui/TextImageView$PositionText;->getCenter()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/rockrobo/ui/TextImageView$PositionText;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/rockrobo/ui/TextImageView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const-string v0, "onMeasure entry!"

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/TextImageView;->logDebug(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getPaddingLeft()I

    move-result p1

    iget p2, p0, Lcom/rockrobo/ui/TextImageView;->extraLeft:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcom/rockrobo/ui/TextImageView;->extraTop:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/rockrobo/ui/TextImageView;->imageWidth:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/rockrobo/ui/TextImageView;->imageHeight:I

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/rockrobo/ui/TextImageView;->imageRectF:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget p1, p0, Lcom/rockrobo/ui/TextImageView;->imageWidth:I

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/rockrobo/ui/TextImageView;->extraLeft:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/rockrobo/ui/TextImageView;->extraRight:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/rockrobo/ui/TextImageView;->imageHeight:I

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lcom/rockrobo/ui/TextImageView;->extraTop:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/rockrobo/ui/TextImageView;->extraBottom:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/rockrobo/ui/TextImageView;->setMeasuredDimension(II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "padding:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getPaddingTop()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getPaddingRight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/TextImageView;->logDebug(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "measure dimension, width:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",height:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/ui/TextImageView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/TextImageView;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public setExtraBottom(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/ui/TextImageView;->extraBottom:I

    return-void
.end method

.method public setExtraTop(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/ui/TextImageView;->extraTop:I

    return-void
.end method
