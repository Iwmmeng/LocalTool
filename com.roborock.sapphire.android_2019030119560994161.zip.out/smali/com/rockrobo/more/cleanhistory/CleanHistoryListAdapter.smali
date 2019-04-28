.class public Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;

.field private currentItemStartTime:I

.field private inflater:Landroid/view/LayoutInflater;

.field private lastHighLightView:Landroid/widget/TextView;

.field private mapLinkColorHighLight:I

.field private mapLinkColorNormal:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/rockrobo/more/CleanHistoryActivity;Landroid/view/LayoutInflater;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->currentItemStartTime:I

    iput-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->activity:Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;

    iput-object p2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Lcom/rockrobo/more/CleanHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0300a9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->mapLinkColorNormal:I

    invoke-virtual {p1}, Lcom/rockrobo/more/CleanHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x7f030000

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->mapLinkColorHighLight:I

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->mapLinkClicked(Landroid/widget/TextView;I)V

    return-void
.end method

.method private mapLinkClicked(Landroid/widget/TextView;I)V
    .locals 3

    sget-object v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got on touch event 1 for position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->lastHighLightView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->lastHighLightView:Landroid/widget/TextView;

    iget v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->mapLinkColorNormal:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->mapLinkColorHighLight:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->lastHighLightView:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getChildItem(I)Lcom/rockrobo/more/cleanhistory/ChildItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getStartTime()I

    move-result p1

    iput p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->currentItemStartTime:I

    invoke-static {p2}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->setCurrentItemIndex(I)V

    iget-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->activity:Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;

    const/4 p2, 0x0

    const-class v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;->startActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    invoke-static {}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getChildItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getChildItem(I)Lcom/rockrobo/more/cleanhistory/ChildItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    invoke-static {p1}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getChildItem(I)Lcom/rockrobo/more/cleanhistory/ChildItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getStartTime()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f080026

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;

    invoke-direct {p3, p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;-><init>(Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;)V

    const v0, 0x7f0600ba

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->duration:Landroid/widget/TextView;

    const v0, 0x7f0600b9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->area:Landroid/widget/TextView;

    const v0, 0x7f060009

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->areaSymbol:Landroid/widget/TextView;

    const v0, 0x7f0600c1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->startDate:Landroid/widget/TextView;

    const v0, 0x7f0600c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->startTime:Landroid/widget/TextView;

    const v0, 0x7f060040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->endStatus:Landroid/widget/ImageView;

    const v0, 0x7f06006d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->mapDetailLink:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;

    :goto_0
    invoke-static {p1}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getChildItem(I)Lcom/rockrobo/more/cleanhistory/ChildItem;

    move-result-object v0

    const-string v1, "tw"

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->getRegionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    iget-object v2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->activity:Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;

    invoke-virtual {v2}, Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->areaSymbol:Landroid/widget/TextView;

    const v2, 0x7f0a0025

    goto :goto_1

    :cond_1
    iget-object v1, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->areaSymbol:Landroid/widget/TextView;

    const v2, 0x7f0a0024

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->duration:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->activity:Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;

    invoke-static {v0, v2}, Lcom/rockrobo/more/cleanhistory/CleanHistoryItemFormatter;->formatWorkDuration(Lcom/rockrobo/more/cleanhistory/ChildItem;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->activity:Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;

    invoke-virtual {v1}, Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->area:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->activity:Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;

    invoke-static {v3, v1, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryItemFormatter;->formatCleanArea(Landroid/content/Context;Ljava/lang/String;Lcom/rockrobo/more/cleanhistory/ChildItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->startDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->activity:Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;

    invoke-static {v0, v2}, Lcom/rockrobo/more/cleanhistory/CleanHistoryItemFormatter;->formatStartDate(Lcom/rockrobo/more/cleanhistory/ChildItem;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->startTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->activity:Lcom/xiaomi/smarthome/device/api/XmPluginBaseActivity;

    invoke-static {v0, v2}, Lcom/rockrobo/more/cleanhistory/CleanHistoryItemFormatter;->formatStartTime(Lcom/rockrobo/more/cleanhistory/ChildItem;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->endStatus:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryItemFormatter;->getEndIconResId(Lcom/rockrobo/more/cleanhistory/ChildItem;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->getChildItem(I)Lcom/rockrobo/more/cleanhistory/ChildItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getStartTime()I

    move-result v0

    iget v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->currentItemStartTime:I

    if-ne v0, v1, :cond_2

    iget-object v0, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->mapDetailLink:Landroid/widget/TextView;

    iget v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->mapLinkColorHighLight:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_2
    iget-object v0, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->mapDetailLink:Landroid/widget/TextView;

    iget v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->mapLinkColorNormal:I

    goto :goto_2

    :goto_3
    iget-object p3, p3, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$ChildViewHolder;->mapDetailLink:Landroid/widget/TextView;

    new-instance v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$1;-><init>(Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$2;

    invoke-direct {p1, p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$2;-><init>(Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p2
.end method
