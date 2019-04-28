.class Lcom/rockrobo/more/TimerListActivity$TimerAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/TimerListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rockrobo/more/timer/PlugTimer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/rockrobo/more/TimerListActivity;


# direct methods
.method public constructor <init>(Lcom/rockrobo/more/TimerListActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/timer/PlugTimer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->mTimers:Ljava/util/List;

    return-void
.end method

.method private getOnString(IILcom/rockrobo/more/timer/PlugTimer;)Ljava/lang/String;
    .locals 2

    iget-object v0, p3, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v0}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->getRepeatType()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p3, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {p3}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->getRepeatType()I

    move-result p3

    const/16 v0, 0x7f

    if-eq p3, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    const/16 v0, 0xb

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p2

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, p3

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f0a017c

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f0a017d

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->mTimers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->mTimers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/rockrobo/xmplugin/MessageReceiver;->getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f08003e

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->mTimers:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rockrobo/more/timer/PlugTimer;

    const p3, 0x7f0600ef

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f0600f0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0175

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v2, v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    iget-object v3, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v3, v3, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    invoke-direct {p0, v2, v3, p1}, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->getOnString(IILcom/rockrobo/more/timer/PlugTimer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v2, v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    iget-object v3, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v3, v3, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    invoke-static {v2, v3}, Lcom/rockrobo/more/timer/PlugTimer;->formatTime(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0600f1

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-boolean v2, p1, Lcom/rockrobo/more/timer/PlugTimer;->on:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget-object v3, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-virtual {v3}, Lcom/rockrobo/more/TimerListActivity;->activity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->getRepeatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-virtual {v2}, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->getRepeatType()I

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f0a00c2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    invoke-static {p3}, Lcom/rockrobo/more/timer/CronTabUtils;->testOld(Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;)Z

    move-result p3

    if-eqz p3, :cond_1

    iput-boolean v0, p1, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a017c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v2, v2, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->hour:I

    iget-object v3, p1, Lcom/rockrobo/more/timer/PlugTimer;->onTime:Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;

    iget v3, v3, Lcom/rockrobo/more/timer/CronTabUtils$CronTabParam;->minute:I

    invoke-static {v2, v3}, Lcom/rockrobo/more/timer/PlugTimer;->formatTime(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const p3, 0x7f0600ee

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/rockrobo/more/timer/PlugTimer;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {v1}, Lcom/rockrobo/common/CleanMode;->toStringId()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    const p3, 0x7f060044

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f0600a8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iget v2, p1, Lcom/rockrobo/more/timer/PlugTimer;->status:I

    const/16 v3, 0x8

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setVisibility(I)V

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setVisibility(I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$1;-><init>(Lcom/rockrobo/more/TimerListActivity$TimerAdapter;Lcom/rockrobo/more/timer/PlugTimer;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 p3, 0x0

    invoke-virtual {v1, p3}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean p3, p1, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    invoke-virtual {v1, p3}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setChecked(Z)V

    new-instance p3, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;

    invoke-direct {p3, p0, p1}, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;-><init>(Lcom/rockrobo/more/TimerListActivity$TimerAdapter;Lcom/rockrobo/more/timer/PlugTimer;)V

    invoke-virtual {v1, p3}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p2
.end method

.method public updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/timer/PlugTimer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->mTimers:Ljava/util/List;

    :cond_0
    return-void
.end method
