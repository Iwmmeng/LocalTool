.class Lcom/rockrobo/more/ConsumableActivity$1;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/ConsumableActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/ConsumableActivity;

.field final synthetic val$mInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/ConsumableActivity;Landroid/view/LayoutInflater;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/ConsumableActivity$1;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    iput-object p2, p0, Lcom/rockrobo/more/ConsumableActivity$1;->val$mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/ConsumableActivity$1;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-static {v0}, Lcom/rockrobo/more/ConsumableActivity;->access$000(Lcom/rockrobo/more/ConsumableActivity;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/rockrobo/more/ConsumableActivity$1;->val$mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f080022

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;

    iget-object v0, p0, Lcom/rockrobo/more/ConsumableActivity$1;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-direct {p3, v0}, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;-><init>(Lcom/rockrobo/more/ConsumableActivity;)V

    const v0, 0x7f0600a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0600a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0600a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;->subTitle:Landroid/widget/TextView;

    const v0, 0x7f0600a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;->percent:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;

    :goto_0
    iget-object v0, p0, Lcom/rockrobo/more/ConsumableActivity$1;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-static {v0}, Lcom/rockrobo/more/ConsumableActivity;->access$000(Lcom/rockrobo/more/ConsumableActivity;)[I

    move-result-object v0

    aget v0, v0, p1

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    iget-object v0, p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f0500cd

    goto :goto_1

    :sswitch_1
    iget-object v0, p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f0500cc

    goto :goto_1

    :sswitch_2
    iget-object v0, p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f0500c7

    goto :goto_1

    :sswitch_3
    iget-object v0, p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f0500c6

    goto :goto_1

    :sswitch_4
    iget-object v0, p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f0500c5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v0, p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rockrobo/more/ConsumableActivity$1;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-static {v1}, Lcom/rockrobo/more/ConsumableActivity;->access$000(Lcom/rockrobo/more/ConsumableActivity;)[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/rockrobo/more/ConsumableActivity$1;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-static {v0}, Lcom/rockrobo/more/ConsumableActivity;->access$000(Lcom/rockrobo/more/ConsumableActivity;)[I

    move-result-object v0

    aget v0, v0, p1

    const v1, 0x7f0a00cb

    if-ne v0, v1, :cond_1

    iget-object p1, p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;->subTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;->percent:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p2

    :cond_1
    invoke-static {p1}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->getConsumableData(I)Lcom/rockrobo/more/consumable/ConsumableItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockrobo/more/consumable/ConsumableItem;->getRemainHours()I

    move-result v0

    iget-object v1, p0, Lcom/rockrobo/more/ConsumableActivity$1;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-static {v1}, Lcom/rockrobo/more/ConsumableActivity;->access$000(Lcom/rockrobo/more/ConsumableActivity;)[I

    move-result-object v1

    aget v1, v1, p1

    const v2, 0x7f0a01cb

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/rockrobo/more/ConsumableActivity$1;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-virtual {v1}, Lcom/rockrobo/more/ConsumableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_2
    iget-object v1, p0, Lcom/rockrobo/more/ConsumableActivity$1;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-virtual {v1}, Lcom/rockrobo/more/ConsumableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c5

    goto :goto_3

    :goto_4
    iget-object v2, p0, Lcom/rockrobo/more/ConsumableActivity$1;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-virtual {v2}, Lcom/rockrobo/more/ConsumableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;->subTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->getConsumableData(I)Lcom/rockrobo/more/consumable/ConsumableItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockrobo/more/consumable/ConsumableItem;->getRemainPercent()I

    move-result v1

    invoke-static {}, Lcom/rockrobo/more/ConsumableActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->getConsumableData(I)Lcom/rockrobo/more/consumable/ConsumableItem;

    move-result-object p1

    iget p1, p1, Lcom/rockrobo/more/consumable/ConsumableItem;->totalHours:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",remain:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",remain percent:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/ConsumableActivity$1;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-static {p1, v1}, Lcom/rockrobo/more/ConsumableActivity;->access$200(Lcom/rockrobo/more/ConsumableActivity;I)I

    move-result p1

    iget-object v0, p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;->percent:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p3, Lcom/rockrobo/more/ConsumableActivity$ViewHolder;->percent:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2

    :sswitch_data_0
    .sparse-switch
        0x7f0a00c8 -> :sswitch_4
        0x7f0a00cb -> :sswitch_3
        0x7f0a0109 -> :sswitch_2
        0x7f0a01cb -> :sswitch_1
        0x7f0a01eb -> :sswitch_0
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
