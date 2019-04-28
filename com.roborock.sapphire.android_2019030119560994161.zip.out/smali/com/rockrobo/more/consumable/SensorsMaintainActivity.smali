.class public Lcom/rockrobo/more/consumable/SensorsMaintainActivity;
.super Lcom/rockrobo/more/consumable/ConsumableBaseActivity;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rockrobo/more/consumable/SensorsMaintainActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$200(Lcom/rockrobo/more/consumable/SensorsMaintainActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method

.method private initTextImageView()V
    .locals 9

    const v0, 0x7f0600eb

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/ui/TextImageView;

    invoke-virtual {v0}, Lcom/rockrobo/ui/TextImageView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float v4, v2, v3

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/rockrobo/ui/TextImageView;->setExtraTop(I)V

    invoke-virtual {v0, v4}, Lcom/rockrobo/ui/TextImageView;->setExtraBottom(I)V

    const v4, 0x7f0a004a

    invoke-virtual {p0, v4}, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/rockrobo/ui/TextImageView;->getImageWidth()I

    move-result v5

    mul-int/lit16 v5, v5, 0xd7

    int-to-float v5, v5

    const v6, 0x447c8000    # 1010.0f

    div-float/2addr v5, v6

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    neg-float v7, v7

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Lcom/rockrobo/ui/TextImageView$PositionText;

    invoke-direct {v7, v8, v4}, Lcom/rockrobo/ui/TextImageView$PositionText;-><init>(Landroid/graphics/PointF;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/rockrobo/ui/TextImageView;->addPositionText(Lcom/rockrobo/ui/TextImageView$PositionText;)V

    const v4, 0x7f0a0042

    invoke-virtual {p0, v4}, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    sub-float/2addr v2, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v3, v3, v7

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/rockrobo/ui/TextImageView;->getImageHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Lcom/rockrobo/ui/TextImageView$PositionText;

    invoke-direct {v2, v3, v4}, Lcom/rockrobo/ui/TextImageView$PositionText;-><init>(Landroid/graphics/PointF;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/rockrobo/ui/TextImageView;->addPositionText(Lcom/rockrobo/ui/TextImageView$PositionText;)V

    const v2, 0x7f0a0045

    invoke-virtual {p0, v2}, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/rockrobo/ui/TextImageView;->getImageWidth()I

    move-result v3

    mul-int/lit16 v3, v3, 0x229

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v0}, Lcom/rockrobo/ui/TextImageView;->getImageHeight()I

    move-result v5

    mul-int/lit16 v5, v5, 0xbe

    div-int/lit16 v5, v5, 0x217

    int-to-float v5, v5

    add-float/2addr v4, v5

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Lcom/rockrobo/ui/TextImageView$PositionText;

    invoke-direct {v3, v5, v2}, Lcom/rockrobo/ui/TextImageView$PositionText;-><init>(Landroid/graphics/PointF;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/rockrobo/ui/TextImageView;->addPositionText(Lcom/rockrobo/ui/TextImageView$PositionText;)V

    const v2, 0x7f0a0049

    invoke-virtual {p0, v2}, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/rockrobo/ui/TextImageView;->getImageWidth()I

    move-result v3

    mul-int/lit16 v3, v3, 0x366

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Lcom/rockrobo/ui/TextImageView$PositionText;

    invoke-direct {v1, v4, v2}, Lcom/rockrobo/ui/TextImageView$PositionText;-><init>(Landroid/graphics/PointF;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/TextImageView;->addPositionText(Lcom/rockrobo/ui/TextImageView$PositionText;)V

    return-void
.end method


# virtual methods
.method public getActivityTitle()I
    .locals 1

    const v0, 0x7f0a01cb

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f080010

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->initTextImageView()V

    const p1, 0x7f06002c

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/consumable/SensorsMaintainActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/consumable/SensorsMaintainActivity$1;-><init>(Lcom/rockrobo/more/consumable/SensorsMaintainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
