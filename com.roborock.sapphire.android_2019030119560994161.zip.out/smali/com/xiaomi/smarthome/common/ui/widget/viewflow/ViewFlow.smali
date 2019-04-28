.class public Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;
.super Landroid/widget/AdapterView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;,
        Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;,
        Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewLazyInitializeListener;,
        Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewSwitchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/Adapter;",
        ">;"
    }
.end annotation


# static fields
.field static final CANCLE_MSG:I = 0x1

.field private static final INVALID_SCREEN:I = -0x1

.field private static final SNAP_VELOCITY:I = 0x3e8

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mCurrentAdapterIndex:I

.field private mCurrentBufferIndex:I

.field private mCurrentScreen:I

.field private mDataSetObserver:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;

.field private mFirstLayout:Z

.field mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;

.field private mLastMotionX:F

.field private mLastObtainedViewWasRecycled:Z

.field private mLastOrientation:I

.field private mLastScrollDirection:I

.field private mLazyInit:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mRecycledViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScroller:Landroid/widget/Scroller;

.field private mSideBuffer:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewInitializeListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewLazyInitializeListener;

.field private mViewSwitchListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewSwitchListener;

.field private orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mSideBuffer:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mNextScreen:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mFirstLayout:Z

    const-class v1, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastOrientation:I

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastObtainedViewWasRecycled:Z

    new-instance p1, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$1;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance p1, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$2;

    invoke-direct {p1, p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$2;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mSideBuffer:I

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mSideBuffer:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mNextScreen:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mFirstLayout:Z

    const-class v1, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastOrientation:I

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastObtainedViewWasRecycled:Z

    new-instance p1, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$1;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance p1, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$2;

    invoke-direct {p1, p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$2;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mHandler:Landroid/os/Handler;

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mSideBuffer:I

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mSideBuffer:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchState:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mNextScreen:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mFirstLayout:Z

    const-class v0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastOrientation:I

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastObtainedViewWasRecycled:Z

    new-instance p1, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$1;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance p1, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$2;

    invoke-direct {p1, p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$2;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mSideBuffer:I

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->snapToDestination()V

    return-void
.end method

.method static synthetic access$302(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchState:I

    return p1
.end method

.method static synthetic access$400(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastScrollDirection:I

    return p0
.end method

.method static synthetic access$500(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->postViewSwitched(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    return p0
.end method

.method static synthetic access$700(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)Landroid/widget/Adapter;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->resetFocus()V

    return-void
.end method

.method private getHeightPadding()I
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getWidthPadding()I
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getHorizontalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mMaximumVelocity:I

    return-void
.end method

.method private initializeView(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;->RIGHT:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;->RIGHT:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mViewInitializeListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewLazyInitializeListener;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-interface {p1, v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewLazyInitializeListener;->onViewLazyInitialize(Landroid/view/View;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;->LEFT:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;->LEFT:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mViewInitializeListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewLazyInitializeListener;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private logBuffer()V
    .locals 3

    const-string v0, "viewflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of mLoadedViews: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Size of mRecycledViews: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "viewflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexInAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", IndexInBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeAndAddView(IZ)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->obtainView(I)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastObtainedViewWasRecycled:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->setupChild(Landroid/view/View;ZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private obtainView(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getRecycledView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1, p1, v0, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eq p1, v0, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastObtainedViewWasRecycled:Z

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-object p1
.end method

.method private postViewSwitched(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_2

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v2, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;->LEFT:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v2, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;->RIGHT:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mSideBuffer:I

    if-le p1, v2, :cond_1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->recycleView(Landroid/view/View;)V

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    :cond_1
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mSideBuffer:I

    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, p1, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v2, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;->LEFT:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v2, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;->RIGHT:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    sub-int/2addr p1, v1

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    sub-int/2addr p1, v2

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mSideBuffer:I

    if-le p1, v2, :cond_3

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->recycleView(Landroid/view/View;)V

    :cond_3
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mSideBuffer:I

    sub-int/2addr p1, v2

    const/4 v2, -0x1

    if-le p1, v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->requestLayout()V

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt p1, v2, :cond_5

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    :cond_5
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    if-gez p1, :cond_6

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    :cond_6
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    invoke-direct {p0, p1, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->setVisibleView(IZ)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mIndicator:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    if-ltz p1, :cond_7

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mIndicator:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;->onSwitched(Landroid/view/View;I)V

    :cond_7
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mViewSwitchListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewSwitchListener;

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    if-lez p1, :cond_8

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_8

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mViewSwitchListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewSwitchListener;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewSwitchListener;->onSwitched(Landroid/view/View;I)V

    :cond_8
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->logBuffer()V

    return-void
.end method

.method private resetFocus()V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->logBuffer()V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->recycleViews()V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    const-class v1, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$LazyInit;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mSideBuffer:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mSideBuffer:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v3}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mViewInitializeListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewLazyInitializeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mViewInitializeListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewLazyInitializeListener;

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewLazyInitializeListener;->onViewLazyInitialize(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->setSelection(I)V

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->logBuffer()V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->requestLayout()V

    return-void
.end method

.method private setVisibleView(IZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentScreen:I

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildWidth()I

    move-result v0

    mul-int p1, p1, v0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->onScrollChanged(IIII)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->invalidate()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->postInvalidate()V

    return-void
.end method

.method private setupChild(Landroid/view/View;ZZ)Landroid/view/View;
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, -0x1

    :cond_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, -0x1

    :cond_2
    const/4 p2, 0x1

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-object p1
.end method

.method private snapToDestination()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->snapToScreen(I)V

    return-void
.end method

.method private snapToScreen(I)V
    .locals 7

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentScreen:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastScrollDirection:I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mNextScreen:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildWidth()I

    move-result v0

    mul-int p1, p1, v0

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getScrollX()I

    move-result v0

    sub-int v4, p1, v0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 v6, p1, 0x2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->invalidate()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->postInvalidate()V

    return-void

    :cond_0
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mNextScreen:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentScreen:I

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mNextScreen:I

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$3;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChildHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getHeightPadding()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getChildWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getWidthPadding()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getRecycledView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getViewsCount()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public isViewFlowMoving()Z
    .locals 2

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getWidthPadding()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v2}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildMeasureSpec(III)I

    move-result p2

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getHeightPadding()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastOrientation:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    packed-switch v0, :pswitch_data_0

    return v1

    :cond_2
    :goto_0
    :pswitch_0
    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchState:I

    return v1

    :pswitch_1
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastMotionX:F

    sub-float/2addr v0, p1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchSlop:I

    if-le v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    iput v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchState:I

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mViewInitializeListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewLazyInitializeListener;

    if-eqz v3, :cond_4

    int-to-float v3, v0

    invoke-direct {p0, v3}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->initializeView(F)V

    :cond_4
    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchState:I

    if-ne v3, v2, :cond_a

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastMotionX:F

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getScrollX()I

    move-result p1

    if-gez v0, :cond_5

    if-lez p1, :cond_6

    neg-int p1, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->scrollBy(II)V

    return v2

    :cond_5
    if-lez v0, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getHorizontalFadingEdgeLength()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getWidth()I

    move-result p1

    sub-int/2addr v3, p1

    if-lez v3, :cond_6

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_6
    return v2

    :pswitch_2
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchState:I

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mMaximumVelocity:I

    int-to-float v0, v0

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-int p1, p1

    if-le p1, v3, :cond_7

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentScreen:I

    if-lez v0, :cond_7

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentScreen:I

    sub-int/2addr p1, v2

    :goto_3
    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->snapToScreen(I)V

    goto :goto_4

    :cond_7
    const/16 v0, -0x3e8

    if-ge p1, v0, :cond_8

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge p1, v0, :cond_8

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentScreen:I

    add-int/2addr p1, v2

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->snapToDestination()V

    :goto_4
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_9
    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastMotionX:F

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v2

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchState:I

    :cond_a
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getHorizontalFadingEdgeLength()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    invoke-virtual {p0, p3}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getPaddingTop()I

    move-result v0

    add-int/2addr p5, p1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getPaddingTop()I

    move-result v1

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p4, p1, v0, p5, v1}, Landroid/view/View;->layout(IIII)V

    move p1, p5

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getWidthPadding()I

    move-result v4

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getHeightPadding()I

    move-result v5

    iget-object v6, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v6}, Landroid/widget/Adapter;->getCount()I

    move-result v6

    :goto_0
    if-lez v6, :cond_2

    invoke-direct {p0, v7}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->obtainView(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, p1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-lt v8, v9, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    :cond_1
    iget-object v8, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v8, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_1
    const/high16 v6, 0x1000000

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, -0x80000000

    if-eq v2, v9, :cond_5

    if-eqz v2, :cond_4

    if-eq v2, v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr p1, v4

    if-ge v0, p1, :cond_6

    or-int/2addr v0, v6

    goto :goto_2

    :cond_4
    add-int v0, p1, v4

    goto :goto_2

    :cond_5
    add-int/2addr p1, v4

    or-int v0, p1, v7

    :cond_6
    :goto_2
    if-eq v3, v9, :cond_9

    if-eqz v3, :cond_8

    if-eq v3, v8, :cond_7

    goto :goto_3

    :cond_7
    add-int p1, p2, v5

    if-ge v1, p1, :cond_a

    or-int/2addr v1, v6

    goto :goto_3

    :cond_8
    add-int v1, p2, v5

    goto :goto_3

    :cond_9
    add-int p1, p2, v5

    shr-int/lit8 v1, v7, 0x10

    or-int/2addr v1, p1

    :cond_a
    :goto_3
    if-nez v3, :cond_b

    add-int/2addr v5, p2

    goto :goto_4

    :cond_b
    const/high16 p1, -0x1000000

    and-int/2addr p1, v7

    or-int v5, v1, p1

    :goto_4
    invoke-virtual {p0, v0, v5}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mIndicator:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildWidth()I

    move-result v1

    mul-int v0, v0, v1

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mIndicator:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;->onScrolled(IIII)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/view/View;->measure(II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mFirstLayout:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildWidth()I

    move-result p3

    mul-int v3, p1, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iput-boolean p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mFirstLayout:Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    packed-switch v0, :pswitch_data_0

    return v3

    :cond_2
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->snapToDestination()V

    :cond_3
    :goto_1
    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchState:I

    return v3

    :pswitch_1
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastMotionX:F

    sub-float/2addr v0, p1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchSlop:I

    if-le v2, v4, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    iput v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchState:I

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mViewInitializeListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewLazyInitializeListener;

    if-eqz v2, :cond_5

    int-to-float v2, v0

    invoke-direct {p0, v2}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->initializeView(F)V

    :cond_5
    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchState:I

    if-ne v2, v3, :cond_c

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastMotionX:F

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getScrollX()I

    move-result p1

    if-gez v0, :cond_6

    if-lez p1, :cond_7

    neg-int p1, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_3
    invoke-virtual {p0, p1, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->scrollBy(II)V

    goto :goto_4

    :cond_6
    if-lez v0, :cond_7

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getHorizontalFadingEdgeLength()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, p1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildWidth()I

    move-result p1

    sub-int/2addr v2, p1

    if-lez v2, :cond_7

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_3

    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v3

    :pswitch_2
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchState:I

    if-ne p1, v3, :cond_a

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mMaximumVelocity:I

    int-to-float v0, v0

    const/16 v2, 0x3e8

    invoke-virtual {p1, v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-int p1, p1

    if-le p1, v2, :cond_8

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentScreen:I

    if-lez v0, :cond_8

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentScreen:I

    sub-int/2addr p1, v3

    :goto_5
    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->snapToScreen(I)V

    goto :goto_6

    :cond_8
    const/16 v0, -0x3e8

    if-ge p1, v0, :cond_9

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge p1, v0, :cond_9

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentScreen:I

    add-int/2addr p1, v3

    goto :goto_5

    :cond_9
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->snapToDestination()V

    :goto_6
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    :cond_a
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mIndicator:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mIndicator:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentScreen:I

    invoke-interface {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;->onItemClick(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_b
    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLastMotionX:F

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v3

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mTouchState:I

    :cond_c
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected recycleView(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->detachViewFromParent(Landroid/view/View;)V

    return-void
.end method

.method protected recycleViews()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->recycleView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->setAdapter(Landroid/widget/Adapter;I)V

    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mDataSetObserver:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;

    invoke-direct {p1, p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mDataSetObserver:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mDataSetObserver:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->setSelection(I)V

    :cond_3
    return-void
.end method

.method public setFlowIndicator(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mIndicator:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mIndicator:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;

    invoke-interface {p1, p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;->setViewFlow(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)V

    return-void
.end method

.method public setOnViewLazyInitializeListener(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewLazyInitializeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mViewInitializeListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewLazyInitializeListener;

    return-void
.end method

.method public setOnViewSwitchListener(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewSwitchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mViewSwitchListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewSwitchListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 7

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mNextScreen:I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->recycleViews()V

    invoke-direct {p0, p1, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mViewInitializeListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewLazyInitializeListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mViewInitializeListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewLazyInitializeListener;

    invoke-interface {v3, v2, p1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewLazyInitializeListener;->onViewLazyInitialize(Landroid/view/View;I)V

    :cond_2
    const/4 v3, 0x1

    :goto_1
    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mSideBuffer:I

    sub-int/2addr v4, v3

    if-ltz v4, :cond_5

    sub-int v4, p1, v3

    add-int v5, p1, v3

    if-ltz v4, :cond_3

    iget-object v6, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, v4, v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_3
    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v5, v4, :cond_4

    iget-object v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, v5, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->requestLayout()V

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentBufferIndex:I

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->setVisibleView(IZ)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mIndicator:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mIndicator:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {p1, v2, v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/FlowIndicator;->onSwitched(Landroid/view/View;I)V

    :cond_6
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mViewSwitchListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewSwitchListener;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mViewSwitchListener:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewSwitchListener;

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {p1, v2, v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$ViewSwitchListener;->onSwitched(Landroid/view/View;I)V

    :cond_7
    return-void
.end method
