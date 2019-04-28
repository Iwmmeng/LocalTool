.class public Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;
.super Ljava/lang/Object;


# static fields
.field public static final KILO_SUFFIX:Ljava/lang/String; = "k"

.field public static final TYPE_DURATION_HOUR:I = 0x1

.field public static final TYPE_DURATION_MINUTE:I


# instance fields
.field private totalArea:J

.field private totalDuration:I

.field private totalTimes:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalDuration:I

    iput-wide p2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalArea:J

    iput p4, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalTimes:I

    return-void
.end method


# virtual methods
.method public getTotalArea()J
    .locals 2

    iget-wide v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalArea:J

    return-wide v0
.end method

.method public getTotalAreaDesc()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalArea:J

    invoke-static {v0, v1}, Lcom/rockrobo/utils/RRUtils;->getLocalArea(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-string v0, "0"

    return-object v0

    :cond_0
    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/32 v2, 0xf4240

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "k"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "999k"

    return-object v0
.end method

.method public getTotalDuration()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalDuration:I

    return v0
.end method

.method public getTotalDurationDesc()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalDuration:I

    if-gez v0, :cond_0

    const-string v0, "0"

    return-object v0

    :cond_0
    iget v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalDuration:I

    const v1, 0x927c0

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalDuration:I

    div-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalDuration:I

    const v1, 0x2255100

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalDuration:I

    div-int/lit16 v0, v0, 0xe10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalDuration:I

    const v1, -0x296c5c00

    if-ge v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalDuration:I

    const v2, 0x36ee80

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "k"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "999k"

    return-object v0
.end method

.method public getTotalDurationUnit()I
    .locals 2

    iget v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalDuration:I

    const v1, 0x927c0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getTotalTimes()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalTimes:I

    return v0
.end method

.method public getTotalTimesDesc()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalTimes:I

    if-gez v0, :cond_0

    const-string v0, "0"

    return-object v0

    :cond_0
    iget v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalTimes:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalTimes:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalTimes:I

    const v1, 0xf4240

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalTimes:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "k"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "999k"

    return-object v0
.end method

.method public setTotalArea(J)V
    .locals 0

    iput-wide p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;->totalArea:J

    return-void
.end method
