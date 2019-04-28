.class public Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;
.super Landroid/widget/CheckBox;


# static fields
.field protected static final ANIMATION_DURATION:I = 0xb4

.field protected static final FULL_ALPHA:I = 0xff

.field protected static final SCALE_ANIMATION_DELAY:I = 0x64


# instance fields
.field protected mAnimator:Landroid/animation/Animator;

.field protected mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field protected mBarOff:Landroid/graphics/Bitmap;

.field protected mBarOffPaint:Landroid/graphics/Paint;

.field protected mBarOn:Landroid/graphics/Bitmap;

.field protected mBarOnPaint:Landroid/graphics/Paint;

.field protected mFrame:Landroid/graphics/drawable/Drawable;

.field protected mHeight:I

.field protected mLastX:I

.field protected mMask:Landroid/graphics/Bitmap;

.field protected mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field protected mOnTouchEventEnable:Z

.field protected mOriginalTouchPointX:I

.field protected mSliderMoved:Z

.field protected mSliderOff:Landroid/graphics/drawable/Drawable;

.field protected mSliderOffset:I

.field protected mSliderOn:Landroid/graphics/drawable/Drawable;

.field protected mSliderOnAlpha:I

.field protected mSliderPositionEnd:I

.field protected mSliderPositionStart:I

.field protected mSliderWidth:I

.field protected mTapThreshold:I

.field protected mTmpRect:Landroid/graphics/Rect;

.field protected mTracking:Z

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mTmpRect:Landroid/graphics/Rect;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mOnTouchEventEnable:Z

    sget-boolean p3, Lcom/xiaomi/smarthome/common/plug/utils/ApiHelper;->HAS_ANDROID_ANIMATION:Z

    if-eqz p3, :cond_0

    new-instance p3, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;

    invoke-direct {p3, p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$1;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;)V

    iput-object p3, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setDrawingCacheEnabled(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mTapThreshold:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/xiaomi/common/R$drawable;->sliding_btn_frame_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/xiaomi/common/R$drawable;->sliding_btn_slider_on_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/xiaomi/common/R$drawable;->sliding_btn_slider_off_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOff:Landroid/graphics/drawable/Drawable;

    sget p1, Lcom/xiaomi/common/R$drawable;->sliding_btn_bg_light:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mWidth:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mHeight:I

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mWidth:I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderWidth:I

    iput p3, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderPositionStart:I

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mWidth:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderWidth:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderPositionEnd:I

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderPositionStart:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaomi/common/R$drawable;->sliding_btn_bar_off_light:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mWidth:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mHeight:I

    invoke-static {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mBarOff:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaomi/common/R$drawable;->sliding_btn_bar_on_light:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mWidth:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mHeight:I

    invoke-static {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mBarOn:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mFrame:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mWidth:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mHeight:I

    invoke-virtual {p1, p3, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/xiaomi/common/R$drawable;->sliding_btn_mask_light:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mWidth:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mHeight:I

    invoke-virtual {p1, p3, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->convertToAlphaMask(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mMask:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mBarOffPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mBarOnPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mBarOnPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mBarOffPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method protected animateToState(Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-boolean v0, Lcom/xiaomi/smarthome/common/plug/utils/ApiHelper;->HAS_ANDROID_ANIMATION:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mAnimator:Landroid/animation/Animator;

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-string v1, "SliderOffset"

    const/4 v2, 0x1

    new-array v3, v2, [I

    if-eqz p1, :cond_1

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderPositionEnd:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderPositionStart:I

    :goto_0
    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v3, "SliderOnAlpha"

    new-array v2, v2, [I

    if-eqz p1, :cond_2

    const/16 p1, 0xff

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    aput p1, v2, v5

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0xb4

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mAnimator:Landroid/animation/Animator;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton$2;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method protected animateToggle()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->animateToState(Z)V

    return-void
.end method

.method protected convertToAlphaMask(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method protected drawBar(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mBarOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mBarOn:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mBarOnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mBarOffPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mBarOff:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mBarOffPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public getSliderOffset()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    return v0
.end method

.method public getSliderOnAlpha()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOnAlpha:I

    return v0
.end method

.method protected moveSlider(I)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderPositionStart:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderPositionStart:I

    :goto_0
    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderPositionEnd:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderPositionEnd:I

    goto :goto_0

    :cond_1
    :goto_1
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setSliderOffset(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->isEnabled()Z

    move-result v0

    const/16 v1, 0xff

    if-eqz v0, :cond_0

    const/16 v7, 0xff

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    const/16 v7, 0x7f

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v6, v0

    const/16 v8, 0x1f

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mMask:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->drawBar(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOnAlpha:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOff:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderWidth:I

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOnAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderWidth:I

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mWidth:I

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mOnTouchEventEnable:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mTmpRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    iget v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    iget v6, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mHeight:I

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    return v4

    :pswitch_0
    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mTracking:Z

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderMoved:Z

    invoke-virtual {p0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setPressed(Z)V

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderPositionEnd:I

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->animateToState(Z)V

    return v4

    :pswitch_1
    iget-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mTracking:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mLastX:I

    sub-int p1, v2, p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->moveSlider(I)V

    iput v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mLastX:I

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mOriginalTouchPointX:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mTapThreshold:I

    if-lt p1, v0, :cond_6

    iput-boolean v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderMoved:Z

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v4

    :pswitch_2
    iget-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mTracking:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderMoved:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderPositionEnd:I

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->animateToState(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->animateToggle()V

    :goto_2
    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mTracking:Z

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderMoved:Z

    invoke-virtual {p0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setPressed(Z)V

    return v4

    :pswitch_3
    invoke-virtual {v3, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mTracking:Z

    invoke-virtual {p0, v4}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setPressed(Z)V

    goto :goto_3

    :cond_5
    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mTracking:Z

    :goto_3
    iput v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mLastX:I

    iput v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mOriginalTouchPointX:I

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderMoved:Z

    :cond_6
    return v4

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_4

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderPositionEnd:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderPositionStart:I

    :goto_0
    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mBarOnPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-eqz p1, :cond_1

    const/16 v3, 0xff

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mBarOffPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_2

    const/16 v3, 0xff

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz p1, :cond_3

    const/16 v1, 0xff

    :cond_3
    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOnAlpha:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->invalidate()V

    :cond_4
    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnTouchEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mOnTouchEventEnable:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->invalidate()V

    return-void
.end method

.method public setSliderOffset(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOffset:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->invalidate()V

    return-void
.end method

.method public setSliderOnAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->mSliderOnAlpha:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->invalidate()V

    return-void
.end method
