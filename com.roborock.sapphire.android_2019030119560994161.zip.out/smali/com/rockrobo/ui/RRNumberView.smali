.class public Lcom/rockrobo/ui/RRNumberView;
.super Landroid/view/View;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final TIME_SUB_TYPE_MINUTE:I = 0x0

.field public static final TIME_SUB_TYPE_SECOND:I = 0x1

.field public static final TYPE_PERCENT:I = 0x0

.field public static final TYPE_TIME:I = 0x1


# instance fields
.field protected mNumber:I

.field protected mNumberHeight:I

.field protected mNumberMargin:I

.field protected mNumberWidth:I

.field protected mNumbers:[I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mType:I

.field private minuteBitmap:Landroid/graphics/Bitmap;

.field private percentageBitmap:Landroid/graphics/Bitmap;

.field private secondBitmap:Landroid/graphics/Bitmap;

.field private timeSubType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/ui/RRNumberView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/RRNumberView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xe

    iput p1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    const/16 p1, 0x1c

    iput p1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberHeight:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberMargin:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/rockrobo/ui/RRNumberView;->timeSubType:I

    invoke-virtual {p0, p2}, Lcom/rockrobo/ui/RRNumberView;->init(Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/ui/RRNumberView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected doNumberDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/rockrobo/ui/RRNumberView;->getNumberDrawable(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/rockrobo/ui/RRNumberView;->getNumberDrawable(I)I

    move-result v3

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/rockrobo/ui/RRNumberView;->getNumberDrawable(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v5, Lcom/rockrobo/ui/RRNumberView;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Got bitmap!"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    aget v5, v5, v2

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    sget-object v4, Lcom/rockrobo/ui/RRNumberView;->LOG_TAG:Ljava/lang/String;

    const-string v5, "To draw 3 numbers!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    invoke-virtual {p0, v5}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v5

    iget v8, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberHeight:I

    invoke-virtual {p0, v8}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v8

    invoke-direct {v4, v2, v2, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, p0, Lcom/rockrobo/ui/RRNumberView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Rect;

    iget v4, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    iget v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v4

    iget v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    mul-int/lit8 v5, v5, 0x2

    iget v8, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberMargin:I

    add-int/2addr v5, v8

    invoke-virtual {p0, v5}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v5

    iget v8, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberHeight:I

    invoke-virtual {p0, v8}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v8

    invoke-direct {v0, v4, v2, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/rockrobo/ui/RRNumberView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    iget v4, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberMargin:I

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v1

    iget v4, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    mul-int/lit8 v4, v4, 0x3

    iget v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberMargin:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v4

    iget v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberHeight:I

    invoke-virtual {p0, v5}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v5

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/rockrobo/ui/RRNumberView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    iget v1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberMargin:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    aget v0, v0, v4

    if-eqz v0, :cond_1

    sget-object v0, Lcom/rockrobo/ui/RRNumberView;->LOG_TAG:Ljava/lang/String;

    const-string v4, "To draw 2 numbers!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    iget v4, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    invoke-virtual {p0, v4}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v4

    iget v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberHeight:I

    invoke-virtual {p0, v5}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v5

    invoke-direct {v0, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/rockrobo/ui/RRNumberView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    iget v4, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberMargin:I

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v1

    iget v4, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v4

    iget v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberHeight:I

    invoke-virtual {p0, v5}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v5

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/rockrobo/ui/RRNumberView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    iget v1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberMargin:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/rockrobo/ui/RRNumberView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "To draw 1 numbers!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    invoke-virtual {p0, v1}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v1

    iget v4, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberHeight:I

    invoke-virtual {p0, v4}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v4

    invoke-direct {v0, v2, v2, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/rockrobo/ui/RRNumberView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    iget v1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberMargin:I

    add-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/rockrobo/ui/RRNumberView;->mType:I

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    iget v1, p0, Lcom/rockrobo/ui/RRNumberView;->timeSubType:I

    packed-switch v1, :pswitch_data_1

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/rockrobo/ui/RRNumberView;->getSecondBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v4

    iget v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    add-int/2addr v5, v0

    invoke-virtual {p0, v5}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v0

    iget v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberHeight:I

    invoke-virtual {p0, v5}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v5

    invoke-direct {v3, v4, v2, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/rockrobo/ui/RRNumberView;->getMinuteBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v4

    iget v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    add-int/2addr v5, v0

    invoke-virtual {p0, v5}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v0

    iget v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberHeight:I

    invoke-virtual {p0, v5}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v5

    invoke-direct {v3, v4, v2, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/rockrobo/ui/RRNumberView;->getPercentageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v4

    iget v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    add-int/2addr v5, v0

    invoke-virtual {p0, v5}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v0

    iget v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberHeight:I

    invoke-virtual {p0, v5}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result v5

    invoke-direct {v3, v4, v2, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    invoke-virtual {p1, v1, v7, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected dp2px(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRNumberView;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/xiaomi/smarthome/common/plug/utils/DisplayUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method protected getMinuteBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/RRNumberView;->minuteBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getNumberDrawable(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f05014d

    return p1

    :pswitch_0
    const p1, 0x7f050157

    return p1

    :pswitch_1
    const p1, 0x7f050156

    return p1

    :pswitch_2
    const p1, 0x7f050155

    return p1

    :pswitch_3
    const p1, 0x7f050154

    return p1

    :pswitch_4
    const p1, 0x7f050153

    return p1

    :pswitch_5
    const p1, 0x7f050152

    return p1

    :pswitch_6
    const p1, 0x7f050151

    return p1

    :pswitch_7
    const p1, 0x7f050150

    return p1

    :pswitch_8
    const p1, 0x7f05014f

    return p1

    :pswitch_9
    const p1, 0x7f05014e

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method protected getPercentageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/RRNumberView;->percentageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getSecondBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/RRNumberView;->secondBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRNumberView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/app/R$styleable;->NumberElement:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumber:I

    iget v1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumber:I

    invoke-virtual {p0, v1}, Lcom/rockrobo/ui/RRNumberView;->parseNumber(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/ui/RRNumberView;->mType:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05015a

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/RRNumberView;->percentageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050158

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/RRNumberView;->minuteBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050159

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/RRNumberView;->secondBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/rockrobo/ui/RRNumberView;->doNumberDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    iget p2, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberMargin:I

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x3

    :goto_0
    iget p2, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    add-int/2addr p1, p2

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    iget p2, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberMargin:I

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberWidth:I

    iget p2, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberMargin:I

    add-int/2addr p1, p2

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result p1

    iget p2, p0, Lcom/rockrobo/ui/RRNumberView;->mNumberHeight:I

    invoke-virtual {p0, p2}, Lcom/rockrobo/ui/RRNumberView;->dp2px(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/rockrobo/ui/RRNumberView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected parseNumber(I)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    aput v3, p1, v3

    iget-object p1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    aput v2, p1, v1

    iget-object p1, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    aput v2, p1, v0

    return-void

    :cond_0
    const/16 v2, 0x3e7

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/rockrobo/ui/RRNumberView;->mNumber:I

    iget-object v2, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    div-int/lit8 v4, p1, 0x64

    aput v4, v2, v3

    iget-object v2, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    div-int/lit8 v4, p1, 0xa

    iget-object v5, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    aget v5, v5, v3

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v4, v5

    aput v4, v2, v1

    iget-object v2, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    iget-object v4, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    aget v3, v4, v3

    mul-int/lit8 v3, v3, 0x64

    sub-int/2addr p1, v3

    iget-object v3, p0, Lcom/rockrobo/ui/RRNumberView;->mNumbers:[I

    aget v1, v3, v1

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr p1, v1

    aput p1, v2, v0

    return-void
.end method

.method protected setNumber(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rockrobo/ui/RRNumberView;->parseNumber(I)V

    return-void
.end method
