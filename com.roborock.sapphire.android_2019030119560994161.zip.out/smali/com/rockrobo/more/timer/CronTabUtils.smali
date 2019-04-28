.class public Lcom/rockrobo/more/timer/CronTabUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;
    }
.end annotation


# static fields
.field public static final EVERYDAY:I = 0x7f

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final ONCE:I = 0x0

.field public static final TIMER_TYPE_EVERYDAY:I = 0x1

.field public static final TIMER_TYPE_ONCE:I = 0x0

.field public static final TIMER_TYPE_SELF_DEFINE:I = 0x4

.field public static final TIMER_TYPE_WEEKEND:I = 0x3

.field public static final TIMER_TYPE_WORKDAY:I = 0x2

.field public static final WEEKEND:I = 0x41

.field public static final WORKDAY:I = 0x3e


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/timer/CronTabUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/timer/CronTabUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCronTabByTimeZone(Ljava/util/TimeZone;Ljava/util/TimeZone;Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    int-to-long v3, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    sub-long v0, v2, p0

    long-to-int p0, v0

    iget-object p1, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget-boolean v4, p1, v2

    if-eqz v4, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    sub-int/2addr v2, v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    iget v2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    iget v2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    const/16 v6, 0xb

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    iget v2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    const/16 v7, 0xc

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    div-int/lit8 v2, p0, 0x3c

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->add(II)V

    rem-int/lit8 v2, p0, 0x3c

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p2}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    if-eqz p1, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, v3

    iput p0, v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p0

    iput p0, v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result p0

    iput p0, v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result p0

    iput p0, v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    goto :goto_4

    :cond_2
    iget p1, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    mul-int/lit8 p1, p1, 0x3c

    iget v3, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    add-int/2addr p1, v3

    add-int/2addr p1, p0

    const/4 p0, 0x7

    if-gez p1, :cond_4

    new-array p1, p0, [Z

    :goto_2
    iget-object v3, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    array-length v3, v3

    if-ge v1, v3, :cond_3

    add-int/lit8 v3, v1, 0x6

    rem-int/2addr v3, p0

    iget-object v4, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    aget-boolean v4, v4, v1

    aput-boolean v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iput-object p1, v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    goto :goto_4

    :cond_4
    const/16 v3, 0x5a0

    if-lt p1, v3, :cond_6

    new-array p0, p0, [Z

    :goto_3
    iget-object p1, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    array-length p1, p1

    if-ge v1, p1, :cond_5

    add-int/lit8 p1, v1, 0x1

    rem-int/lit8 v3, p1, 0x7

    iget-object v4, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    aget-boolean v1, v4, v1

    aput-boolean v1, p0, v3

    move v1, p1

    goto :goto_3

    :cond_5
    iput-object p0, v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->clone()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    :goto_4
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result p0

    iput p0, v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result p0

    iput p0, v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    return-object v2
.end method

.method public static convertTimeZone(Ljava/util/TimeZone;Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;
    .locals 1

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/rockrobo/more/timer/CronTabUtils;->convertCronTabByTimeZone(Ljava/util/TimeZone;Ljava/util/TimeZone;Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    move-result-object p0

    return-object p0
.end method

.method public static getCronTabParamPlug(Ljava/lang/String;)Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;
    .locals 9

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-direct {v0}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    const/4 v3, -0x1

    :try_start_0
    aget-object v4, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    sget-object v5, Lcom/rockrobo/more/timer/CronTabUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException, msg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const/4 v4, 0x7

    new-array v4, v4, [Z

    aget-object v5, p0, v2

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    if-ne v5, v3, :cond_0

    iget v5, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    if-ne v5, v3, :cond_0

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([ZZ)V

    goto :goto_3

    :cond_0
    invoke-static {v4, v1}, Ljava/util/Arrays;->fill([ZZ)V

    :try_start_1
    aget-object v3, p0, v2

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v5, v3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_1

    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput-boolean v6, v4, v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_1
    move-exception v3

    sget-object v5, Lcom/rockrobo/more/timer/CronTabUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    iput-object v4, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    goto :goto_4

    :pswitch_1
    iput v4, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    goto :goto_4

    :pswitch_2
    iput v4, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    goto :goto_4

    :pswitch_3
    iput v4, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    goto :goto_4

    :pswitch_4
    iput v4, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getServerDefaultTimeZone()Ljava/util/TimeZone;
    .locals 1

    const-string v0, "Asia/Shanghai"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static getTimerParam(Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "* "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    :goto_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x7

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->weeks:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_5

    if-eqz v2, :cond_4

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static testOld(Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Z
    .locals 7

    iget v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v5, 0x1

    add-int/2addr v0, v5

    iget v6, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    if-le v0, v6, :cond_0

    return v5

    :cond_0
    iget v6, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->month:I

    if-ne v0, v6, :cond_3

    iget v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    if-le v4, v0, :cond_1

    return v5

    :cond_1
    iget v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->day:I

    if-ne v4, v0, :cond_3

    iget v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    if-le v2, v0, :cond_2

    return v5

    :cond_2
    iget v0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    if-ne v2, v0, :cond_3

    iget p0, p0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    if-lt v3, p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
