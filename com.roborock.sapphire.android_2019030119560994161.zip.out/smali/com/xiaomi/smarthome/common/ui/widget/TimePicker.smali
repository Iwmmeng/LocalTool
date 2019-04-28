.class public Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;,
        Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnTimeChangedListener;,
        Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnMinuteChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mHourSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

.field private mOnTimeChangedListener:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnTimeChangedListener;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$1;

    invoke-direct {v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$1;-><init>()V

    sput-object v0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mIsEnabled:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    sget p3, Lcom/xiaomi/common/R$layout;->time_picker:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/xiaomi/common/R$id;->hour:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mHourSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mHourSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    new-instance p3, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$2;

    invoke-direct {p3, p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$2;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)V

    invoke-virtual {p1, p3}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setOnValueChangedListener(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnValueChangeListener;)V

    sget p1, Lcom/xiaomi/common/R$id;->minute:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mMinuteSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mMinuteSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setMinValue(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mMinuteSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setMaxValue(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mMinuteSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mMinuteSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    sget-object v0, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setFormatter(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mMinuteSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setOnValueChangedListener(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnValueChangeListener;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mMinuteSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnMinuteChangeListener;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnMinuteChangeListener;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setOnValueChangedListener(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnValueChangeListener;)V

    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    sget p1, Lcom/xiaomi/common/R$id;->amPm:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$4;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$4;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    check-cast p1, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {p1, p3}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setMinValue(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {p1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setMaxValue(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$5;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$5;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setOnValueChangedListener(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnValueChangeListener;)V

    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->updateHourControl()V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->updateAmPmControl()V

    sget-object p1, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setOnTimeChangedListener(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnTimeChangedListener;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p3}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setEnabled(Z)V

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x10

    if-lt p1, p3, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setImportantForAccessibility(I)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mIsAm:Z

    return p0
.end method

.method static synthetic access$002(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mMinuteSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mHourSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    return-object p0
.end method

.method private onTimeChanged()V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mOnTimeChangedListener:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mOnTimeChangedListener:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;II)V

    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private updateHourControl()V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mHourSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mHourSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mHourSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    sget-object v1, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setFormatter(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mHourSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mHourSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mHourSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    const/4 v1, 0x0

    goto :goto_0

    return-void
.end method


# virtual methods
.method callOnTimeChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mHourSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mHourSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    rem-int/lit8 v0, v0, 0xc

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mMinuteSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mIs24HourView:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;->getMinute()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/xiaomi/smarthome/common/ui/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mIsAm:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mIsAm:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->updateAmPmControl()V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mHourSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->onTimeChanged()V

    :cond_4
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mMinuteSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mMinuteSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mHourSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mIsEnabled:Z

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->updateHourControl()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->updateAmPmControl()V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mMinuteSpinner:Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    sget v0, Lcom/xiaomi/common/R$drawable;->number_picker_bg_last:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setBackgroundResource(I)V

    return-void
.end method

.method public setOnTimeChangedListener(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->mOnTimeChangedListener:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method
