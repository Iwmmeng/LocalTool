.class public final Lcom/rockrobo/more/timer/PlugTimer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/rockrobo/more/timer/PlugTimer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cleanMode:Lcom/rockrobo/common/CleanMode;

.field public enable:Z

.field public isPower:Z

.field public name:Ljava/lang/String;

.field public on:Z

.field public onStatus:Z

.field public onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

.field public status:I

.field public usId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/rockrobo/more/timer/PlugTimer$1;

    invoke-direct {v0}, Lcom/rockrobo/more/timer/PlugTimer$1;-><init>()V

    sput-object v0, Lcom/rockrobo/more/timer/PlugTimer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->status:I

    sget-object v1, Lcom/rockrobo/common/CleanMode;->NONE:Lcom/rockrobo/common/CleanMode;

    iput-object v1, p0, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/rockrobo/more/timer/PlugTimer;->isPower:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->onStatus:Z

    new-instance v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-direct {v0}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;-><init>()V

    iput-object v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    iget-object v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    iget-object v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    iget-object v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    iget-object v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object v0, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->usId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/rockrobo/common/CleanMode;->valueOf(I)Lcom/rockrobo/common/CleanMode;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->status:I

    sget-object v1, Lcom/rockrobo/common/CleanMode;->NONE:Lcom/rockrobo/common/CleanMode;

    iput-object v1, p0, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rockrobo/more/timer/PlugTimer;->isPower:Z

    iput-boolean v1, p0, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    iput-boolean v1, p0, Lcom/rockrobo/more/timer/PlugTimer;->onStatus:Z

    new-instance v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-direct {v0}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;-><init>()V

    iput-object v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iput v1, p0, Lcom/rockrobo/more/timer/PlugTimer;->usId:I

    iput-object p1, p0, Lcom/rockrobo/more/timer/PlugTimer;->name:Ljava/lang/String;

    return-void
.end method

.method public static formatDigits(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTime(II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/rockrobo/more/timer/PlugTimer;->formatDigits(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/rockrobo/more/timer/PlugTimer;->formatDigits(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/timer/PlugTimer;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->isPower:Z

    iput-boolean v0, v1, Lcom/rockrobo/more/timer/PlugTimer;->isPower:Z

    iget-boolean v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    iput-boolean v0, v1, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    iget-boolean v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    iput-boolean v0, v1, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    iget-boolean v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->onStatus:Z

    iput-boolean v0, v1, Lcom/rockrobo/more/timer/PlugTimer;->onStatus:Z

    iget-object v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v0}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iput-object v0, v1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->usId:I

    iput v0, v1, Lcom/rockrobo/more/timer/PlugTimer;->usId:I

    iget-object v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/rockrobo/more/timer/PlugTimer;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    iput-object v0, v1, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    return-object v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/rockrobo/more/timer/PlugTimer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/rockrobo/more/timer/PlugTimer;

    iget-boolean v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->isPower:Z

    iget-boolean v2, p1, Lcom/rockrobo/more/timer/PlugTimer;->isPower:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    iget-boolean v2, p1, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    iget-boolean v2, p1, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->onStatus:Z

    iget-boolean v2, p1, Lcom/rockrobo/more/timer/PlugTimer;->onStatus:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object v2, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v0, v2}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/rockrobo/more/timer/PlugTimer;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    iget-object p1, p1, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {v0, p1}, Lcom/rockrobo/common/CleanMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Lcom/rockrobo/more/timer/PlugTimer;->isPower:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/rockrobo/more/timer/PlugTimer;->onStatus:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget p2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget p2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget p2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget p2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object p2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget p2, p0, Lcom/rockrobo/more/timer/PlugTimer;->usId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/rockrobo/more/timer/PlugTimer;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {p2}, Lcom/rockrobo/common/CleanMode;->getFanPower()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
