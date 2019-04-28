.class public Lcom/rockrobo/ui/RRConsumableNumber;
.super Lcom/rockrobo/ui/RRNumberView;


# static fields
.field public static final GREEN_PERCENT:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final ORANGE_HOUR:I = 0x4

.field public static final ORANGE_PERCENT:I = 0x3

.field public static final RED_PERCENT:I = 0x1


# instance fields
.field protected componentHeight:I

.field protected greenPercentBitmap:Landroid/graphics/Bitmap;

.field private orangeHourBitmap:Landroid/graphics/Bitmap;

.field protected orangePercentBitmap:Landroid/graphics/Bitmap;

.field protected redPercentBitmap:Landroid/graphics/Bitmap;

.field private suffixType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/ui/RRConsumableNumber;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/RRConsumableNumber;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rockrobo/ui/RRNumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object p1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->greenPercentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->componentHeight:I

    const/16 p1, 0xe

    iput p1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumberWidth:I

    const/16 p1, 0x20

    iput p1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumberHeight:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumberMargin:I

    return-void
.end method

.method private getGreenNumberDrawable(I)I
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/RRConsumableNumber;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To get number drawable for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f05014d

    return p1

    :pswitch_0
    const p1, 0x7f050110

    return p1

    :pswitch_1
    const p1, 0x7f05010f

    return p1

    :pswitch_2
    const p1, 0x7f05010e

    return p1

    :pswitch_3
    const p1, 0x7f05010d

    return p1

    :pswitch_4
    const p1, 0x7f05010c

    return p1

    :pswitch_5
    const p1, 0x7f05010b

    return p1

    :pswitch_6
    const p1, 0x7f05010a

    return p1

    :pswitch_7
    const p1, 0x7f050109

    return p1

    :pswitch_8
    const p1, 0x7f050108

    return p1

    :pswitch_9
    const p1, 0x7f050107

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

.method private getOrangeNumberDrawable(I)I
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/RRConsumableNumber;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To get number drawable for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f05014d

    return p1

    :pswitch_0
    const p1, 0x7f050169

    return p1

    :pswitch_1
    const p1, 0x7f050168

    return p1

    :pswitch_2
    const p1, 0x7f050167

    return p1

    :pswitch_3
    const p1, 0x7f050166

    return p1

    :pswitch_4
    const p1, 0x7f050165

    return p1

    :pswitch_5
    const p1, 0x7f050164

    return p1

    :pswitch_6
    const p1, 0x7f050163

    return p1

    :pswitch_7
    const p1, 0x7f050162

    return p1

    :pswitch_8
    const p1, 0x7f050161

    return p1

    :pswitch_9
    const p1, 0x7f050160

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

.method private getRedNumberDrawable(I)I
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/RRConsumableNumber;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To get number drawable for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f05014d

    return p1

    :pswitch_0
    const p1, 0x7f0501a4

    return p1

    :pswitch_1
    const p1, 0x7f0501a3

    return p1

    :pswitch_2
    const p1, 0x7f0501a2

    return p1

    :pswitch_3
    const p1, 0x7f0501a1

    return p1

    :pswitch_4
    const p1, 0x7f0501a0

    return p1

    :pswitch_5
    const p1, 0x7f05019f

    return p1

    :pswitch_6
    const p1, 0x7f05019e

    return p1

    :pswitch_7
    const p1, 0x7f05019d

    return p1

    :pswitch_8
    const p1, 0x7f05019c

    return p1

    :pswitch_9
    const p1, 0x7f05019b

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


# virtual methods
.method protected doNumberDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRConsumableNumber;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumbers:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/rockrobo/ui/RRConsumableNumber;->getNumberDrawable(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRConsumableNumber;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumbers:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/rockrobo/ui/RRConsumableNumber;->getNumberDrawable(I)I

    move-result v3

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRConsumableNumber;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumbers:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/rockrobo/ui/RRConsumableNumber;->getNumberDrawable(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v5, Lcom/rockrobo/ui/RRConsumableNumber;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Got bitmap!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumbers:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    sget-object v4, Lcom/rockrobo/ui/RRConsumableNumber;->LOG_TAG:Ljava/lang/String;

    const-string v5, "To draw 3 numbers!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v7, p0, Lcom/rockrobo/ui/RRConsumableNumber;->componentHeight:I

    invoke-direct {v4, v2, v2, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v4, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumberMargin:I

    invoke-virtual {p0, v4}, Lcom/rockrobo/ui/RRConsumableNumber;->dp2px(I)I

    move-result v4

    add-int/2addr v0, v4

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget v7, p0, Lcom/rockrobo/ui/RRConsumableNumber;->componentHeight:I

    invoke-direct {v4, v0, v2, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v4, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumberMargin:I

    invoke-virtual {p0, v4}, Lcom/rockrobo/ui/RRConsumableNumber;->dp2px(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget v5, p0, Lcom/rockrobo/ui/RRConsumableNumber;->componentHeight:I

    invoke-direct {v1, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    iget-object v4, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumberMargin:I

    invoke-virtual {p0, v3}, Lcom/rockrobo/ui/RRConsumableNumber;->dp2px(I)I

    move-result v3

    add-int/2addr v1, v3

    :goto_1
    add-int/2addr v0, v1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumbers:[I

    aget v0, v0, v4

    if-eqz v0, :cond_1

    sget-object v0, Lcom/rockrobo/ui/RRConsumableNumber;->LOG_TAG:Ljava/lang/String;

    const-string v4, "To draw 2 numbers!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/rockrobo/ui/RRConsumableNumber;->componentHeight:I

    invoke-direct {v0, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumberMargin:I

    invoke-virtual {p0, v1}, Lcom/rockrobo/ui/RRConsumableNumber;->dp2px(I)I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget v5, p0, Lcom/rockrobo/ui/RRConsumableNumber;->componentHeight:I

    invoke-direct {v1, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/rockrobo/ui/RRConsumableNumber;->LOG_TAG:Ljava/lang/String;

    const-string v1, "To draw 1 numbers!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v4, p0, Lcom/rockrobo/ui/RRConsumableNumber;->componentHeight:I

    invoke-direct {v0, v2, v2, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumberMargin:I

    invoke-virtual {p0, v1}, Lcom/rockrobo/ui/RRConsumableNumber;->dp2px(I)I

    move-result v1

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lcom/rockrobo/ui/RRConsumableNumber;->getSuffixBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget v5, p0, Lcom/rockrobo/ui/RRConsumableNumber;->componentHeight:I

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v6, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected getNumberDrawable(I)I
    .locals 1

    iget v0, p0, Lcom/rockrobo/ui/RRConsumableNumber;->suffixType:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/RRConsumableNumber;->getGreenNumberDrawable(I)I

    move-result p1

    return p1

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/RRConsumableNumber;->getOrangeNumberDrawable(I)I

    move-result p1

    return p1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/RRConsumableNumber;->getGreenNumberDrawable(I)I

    move-result p1

    return p1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/RRConsumableNumber;->getRedNumberDrawable(I)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getSuffixBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget v0, p0, Lcom/rockrobo/ui/RRConsumableNumber;->suffixType:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/rockrobo/ui/RRConsumableNumber;->greenPercentBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/rockrobo/ui/RRConsumableNumber;->orangeHourBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/rockrobo/ui/RRConsumableNumber;->orangePercentBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/rockrobo/ui/RRConsumableNumber;->greenPercentBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/rockrobo/ui/RRConsumableNumber;->redPercentBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRConsumableNumber;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/app/R$styleable;->NumberElement:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumber:I

    iget p1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumber:I

    invoke-virtual {p0, p1}, Lcom/rockrobo/ui/RRConsumableNumber;->parseNumber(I)V

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRConsumableNumber;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0501a5

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->redPercentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRConsumableNumber;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050111

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->greenPercentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRConsumableNumber;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05016b

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->orangePercentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRConsumableNumber;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05016a

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->orangeHourBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRConsumableNumber;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumbers:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    invoke-virtual {p0, p2}, Lcom/rockrobo/ui/RRConsumableNumber;->getNumberDrawable(I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRConsumableNumber;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumbers:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/rockrobo/ui/RRConsumableNumber;->getNumberDrawable(I)I

    move-result v1

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRConsumableNumber;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumbers:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/rockrobo/ui/RRConsumableNumber;->getNumberDrawable(I)I

    move-result v3

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v3, Lcom/rockrobo/ui/RRConsumableNumber;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Got bitmap!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumbers:[I

    aget v0, v3, v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockrobo/ui/RRConsumableNumber;->LOG_TAG:Ljava/lang/String;

    const-string v2, "To draw 3 numbers!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumberMargin:I

    invoke-virtual {p0, v0}, Lcom/rockrobo/ui/RRConsumableNumber;->dp2px(I)I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget v0, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumberMargin:I

    invoke-virtual {p0, v0}, Lcom/rockrobo/ui/RRConsumableNumber;->dp2px(I)I

    move-result v0

    add-int/2addr p2, v0

    :goto_0
    add-int/2addr p1, p2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget v0, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumberMargin:I

    invoke-virtual {p0, v0}, Lcom/rockrobo/ui/RRConsumableNumber;->dp2px(I)I

    move-result v0

    add-int/2addr p2, v0

    :goto_1
    add-int/2addr p1, p2

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumbers:[I

    aget p1, p1, v2

    if-eqz p1, :cond_1

    sget-object p1, Lcom/rockrobo/ui/RRConsumableNumber;->LOG_TAG:Ljava/lang/String;

    const-string v0, "To draw 2 numbers!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumberMargin:I

    invoke-virtual {p0, p2}, Lcom/rockrobo/ui/RRConsumableNumber;->dp2px(I)I

    move-result p2

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/rockrobo/ui/RRConsumableNumber;->LOG_TAG:Ljava/lang/String;

    const-string p2, "To draw 1 numbers!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/rockrobo/ui/RRConsumableNumber;->mNumberMargin:I

    invoke-virtual {p0, p2}, Lcom/rockrobo/ui/RRConsumableNumber;->dp2px(I)I

    move-result p2

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lcom/rockrobo/ui/RRConsumableNumber;->getSuffixBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/rockrobo/ui/RRConsumableNumber;->componentHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/rockrobo/ui/RRConsumableNumber;->setMeasuredDimension(II)V

    return-void
.end method

.method protected setSuffixType(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/ui/RRConsumableNumber;->suffixType:I

    return-void
.end method

.method public setTypeAndNumber(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rockrobo/ui/RRConsumableNumber;->setSuffixType(I)V

    invoke-virtual {p0, p2}, Lcom/rockrobo/ui/RRConsumableNumber;->setNumber(I)V

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRConsumableNumber;->invalidate()V

    invoke-virtual {p0}, Lcom/rockrobo/ui/RRConsumableNumber;->requestLayout()V

    return-void
.end method
