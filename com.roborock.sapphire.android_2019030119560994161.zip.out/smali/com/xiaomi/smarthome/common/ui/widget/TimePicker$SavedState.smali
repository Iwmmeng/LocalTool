.class Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState$1;

    invoke-direct {v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;->mHour:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;->mMinute:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;->mHour:I

    iput p3, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;->mMinute:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILcom/xiaomi/smarthome/common/ui/widget/TimePicker$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;->mHour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$SavedState;->mMinute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
