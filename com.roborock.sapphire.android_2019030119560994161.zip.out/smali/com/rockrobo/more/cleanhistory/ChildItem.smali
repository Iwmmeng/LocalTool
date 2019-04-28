.class public Lcom/rockrobo/more/cleanhistory/ChildItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/rockrobo/more/cleanhistory/ChildItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/rockrobo/more/cleanhistory/ChildItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cleanArea:J

.field private cleanDuration:I

.field private endFlag:I

.field private errorFlag:I

.field public failedCount:I

.field private mapInfo:Lcom/rockrobo/map/MapInfo;

.field private mapRetrieveFailed:Z

.field public retriedCount:I

.field private startTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/cleanhistory/ChildItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/cleanhistory/ChildItem;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/rockrobo/more/cleanhistory/ChildItem$1;

    invoke-direct {v0}, Lcom/rockrobo/more/cleanhistory/ChildItem$1;-><init>()V

    sput-object v0, Lcom/rockrobo/more/cleanhistory/ChildItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIJII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapRetrieveFailed:Z

    iput v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->retriedCount:I

    iput v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->failedCount:I

    iput p2, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->cleanDuration:I

    iput-wide p3, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->cleanArea:J

    iput p1, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->startTime:I

    iput p5, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->errorFlag:I

    iput p6, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->endFlag:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapInfo:Lcom/rockrobo/map/MapInfo;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapRetrieveFailed:Z

    iput v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->retriedCount:I

    iput v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->failedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->cleanArea:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->cleanDuration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->endFlag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->errorFlag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->failedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput-boolean v2, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapRetrieveFailed:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapRetrieveFailed:Z

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->retriedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->startTime:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/rockrobo/more/cleanhistory/ChildItem;)I
    .locals 2

    iget v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->startTime:I

    iget v1, p1, Lcom/rockrobo/more/cleanhistory/ChildItem;->startTime:I

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->startTime:I

    iget p1, p1, Lcom/rockrobo/more/cleanhistory/ChildItem;->startTime:I

    if-ge v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/rockrobo/more/cleanhistory/ChildItem;

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->compareTo(Lcom/rockrobo/more/cleanhistory/ChildItem;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCleanArea()J
    .locals 2

    iget-wide v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->cleanArea:J

    return-wide v0
.end method

.method public getCleanAreaSquareMeter()I
    .locals 2

    invoke-virtual {p0}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getCleanArea()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCleanDuration()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->cleanDuration:I

    return v0
.end method

.method public getEndFlag()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->endFlag:I

    return v0
.end method

.method public getErrorFlag()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->errorFlag:I

    return v0
.end method

.method public getMapInfo()Lcom/rockrobo/map/MapInfo;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapInfo:Lcom/rockrobo/map/MapInfo;

    return-object v0
.end method

.method public getStartTime()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->startTime:I

    return v0
.end method

.method public isMapRetrieveFailed()Z
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapInfo:Lcom/rockrobo/map/MapInfo;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapRetrieveFailed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mapPresent()Z
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapInfo:Lcom/rockrobo/map/MapInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setMapInfo(Lcom/rockrobo/map/MapInfo;)V
    .locals 3

    sget-object v0, Lcom/rockrobo/more/cleanhistory/ChildItem;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mapInfo is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for start time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->startTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapInfo:Lcom/rockrobo/map/MapInfo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapRetrieveFailed:Z

    :cond_0
    sget-object p1, Lcom/rockrobo/more/cleanhistory/ChildItem;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map retrieve fail flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapRetrieveFailed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMapRetrieveFailed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapRetrieveFailed:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->cleanArea:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->cleanDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->endFlag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->errorFlag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->failedCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapRetrieveFailed:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    iget p2, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->retriedCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/rockrobo/more/cleanhistory/ChildItem;->startTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
