.class public Lcom/rockrobo/more/consumable/ConsumableItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/rockrobo/more/consumable/ConsumableItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_LIFE_SPAN:I = 0x96

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MAIN_BRUSH_LIFE_SPAN:I = 0x12c

.field private static final SENSORS_CLEAN_DUE_TIME:I = 0x1e

.field public static final SIDE_BRUSH_LIFE_SPAN:I = 0xc8

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private relUsedHours:I

.field private remainHours:I

.field private remainPercent:I

.field public totalHours:I

.field public type:I

.field private usedHours:I

.field private usedMinutes:I

.field private usedSeconds:I

.field public usedTotalSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/consumable/ConsumableItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/consumable/ConsumableItem;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/rockrobo/more/consumable/ConsumableItem$1;

    invoke-direct {v0}, Lcom/rockrobo/more/consumable/ConsumableItem$1;-><init>()V

    sput-object v0, Lcom/rockrobo/more/consumable/ConsumableItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedSeconds:I

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedMinutes:I

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedHours:I

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedTotalSeconds:I

    iput p1, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->type:I

    iput p2, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedTotalSeconds:I

    invoke-direct {p0, p1}, Lcom/rockrobo/more/consumable/ConsumableItem;->setupDefaultLifeSpan(I)V

    invoke-direct {p0}, Lcom/rockrobo/more/consumable/ConsumableItem;->calcHMSAndRemain()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedSeconds:I

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedMinutes:I

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedHours:I

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedTotalSeconds:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedSeconds:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedMinutes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedHours:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedTotalSeconds:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->totalHours:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->relUsedHours:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->remainPercent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->remainHours:I

    return-void
.end method

.method private calcHMSAndRemain()V
    .locals 4

    iget v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedTotalSeconds:I

    const/4 v1, 0x0

    const/16 v2, 0xe10

    if-ge v0, v2, :cond_0

    iput v1, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedHours:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedTotalSeconds:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedHours:I

    :goto_0
    iget v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedTotalSeconds:I

    iget v3, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedHours:I

    mul-int/lit16 v3, v3, 0xe10

    sub-int/2addr v0, v3

    const/16 v2, 0x3c

    if-ge v0, v2, :cond_1

    iput v1, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedMinutes:I

    goto :goto_1

    :cond_1
    div-int/2addr v0, v2

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedMinutes:I

    :goto_1
    iget v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedTotalSeconds:I

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedSeconds:I

    invoke-direct {p0}, Lcom/rockrobo/more/consumable/ConsumableItem;->calcRemainHours()V

    invoke-direct {p0}, Lcom/rockrobo/more/consumable/ConsumableItem;->calcRemainPercent()V

    return-void
.end method

.method private calcRemainHours()V
    .locals 2

    iget v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->totalHours:I

    iget v1, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedHours:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->remainHours:I

    return-void
.end method

.method private calcRemainPercent()V
    .locals 4

    iget v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->remainHours:I

    int-to-double v0, v0

    iget v2, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->totalHours:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->remainPercent:I

    return-void
.end method

.method private setupDefaultLifeSpan(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItem;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error consumable type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const/16 p1, 0x1e

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x12c

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xc8

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x96

    :goto_0
    iput p1, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->totalHours:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public expired()Z
    .locals 2

    iget v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedHours:I

    iget v1, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->totalHours:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRelUsedHours()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->relUsedHours:I

    return v0
.end method

.method public getRemainHours()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->remainHours:I

    return v0
.end method

.method public getRemainPercent()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->remainPercent:I

    return v0
.end method

.method public getUsedHours()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedHours:I

    return v0
.end method

.method public getUsedMinutes()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedMinutes:I

    return v0
.end method

.method public getUsedSeconds()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedSeconds:I

    return v0
.end method

.method public setUsedTotalSeconds(I)V
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedTotalSeconds:I

    :cond_0
    const/16 v1, 0xe10

    if-ge p1, v1, :cond_1

    :goto_0
    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->relUsedHours:I

    goto :goto_1

    :cond_1
    div-int/lit16 v0, p1, 0xe10

    goto :goto_0

    :goto_1
    iget v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->relUsedHours:I

    const/16 v2, 0x3e7

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->relUsedHours:I

    iget v0, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->totalHours:I

    mul-int/lit16 v0, v0, 0xe10

    if-le p1, v0, :cond_2

    iget p1, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->totalHours:I

    mul-int/lit16 p1, p1, 0xe10

    :cond_2
    iput p1, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedTotalSeconds:I

    invoke-direct {p0}, Lcom/rockrobo/more/consumable/ConsumableItem;->calcHMSAndRemain()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedSeconds:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedMinutes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedHours:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->usedTotalSeconds:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->totalHours:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->relUsedHours:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->remainPercent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/rockrobo/more/consumable/ConsumableItem;->remainHours:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
