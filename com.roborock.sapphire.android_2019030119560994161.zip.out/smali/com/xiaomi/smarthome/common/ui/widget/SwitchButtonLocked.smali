.class public Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;
.super Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->init()V

    return-void
.end method

.method private init()V
    .locals 6

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaomi/common/R$drawable;->lock_switch_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaomi/common/R$drawable;->lock_switch_point_on_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaomi/common/R$drawable;->lock_switch_point_off_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mSliderOff:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/xiaomi/common/R$drawable;->sliding_btn_bg_light:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mWidth:I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mHeight:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mWidth:I

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mSliderWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mSliderPositionStart:I

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mWidth:I

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mSliderWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mSliderPositionEnd:I

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mSliderPositionStart:I

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mSliderOffset:I

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/xiaomi/common/R$drawable;->sliding_btn_bar_off_light:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mWidth:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mSliderWidth:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mHeight:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mBarOff:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/xiaomi/common/R$drawable;->sliding_btn_bar_on_light:I

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mWidth:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mSliderWidth:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mHeight:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mBarOn:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mFrame:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mWidth:I

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mHeight:I

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaomi/common/R$drawable;->sliding_btn_mask_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mWidth:I

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mHeight:I

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->convertToAlphaMask(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mMask:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mBarOffPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mBarOnPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mBarOnPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButtonLocked;->mBarOffPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method
