.class final Lcom/rockrobo/common/RobotInfo$Data$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/common/RobotInfo$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/rockrobo/common/RobotInfo$Data;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/rockrobo/common/RobotInfo$Data;
    .locals 1

    new-instance v0, Lcom/rockrobo/common/RobotInfo$Data;

    invoke-direct {v0, p1}, Lcom/rockrobo/common/RobotInfo$Data;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rockrobo/common/RobotInfo$Data$1;->createFromParcel(Landroid/os/Parcel;)Lcom/rockrobo/common/RobotInfo$Data;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/rockrobo/common/RobotInfo$Data;
    .locals 0

    new-array p1, p1, [Lcom/rockrobo/common/RobotInfo$Data;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rockrobo/common/RobotInfo$Data$1;->newArray(I)[Lcom/rockrobo/common/RobotInfo$Data;

    move-result-object p1

    return-object p1
.end method
