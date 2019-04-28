.class Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rotate3dAnimation"
.end annotation


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCenterX:F

.field private mCenterY:F

.field private final mFromDegrees:F

.field private final mToDegrees:F

.field private final mTurnIn:Z

.field private final mTurnUp:Z


# direct methods
.method public constructor <init>(FFFFZZ)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mFromDegrees:F

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mToDegrees:F

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    iput p3, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mCenterY:F

    div-float/2addr p4, p1

    iput p4, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mCenterX:F

    iput-boolean p5, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mTurnIn:Z

    iput-boolean p6, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mTurnUp:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mFromDegrees:F

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mCenterX:F

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mCenterY:F

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    iget-boolean v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mTurnUp:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    iget-boolean v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mTurnIn:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    int-to-float v4, v4

    iget v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mCenterY:F

    mul-float v4, v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr p1, v5

    :goto_1
    mul-float v4, v4, p1

    invoke-virtual {v3, v6, v4, v6}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_2

    :cond_1
    int-to-float v4, v4

    iget v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mCenterY:F

    mul-float v4, v4, v5

    goto :goto_1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateX(F)V

    invoke-virtual {v3, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    neg-float p1, v1

    neg-float v0, v2

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    return-void
.end method
