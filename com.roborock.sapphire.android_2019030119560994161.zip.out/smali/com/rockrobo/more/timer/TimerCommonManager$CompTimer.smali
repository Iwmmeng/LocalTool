.class Lcom/rockrobo/more/timer/TimerCommonManager$CompTimer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/timer/TimerCommonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompTimer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/rockrobo/more/timer/CommonTimer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/timer/TimerCommonManager;


# direct methods
.method private constructor <init>(Lcom/rockrobo/more/timer/TimerCommonManager;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$CompTimer;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockrobo/more/timer/TimerCommonManager;Lcom/rockrobo/more/timer/TimerCommonManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/timer/TimerCommonManager$CompTimer;-><init>(Lcom/rockrobo/more/timer/TimerCommonManager;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/rockrobo/more/timer/CommonTimer;Lcom/rockrobo/more/timer/CommonTimer;)I
    .locals 1

    iget-object v0, p1, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v0, v0, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    mul-int/lit8 v0, v0, 0x3c

    iget-object p1, p1, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget p1, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    add-int/2addr v0, p1

    iget-object p1, p2, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget p1, p1, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    mul-int/lit8 p1, p1, 0x3c

    iget-object p2, p2, Lcom/rockrobo/more/timer/CommonTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget p2, p2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/rockrobo/more/timer/CommonTimer;

    check-cast p2, Lcom/rockrobo/more/timer/CommonTimer;

    invoke-virtual {p0, p1, p2}, Lcom/rockrobo/more/timer/TimerCommonManager$CompTimer;->compare(Lcom/rockrobo/more/timer/CommonTimer;Lcom/rockrobo/more/timer/CommonTimer;)I

    move-result p1

    return p1
.end method
