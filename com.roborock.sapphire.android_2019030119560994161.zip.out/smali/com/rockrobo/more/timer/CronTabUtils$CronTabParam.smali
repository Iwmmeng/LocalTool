.class public Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/timer/CronTabUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CronTabParam"
.end annotation


# instance fields
.field public day:I

.field public hour:I

.field public minute:I

.field public month:I

.field public weeks:[Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    iget-object v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    iput v0, v1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    iget v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    iput v0, v1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    iget v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    iput v0, v1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    iget v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    iput v0, v1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    const/4 v0, 0x7

    new-array v0, v0, [Z

    iput-object v0, v1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    iget-object v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    iget-object v2, v1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    iget-object v3, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    shl-int v4, v5, v0

    or-int/2addr v2, v4

    :cond_1
    iget-object v4, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_2

    shl-int v4, v5, v0

    or-int/2addr v3, v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    iget v4, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    if-ne v0, v4, :cond_4

    iget v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    iget v4, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    if-ne v0, v4, :cond_4

    iget v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    iget v4, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    if-ne v0, v4, :cond_4

    iget v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    iget p1, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    if-ne v0, p1, :cond_4

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public getRepeatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    shl-int v3, v4, v1

    or-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v5, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    sub-int/2addr v5, v4

    iget v6, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    invoke-virtual {v2, v3, v5, v6}, Ljava/util/Calendar;->set(III)V

    invoke-static {v1, v2}, Lcom/rockrobo/more/timer/DateUtils;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0a017c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {v2, v4}, Lcom/rockrobo/more/timer/DateUtils;->isWithinDaysFuture(Ljava/util/Calendar;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f0a017d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v2, v4}, Lcom/rockrobo/more/timer/DateUtils;->isWithinDaysPast(Ljava/util/Calendar;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0a0183

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const v1, 0x7f0a016f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    iget v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/16 v1, 0x3e

    if-ne v2, v1, :cond_6

    const v0, 0x7f0a0182

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const/16 v1, 0x41

    if-ne v2, v1, :cond_7

    const v0, 0x7f0a0181

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const/16 v1, 0x7f

    if-ne v2, v1, :cond_8

    const v0, 0x7f0a016b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v1, p1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_a

    iget-object v3, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_9

    add-int/lit8 v3, v2, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatType()I
    .locals 4

    iget v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    shl-int v2, v3, v1

    or-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x3e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x41

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    return v3

    :cond_4
    const/4 v0, 0x3

    return v0

    :cond_5
    const/4 v0, 0x2

    return v0
.end method

.method public setRepeat(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    iget-object p1, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void

    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    iput v2, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    shl-int v4, v1, v2

    and-int/2addr v4, p1

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setWeekday(IZ)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    iput v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    iget-object v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    aput-boolean p2, v0, p1

    return-void
.end method
