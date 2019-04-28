.class public Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;
.super Lcom/xiaomi/smarthome/common/ui/widget/XMBaseListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnInterceptListener;,
        Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnRefreshListener;,
        Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;
    }
.end annotation


# static fields
.field private static final MSG_BUNCING_BACK:I


# instance fields
.field private final FRAME_DURATION:I

.field private final MAXIMUM_VELOCITY:F

.field private isDown:Z

.field private mAnimRotate:Landroid/view/animation/Animation;

.field private mAnimRotateBack:Landroid/view/animation/Animation;

.field private mBkgImgView:Landroid/widget/ImageView;

.field private mCanPullDown:Z

.field private mCanRefresh:Z

.field private mContainer:Landroid/view/View;

.field private mCurOffsetY:I

.field private mHandler:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;

.field private mHeader:Landroid/view/View;

.field private mInterceptListener:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnInterceptListener;

.field private mIsRefreshing:Z

.field private mMaxHeaderHeight:I

.field private mMaximumVelocity:F

.field private mOriHeight:I

.field private mPullDownEnabled:Z

.field private mPullDownToRefreshText:Ljava/lang/CharSequence;

.field private mRefreshListener:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnRefreshListener;

.field private mReleaseText:Ljava/lang/CharSequence;

.field private mShowRefreshProgress:Z

.field private mStartY:F

.field private mTriggerRefreshThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XMBaseListView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x10

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->FRAME_DURATION:I

    const/high16 p1, 0x3fc00000    # 1.5f

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->MAXIMUM_VELOCITY:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->isDown:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mStartY:F

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mIsRefreshing:Z

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;)V

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHandler:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanRefresh:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHeader:Landroid/view/View;

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mBkgImgView:Landroid/widget/ImageView;

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mOriHeight:I

    const p1, 0x7fffffff

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mMaxHeaderHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mPullDownEnabled:Z

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanPullDown:Z

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mShowRefreshProgress:Z

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/XMBaseListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x10

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->FRAME_DURATION:I

    const/high16 p1, 0x3fc00000    # 1.5f

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->MAXIMUM_VELOCITY:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->isDown:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mStartY:F

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mIsRefreshing:Z

    new-instance p2, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;

    invoke-direct {p2, p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;)V

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHandler:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanRefresh:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHeader:Landroid/view/View;

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mContainer:Landroid/view/View;

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mBkgImgView:Landroid/widget/ImageView;

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mOriHeight:I

    const p1, 0x7fffffff

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mMaxHeaderHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mPullDownEnabled:Z

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanPullDown:Z

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mShowRefreshProgress:Z

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/smarthome/common/ui/widget/XMBaseListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x10

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->FRAME_DURATION:I

    const/high16 p1, 0x3fc00000    # 1.5f

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->MAXIMUM_VELOCITY:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->isDown:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mStartY:F

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mIsRefreshing:Z

    new-instance p2, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;

    invoke-direct {p2, p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;)V

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHandler:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanRefresh:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHeader:Landroid/view/View;

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mContainer:Landroid/view/View;

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mBkgImgView:Landroid/widget/ImageView;

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mOriHeight:I

    const p1, 0x7fffffff

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mMaxHeaderHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mPullDownEnabled:Z

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanPullDown:Z

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mShowRefreshProgress:Z

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->doAnimation()V

    return-void
.end method

.method private doAnimation()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    iget-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mIsRefreshing:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mMaximumVelocity:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mMaximumVelocity:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    :goto_0
    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    int-to-float v3, v3

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v1, v1, v4

    sub-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    iget-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mIsRefreshing:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mTriggerRefreshThreshold:I

    if-gt v1, v3, :cond_1

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mTriggerRefreshThreshold:I

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mOriHeight:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHandler:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;

    invoke-virtual {v0, v2}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;->removeMessages(I)V

    return-void

    :cond_1
    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    if-gtz v1, :cond_2

    iput v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mOriHeight:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHandler:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;

    invoke-virtual {v0, v2}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;->removeMessages(I)V

    return-void

    :cond_2
    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mOriHeight:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHandler:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;

    const-wide/16 v3, 0x10

    invoke-virtual {v0, v2, v3, v4}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private init()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setOverScrollMode(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mMaximumVelocity:F

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaomi/common/R$string;->pull_down_refresh:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mPullDownToRefreshText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaomi/common/R$string;->release_to_refresh:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mReleaseText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaomi/common/R$dimen;->pull_down_refresh_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mTriggerRefreshThreshold:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaomi/common/R$layout;->pull_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHeader:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHeader:Landroid/view/View;

    sget v1, Lcom/xiaomi/common/R$id;->pull_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHeader:Landroid/view/View;

    sget v1, Lcom/xiaomi/common/R$id;->img_bkg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mBkgImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method private preRefresh()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mIsRefreshing:Z

    sget v0, Lcom/xiaomi/common/R$id;->pull_header_txt:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/xiaomi/common/R$string;->refreshing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mShowRefreshProgress:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/xiaomi/common/R$id;->pull_header_prog:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget v0, Lcom/xiaomi/common/R$id;->pull_header_indc:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaomi/common/R$dimen;->pull_down_header_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    :cond_1
    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mOriHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanPullDown:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XMBaseListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->onViewHide()V

    goto/16 :goto_2

    :pswitch_1
    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->isDown:Z

    if-eqz v0, :cond_6

    sget v0, Lcom/xiaomi/common/R$id;->pull_header_txt:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lcom/xiaomi/common/R$id;->pull_header_indc:I

    invoke-virtual {p0, v3}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mStartY:F

    sub-float v5, v4, v5

    const/high16 v6, 0x41200000    # 10.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    iget-object v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mStartY:F

    sub-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    iget v6, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mOriHeight:I

    add-int/2addr v4, v6

    iget v6, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mMaxHeaderHeight:I

    if-ge v4, v6, :cond_4

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    iget v6, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mOriHeight:I

    add-int/2addr v4, v6

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mContainer:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    iget v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mTriggerRefreshThreshold:I

    if-lt v4, v5, :cond_2

    iget-boolean v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanRefresh:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mReleaseText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mAnimRotate:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/xiaomi/common/R$anim;->v5_rotate_180:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mAnimRotate:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mAnimRotate:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mAnimRotate:Landroid/view/animation/Animation;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanRefresh:Z

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanRefresh:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mPullDownToRefreshText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mAnimRotateBack:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/xiaomi/common/R$anim;->v5_rotate_back_180:I

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mAnimRotateBack:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mAnimRotateBack:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mAnimRotateBack:Landroid/view/animation/Animation;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanRefresh:Z

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mMaxHeaderHeight:I

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mOriHeight:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    :cond_5
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XMBaseListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_6
    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mPullDownEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->isDown:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mIsRefreshing:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_a

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->isDown:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mStartY:F

    iput-boolean v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanRefresh:Z

    goto :goto_2

    :pswitch_2
    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->isDown:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mInterceptListener:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnInterceptListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mInterceptListener:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnInterceptListener;

    invoke-interface {v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnInterceptListener;->needInterceptAnimation()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanRefresh:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mInterceptListener:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnInterceptListener;

    invoke-interface {v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnInterceptListener;->onInterceptAnimation()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHandler:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;

    invoke-virtual {v0, v2}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHandler:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;

    invoke-virtual {v0, v2}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;->sendEmptyMessage(I)Z

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanRefresh:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->doRefresh()V

    :cond_9
    :goto_1
    iput-boolean v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->isDown:Z

    goto :goto_2

    :pswitch_3
    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mPullDownEnabled:Z

    if-eqz v0, :cond_a

    iput-boolean v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanRefresh:Z

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mIsRefreshing:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-gtz v0, :cond_a

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->isDown:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mStartY:F

    :cond_a
    :goto_2
    invoke-super {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/XMBaseListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public doRefresh()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mIsRefreshing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mRefreshListener:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnRefreshListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->preRefresh()V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mRefreshListener:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnRefreshListener;->startRefresh()V

    :cond_0
    return-void
.end method

.method public getIsDown()Z
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mIsRefreshing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mIsRefreshing:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mIsRefreshing:Z

    return v0
.end method

.method public onViewHide()V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->isDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHandler:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;->sendEmptyMessage(I)Z

    :cond_0
    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->isDown:Z

    return-void
.end method

.method public postRefresh()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mIsRefreshing:Z

    sget v1, Lcom/xiaomi/common/R$id;->pull_header_txt:I

    invoke-virtual {p0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mPullDownToRefreshText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/xiaomi/common/R$id;->pull_header_prog:I

    invoke-virtual {p0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/xiaomi/common/R$id;->pull_header_indc:I

    invoke-virtual {p0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mOriHeight:I

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCurOffsetY:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHandler:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$BuncingHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public resume()V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->onViewHide()V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->doRefresh()V

    return-void
.end method

.method public setCanPullDown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mCanPullDown:Z

    return-void
.end method

.method public setHeaderBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mBkgImgView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mBkgImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int p1, p1, v1

    div-int/2addr p1, v0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mBkgImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mMaxHeaderHeight:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mBkgImgView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    sget v0, Lcom/xiaomi/common/R$id;->pull_header_indc:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInterceptListener(Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnInterceptListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mInterceptListener:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnInterceptListener;

    return-void
.end method

.method public setMaxPullDownFromRes(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mMaxHeaderHeight:I

    return-void
.end method

.method public setOriHeight(I)V
    .locals 1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mOriHeight:I

    sget p1, Lcom/xiaomi/common/R$id;->pull_header:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mOriHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mHeader:Landroid/view/View;

    sget v0, Lcom/xiaomi/common/R$id;->empty_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mOriHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    sget v0, Lcom/xiaomi/common/R$id;->pull_header_prog:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPullDownEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mPullDownEnabled:Z

    return-void
.end method

.method public setPullDownHeaderVisibility(I)V
    .locals 1

    sget v0, Lcom/xiaomi/common/R$id;->pull_header_container:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setPullDownLine2Text(Ljava/lang/CharSequence;)V
    .locals 2

    sget v0, Lcom/xiaomi/common/R$id;->pull_header_txt_line2:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setPullDownText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mPullDownToRefreshText:Ljava/lang/CharSequence;

    sget p1, Lcom/xiaomi/common/R$id;->pull_header_txt:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mPullDownToRefreshText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mReleaseText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPullDownTextColor(I)V
    .locals 1

    sget v0, Lcom/xiaomi/common/R$id;->pull_header_txt:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setPullDownTextColorLine2(I)V
    .locals 1

    sget v0, Lcom/xiaomi/common/R$id;->pull_header_txt_line2:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setPullDownTextSize(I)V
    .locals 1

    sget v0, Lcom/xiaomi/common/R$id;->pull_header_txt:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setRefreshListener(Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnRefreshListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mRefreshListener:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnRefreshListener;

    return-void
.end method

.method public setShowRefreshProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->mShowRefreshProgress:Z

    return-void
.end method
