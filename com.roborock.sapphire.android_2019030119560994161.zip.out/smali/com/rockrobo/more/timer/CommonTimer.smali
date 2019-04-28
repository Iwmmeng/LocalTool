.class public final Lcom/rockrobo/more/timer/CommonTimer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/rockrobo/more/timer/CommonTimer;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_CLEAN:Ljava/lang/String; = "start_clean"

.field public static final TIMER_STATUS_ERROR_LOCAL_SCENE_SYNC_DEL_UNXDEL_CODE:I = -0x1

.field public static final TIMER_STATUS_ERROR_LOCAL_SCENE_SYNC_SET_DISABLE_UNXDEL_CODE:I = 0x1

.field public static final TIMER_STATUS_NORMAL:I


# instance fields
.field private cleanMode:Lcom/rockrobo/common/CleanMode;

.field public enable:Z

.field public enablePush:Z

.field public name:Ljava/lang/String;

.field public on:Z

.field public onMethod:Ljava/lang/String;

.field public onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

.field public status:I

.field public usId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/rockrobo/more/timer/CommonTimer$1;

    invoke-direct {v0}, Lcom/rockrobo/more/timer/CommonTimer$1;-><init>()V

    sput-object v0, Lcom/rockrobo/more/timer/CommonTimer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->usId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rockrobo/more/timer/CommonTimer;->enablePush:Z

    iput-boolean v1, p0, Lcom/rockrobo/more/timer/CommonTimer;->enable:Z

    iput-boolean v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->on:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/rockrobo/more/timer/CommonTimer;->onMethod:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/timer/CommonTimer;->setCleanMode(Lcom/rockrobo/common/CleanMode;)V

    new-instance v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-direct {v2}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;-><init>()V

    iput-object v2, p0, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iput-object v1, p0, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;

    iput v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->status:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->usId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->enablePush:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->enable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/rockrobo/more/timer/CommonTimer;->on:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->onMethod:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/rockrobo/common/CleanMode;->valueOf(I)Lcom/rockrobo/common/CleanMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/timer/CommonTimer;->setCleanMode(Lcom/rockrobo/common/CleanMode;)V

    new-instance v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-direct {v0}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;-><init>()V

    iput-object v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    iget-object v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    iget-object v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    iget-object v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    iget-object v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object v0, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/rockrobo/more/timer/CommonTimer;->status:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/rockrobo/more/timer/CommonTimer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/timer/CommonTimer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static toCommonTimer(Lcom/rockrobo/more/timer/PlugTimer;)Lcom/rockrobo/more/timer/CommonTimer;
    .locals 2

    new-instance v0, Lcom/rockrobo/more/timer/CommonTimer;

    invoke-direct {v0}, Lcom/rockrobo/more/timer/CommonTimer;-><init>()V

    iget v1, p0, Lcom/rockrobo/more/timer/PlugTimer;->usId:I

    iput v1, v0, Lcom/rockrobo/more/timer/CommonTimer;->usId:I

    iget-boolean v1, p0, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    iput-boolean v1, v0, Lcom/rockrobo/more/timer/CommonTimer;->enable:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rockrobo/more/timer/CommonTimer;->enablePush:Z

    iget-boolean v1, p0, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    iput-boolean v1, v0, Lcom/rockrobo/more/timer/CommonTimer;->on:Z

    iget-object v1, p0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iput-object v1, v0, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    const-string v1, ""

    iput-object v1, v0, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;

    const-string v1, "start_clean"

    iput-object v1, v0, Lcom/rockrobo/more/timer/CommonTimer;->onMethod:Ljava/lang/String;

    iget-object v1, p0, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    iput-object v1, v0, Lcom/rockrobo/more/timer/CommonTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    iget v1, p0, Lcom/rockrobo/more/timer/PlugTimer;->status:I

    iput v1, v0, Lcom/rockrobo/more/timer/CommonTimer;->status:I

    iget-object p0, p0, Lcom/rockrobo/more/timer/PlugTimer;->name:Ljava/lang/String;

    iput-object p0, v0, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static toPlugTimer(Lcom/rockrobo/more/timer/CommonTimer;)Lcom/rockrobo/more/timer/PlugTimer;
    .locals 2

    new-instance v0, Lcom/rockrobo/more/timer/PlugTimer;

    iget-object v1, p0, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/rockrobo/more/timer/PlugTimer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/rockrobo/more/timer/CommonTimer;->usId:I

    iput v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->usId:I

    iget-boolean v1, p0, Lcom/rockrobo/more/timer/CommonTimer;->enable:Z

    iput-boolean v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->isPower:Z

    iget-boolean v1, p0, Lcom/rockrobo/more/timer/CommonTimer;->on:Z

    iput-boolean v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    iget-object v1, p0, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iput-object v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->onStatus:Z

    iget v1, p0, Lcom/rockrobo/more/timer/CommonTimer;->status:I

    iput v1, v0, Lcom/rockrobo/more/timer/PlugTimer;->status:I

    invoke-virtual {p0}, Lcom/rockrobo/more/timer/CommonTimer;->getCleanMode()Lcom/rockrobo/common/CleanMode;

    move-result-object p0

    iput-object p0, v0, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/timer/CommonTimer;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->usId:I

    iput v0, v1, Lcom/rockrobo/more/timer/CommonTimer;->usId:I

    iget-boolean v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->enable:Z

    iput-boolean v0, v1, Lcom/rockrobo/more/timer/CommonTimer;->enable:Z

    iget-boolean v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->on:Z

    iput-boolean v0, v1, Lcom/rockrobo/more/timer/CommonTimer;->on:Z

    iget-object v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->onMethod:Ljava/lang/String;

    iput-object v0, v1, Lcom/rockrobo/more/timer/CommonTimer;->onMethod:Ljava/lang/String;

    iget-object v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    iput-object v0, v1, Lcom/rockrobo/more/timer/CommonTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    iget-object v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v0}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iput-object v0, v1, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;

    iget v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->status:I

    iput v0, v1, Lcom/rockrobo/more/timer/CommonTimer;->status:I
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

.method public getCleanMode()Lcom/rockrobo/common/CleanMode;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockrobo/common/CleanMode;->NONE:Lcom/rockrobo/common/CleanMode;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    return-object v0
.end method

.method public setCleanMode(Lcom/rockrobo/common/CleanMode;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/rockrobo/common/CleanMode;->NONE:Lcom/rockrobo/common/CleanMode;

    iput-object v0, p0, Lcom/rockrobo/more/timer/CommonTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    :cond_0
    iput-object p1, p0, Lcom/rockrobo/more/timer/CommonTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/rockrobo/more/timer/CommonTimer;->usId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/rockrobo/more/timer/CommonTimer;->enablePush:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/rockrobo/more/timer/CommonTimer;->enable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/rockrobo/more/timer/CommonTimer;->on:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/rockrobo/more/timer/CommonTimer;->onMethod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rockrobo/more/timer/CommonTimer;->getCleanMode()Lcom/rockrobo/common/CleanMode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/rockrobo/common/CleanMode;->getFanPower()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget p2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget p2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget p2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget p2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object p2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object p2, p0, Lcom/rockrobo/more/timer/CommonTimer;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/rockrobo/more/timer/CommonTimer;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
