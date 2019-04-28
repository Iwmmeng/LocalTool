.class public Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$CustomEditText;,
        Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;,
        Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;,
        Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$InputTextFilter;,
        Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;,
        Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnScrollListener;,
        Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x5

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TEXT_PADDING:I = 0x1e

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field public static final TWO_DIGIT_FORMATTER:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private final ATTR_INDEX_LABEL:I

.field private final ATTR_INDEX_TEXTSIZE:I

.field private MAX_HEIGHT:I

.field private final MiuiNumberPicker_Styleable:[I

.field private SELECTION_DIVIDERS_DISTANCE:F

.field private TEXT_MAX_ASCENT:F

.field private TEXT_SIZE_LABEL:I

.field private TEXT_SIZE_MAX:I

.field private TEXT_SIZE_MIN:I

.field private mAccessibilityNodeProvider:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedMaxTextWidth:F

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLabelPaint:Landroid/graphics/Paint;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnValueChangeListener;

.field private final mPressedStateHelper:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private mSoundId:I

.field private mSoundPlayer:Landroid/media/SoundPool;

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$1;

    invoke-direct {v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$1;-><init>()V

    sput-object v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->PRESSED_STATE_SET:[I

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLongPressUpdateInterval:J

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 p3, 0x5

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorIndices:[I

    const/high16 p3, -0x80000000

    iput p3, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInitialScrollOffset:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mScrollState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    const/16 v1, 0x19

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    const/16 v1, 0xe

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    const/16 v2, 0xa

    iput v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_LABEL:I

    const/high16 v2, 0x42600000    # 56.0f

    iput v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->SELECTION_DIVIDERS_DISTANCE:F

    const/16 v2, 0x104

    iput v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->MAX_HEIGHT:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->MiuiNumberPicker_Styleable:[I

    iput p3, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->ATTR_INDEX_TEXTSIZE:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->ATTR_INDEX_LABEL:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    iput v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    iget v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    iput v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    iget v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_LABEL:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    iput v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_LABEL:I

    iget v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->SELECTION_DIVIDERS_DISTANCE:F

    mul-float v5, v5, v4

    iput v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->SELECTION_DIVIDERS_DISTANCE:F

    iget v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->MAX_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v4, v5

    iput v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->MAX_HEIGHT:I

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->MiuiNumberPicker_Styleable:[I

    invoke-virtual {v4, p2, v5, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroid/media/SoundPool;

    invoke-direct {p2, v3, v3, p3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSoundPlayer:Landroid/media/SoundPool;

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSoundPlayer:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/xiaomi/common/R$raw;->numberpicker_value_change:I

    invoke-virtual {p2, v4, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSoundId:I

    sget p2, Lcom/xiaomi/common/R$layout;->numberpicker_layout:I

    iput-boolean v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mHasSelectorWheel:Z

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectionDividerHeight:I

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->SELECTION_DIVIDERS_DISTANCE:F

    float-to-int v4, v4

    iput v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectionDividersDistance:I

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinHeight:I

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->MAX_HEIGHT:I

    iput v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxHeight:I

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinHeight:I

    if-eq v4, v0, :cond_1

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxHeight:I

    if-eq v4, v0, :cond_1

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinHeight:I

    iget v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxHeight:I

    if-le v4, v5, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinWidth:I

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxWidth:I

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinWidth:I

    if-eq v4, v0, :cond_2

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxWidth:I

    if-eq v4, v0, :cond_2

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinWidth:I

    iget v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxWidth:I

    if-le v4, v5, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxWidth:I

    if-ne v4, v0, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mComputeMaxWidth:Z

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/xiaomi/common/R$drawable;->virtual_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v4, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;

    invoke-direct {v4, p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)V

    iput-object v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mPressedStateHelper:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;

    iget-boolean v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mHasSelectorWheel:Z

    xor-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    invoke-virtual {v4, p2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p2, Lcom/xiaomi/common/R$id;->numberpicker_input:I

    invoke-virtual {p0, p2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v4, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$2;

    invoke-direct {v4, p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$2;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)V

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-array v4, v3, [Landroid/text/InputFilter;

    new-instance v5, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$InputTextFilter;

    invoke-direct {v5, p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$InputTextFilter;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)V

    aput-object v5, v4, p3

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setGravity(I)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_4

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setScaleX(F)V

    :cond_4
    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getPaddingTop()I

    move-result p3

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    const/16 v4, 0x1e

    invoke-virtual {p2, v4, p3, v4, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinimumFlingVelocity:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaximumFlingVelocity:I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mTextSize:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    sget-object p3, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->ENABLED_STATE_SET:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_MAX_ASCENT:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/xiaomi/common/R$color;->class_text_14:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_LABEL:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x0

    if-lt p1, v1, :cond_5

    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3, p2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    :goto_1
    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    goto :goto_2

    :cond_5
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    goto :goto_1

    :goto_2
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40200000    # 2.5f

    invoke-direct {p3, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->updateInputTextView()Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v3}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setImportantForAccessibility(I)V

    :cond_6
    return-void

    :array_0
    .array-data 4
        0x1010095
        0x101014f
    .end array-data
.end method

.method static synthetic access$000(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$1200(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$1400(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectionDividerHeight:I

    return p0
.end method

.method static synthetic access$1800(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mValue:I

    return p0
.end method

.method static synthetic access$1900(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method static synthetic access$2200(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500()[C
    .locals 1

    sget-object v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method static synthetic access$900(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method private changeValueByOne(Z)V
    .locals 13

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->invalidate()V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mValue:I

    add-int/2addr p1, v0

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setValueInternal(IZ)V

    return-void

    :cond_3
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mValue:I

    sub-int/2addr p1, v0

    goto :goto_1

    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v0, p1, v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    :cond_0
    aput v0, p1, v2

    invoke-direct {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v2, v1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mPreviousScrollerY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    if-lez v0, :cond_0

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v1, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    :goto_0
    add-int/2addr v0, v1

    :cond_1
    move v5, v0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFormatter:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFormatter:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAlphaGradient(FIZ)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    return p2

    :cond_0
    if-eqz p3, :cond_1

    neg-float p1, p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    mul-float p1, p1, p3

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    :goto_0
    float-to-int p1, p1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    mul-float p1, p1, p3

    goto :goto_0

    :goto_1
    const p3, 0xffffff

    and-int/2addr p2, p3

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, p2

    return p1
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    add-int/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    return p1
.end method

.method private getTextSize(FII)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    int-to-float p1, p3

    return p1

    :cond_0
    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float p1, p1, p3

    int-to-float p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 3

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    rem-int/2addr p1, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v2

    rem-int/2addr v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v1

    aput v0, p1, v2

    invoke-direct {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v0

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mTextSize:I

    mul-int v1, v1, v2

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorTextGapHeight:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mTextSize:I

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInitialScrollOffset:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorIndices:[I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x2

    add-int/2addr v3, v1

    iget-boolean v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    :cond_0
    aput v3, v0, v2

    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return p1

    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_1

    if-lez v2, :cond_0

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v3

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private notifyChange(II)V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSoundPlayer:Landroid/media/SoundPool;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSoundId:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mOnValueChangeListener:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mOnValueChangeListener:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnValueChangeListener;

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mScrollState:I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mOnScrollListener:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mOnScrollListener:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->updateInputTextView()Z

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->onScrollStateChange(I)V

    return-void

    :cond_1
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->updateInputTextView()Z

    :cond_2
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$200(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSetSelectionCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSetSelectionCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSetSelectionCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSetSelectionCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;

    invoke-static {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;->access$302(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;I)I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSetSelectionCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;

    invoke-static {p1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;->access$402(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;I)I

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSetSelectionCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshWheel()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->invalidate()V

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSetSelectionCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSetSelectionCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mPressedStateHelper:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mValue:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mValue:I

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->updateInputTextView()Z

    if-eqz p2, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->notifyChange(II)V

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->invalidate()V

    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 6

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpl-float v3, v1, v0

    if-lez v3, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    invoke-direct {p0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, v1, v2

    iget-object v5, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpl-float v5, v4, v0

    if-lez v5, :cond_4

    move v0, v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxWidth:I

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinWidth:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    float-to-int v0, v0

    :goto_3
    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxWidth:I

    return-void

    :cond_6
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinWidth:I

    goto :goto_3

    :cond_7
    return-void
.end method

.method private updateInputTextView()Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mValue:I

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->updateInputTextView()Z

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->scrollBy(II)V

    iput v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mPreviousScrollerY:I

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->invalidate()V

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x40

    const/16 v5, 0x80

    const/4 v6, -0x1

    const/16 v7, 0x100

    if-eq p1, v2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v1, v0, v7}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v6, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_2

    :goto_1
    :pswitch_1
    invoke-virtual {v1, v0, v5}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v1, v0, v4, v3}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v0, :cond_4

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v6, :cond_4

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v1, p1, v7}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    goto :goto_1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_5

    const/16 v1, 0x42

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_6

    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    return v2

    :pswitch_2
    iget-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/16 v3, 0x14

    if-nez v1, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_6

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_6

    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->requestFocus()Z

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeAllCallbacks()V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_4

    if-ne v0, v3, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->changeValueByOne(Z)V

    :cond_4
    return v2

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeAllCallbacks()V

    :cond_6
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeAllCallbacks()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeAllCallbacks()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeAllCallbacks()V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSoundPlayer:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v2, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getPaddingRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v3

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v6, v6

    iget-object v7, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    iget v7, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mScrollState:I

    if-nez v7, :cond_2

    iget-boolean v7, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v9, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v7, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v9, v2, v4

    iget v10, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {v7, v3, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v7, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-boolean v7, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v9, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v7, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v7, v3, v9, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v2, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInitialScrollOffset:I

    iget v3, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    iget-object v4, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v7, v4

    move v9, v6

    const/4 v6, 0x0

    :goto_0
    const/high16 v10, 0x40000000    # 2.0f

    if-ge v6, v7, :cond_4

    aget v11, v4, v6

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    sub-float v12, v2, v9

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    iget v13, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    iget v14, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    invoke-direct {v0, v12, v13, v14}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getTextSize(FII)F

    move-result v13

    iget-object v14, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v14, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/high16 v15, 0x7f000000

    invoke-direct {v0, v12, v15, v8}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    iget v14, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    int-to-float v14, v14

    sub-float v14, v13, v14

    div-float/2addr v14, v10

    add-float/2addr v14, v9

    iget-object v15, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v5, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v14, v12, v14

    if-gez v14, :cond_3

    iget-object v14, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v8, Lcom/xiaomi/common/R$color;->class_text_14:I

    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const/4 v15, 0x1

    invoke-direct {v0, v12, v8, v15}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v8

    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget v8, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    int-to-float v8, v8

    sub-float/2addr v13, v8

    div-float/2addr v13, v10

    add-float/2addr v13, v9

    iget-object v8, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v5, v13, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    iget v8, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v8, v8

    add-float/2addr v9, v8

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    iget v4, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_MAX_ASCENT:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TEXT_SIZE_LABEL:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    div-float/2addr v4, v10

    add-float/2addr v5, v4

    iget-object v4, v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeAllCallbacks()V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastDownEventY:F

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastDownOrMoveEventY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastDownEventTime:J

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mIngonreMoveEvents:Z

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-gez p1, :cond_2

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mPressedStateHelper:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mPressedStateHelper:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-direct {p0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->onScrollStateChange(I)V

    return v0

    :cond_4
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    return v0

    :cond_5
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_6

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v2, p1

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return v0

    :cond_6
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastDownEventY:F

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_7

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v1, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return v0

    :cond_7
    iput-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    return v0

    :cond_8
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    iget-object p5, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->initializeSelectorWheel()V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->initializeFadingEdges()V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_0
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mIngonreMoveEvents:Z

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mScrollState:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeAllCallbacks()V

    invoke-direct {p0, v2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->scrollBy(II)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->invalidate()V

    :cond_4
    :goto_0
    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastDownOrMoveEventY:F

    return v2

    :pswitch_1
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeBeginSoftInputCommand()V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mPressedStateHelper:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;->cancel()V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinimumFlingVelocity:I

    const/4 v5, 0x2

    if-le v3, v4, :cond_5

    invoke-direct {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->fling(I)V

    invoke-direct {p0, v5}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v3, v0

    iget v4, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLastDownEventTime:J

    sub-long v10, v6, v8

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mTouchSlop:I

    if-gt v3, p1, :cond_8

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v3, p1

    cmp-long p1, v10, v3

    if-gez p1, :cond_8

    iget-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    goto :goto_1

    :cond_6
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    sub-int/2addr v0, v5

    if-lez v0, :cond_7

    invoke-direct {p0, v2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->changeValueByOne(Z)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mPressedStateHelper:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_7
    if-gez v0, :cond_9

    invoke-direct {p0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->changeValueByOne(Z)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mPressedStateHelper:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v5}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    :cond_9
    :goto_1
    invoke-direct {p0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->onScrollStateChange(I)V

    :goto_2
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    return v2

    :cond_a
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 3

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorIndices:[I

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    aget v0, p1, v1

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    if-gt v0, v2, :cond_0

    :goto_0
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    aget v0, p1, v1

    iget v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mCurrentScrollOffset:I

    :cond_2
    :goto_1
    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorTextGapHeight:I

    const/4 v2, 0x1

    if-le p2, v0, :cond_3

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->decrementSelectorIndices([I)V

    aget p2, p1, v1

    invoke-direct {p0, p2, v2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setValueInternal(IZ)V

    iget-boolean p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    aget p2, p1, v1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    if-gt p2, v0, :cond_2

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_3
    :goto_2
    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v0, v0

    if-ge p2, v0, :cond_4

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->incrementSelectorIndices([I)V

    aget p2, p1, v1

    invoke-direct {p0, p2, v2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setValueInternal(IZ)V

    iget-boolean p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    aget p2, p1, v1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    if-lt p2, v0, :cond_3

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v0, 0x80001

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x2

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->updateInputTextView()Z

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setFormatter(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFormatter:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mFormatter:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->invalidate()V

    :cond_2
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_2

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mValue:I

    :cond_2
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->updateInputTextView()Z

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->tryComputeMaxWidth()V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->invalidate()V

    return-void
.end method

.method public setMinValue(I)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mValue:I

    if-le p1, v0, :cond_2

    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mValue:I

    :cond_2
    iget p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->updateInputTextView()Z

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->tryComputeMaxWidth()V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->invalidate()V

    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mOnScrollListener:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mOnValueChangeListener:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->mWrapSelectorWheel:Z

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->refreshWheel()V

    return-void
.end method
