.class Lcom/rockrobo/more/MoreActivity$MoreListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/MoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/MoreActivity;


# direct methods
.method private constructor <init>(Lcom/rockrobo/more/MoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockrobo/more/MoreActivity;Lcom/rockrobo/more/MoreActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;-><init>(Lcom/rockrobo/more/MoreActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    iget-object v1, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {v1}, Lcom/rockrobo/more/MoreActivity;->access$800(Lcom/rockrobo/more/MoreActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rockrobo/more/MoreActivity;->access$600(Lcom/rockrobo/more/MoreActivity;Lcom/rockrobo/xmplugin/Device;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object p2, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$900(Lcom/rockrobo/more/MoreActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/rockrobo/more/MoreActivity;->access$600(Lcom/rockrobo/more/MoreActivity;Lcom/rockrobo/xmplugin/Device;)[I

    move-result-object p2

    aget p2, p2, p1

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;

    move-result-object p3

    aget-object p3, p3, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_2

    const p3, 0x7f0a0073

    if-eq p2, p3, :cond_1

    const p3, 0x7f0a00d3

    if-eq p2, p3, :cond_0

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;

    move-result-object p3

    iget-object v2, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {v2}, Lcom/rockrobo/more/MoreActivity;->access$1100(Lcom/rockrobo/more/MoreActivity;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f080028

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    aput-object v1, p3, p1

    new-instance v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-direct {v1, p3}, Lcom/rockrobo/more/MoreActivity$ViewHolder;-><init>(Lcom/rockrobo/more/MoreActivity;)V

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;

    move-result-object p3

    aget-object p3, p3, p1

    const v2, 0x7f0600dd

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->title:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;

    move-result-object p3

    aget-object p3, p3, p1

    const v2, 0x7f0600c9

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->subTitle:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;

    move-result-object p3

    aget-object p3, p3, p1

    const v2, 0x7f06000a

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->arrow:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;

    move-result-object p3

    aget-object p3, p3, p1

    const v2, 0x7f06005c

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iput-object p3, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->switchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;

    move-result-object p3

    aget-object p3, p3, p1

    const v2, 0x7f0600fc

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->redPoint:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;

    move-result-object p3

    aget-object p3, p3, p1

    const v2, 0x7f06005b

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->separator:Landroid/view/View;

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;

    move-result-object p3

    aget-object p3, p3, p1

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;

    move-result-object p3

    iget-object v2, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {v2}, Lcom/rockrobo/more/MoreActivity;->access$1100(Lcom/rockrobo/more/MoreActivity;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f080025

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, p3, p1

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;

    move-result-object p3

    aget-object p3, p3, p1

    new-instance v2, Lcom/rockrobo/more/MoreActivity$FindMeOnClickListener;

    iget-object v3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-direct {v2, v3, v1}, Lcom/rockrobo/more/MoreActivity$FindMeOnClickListener;-><init>(Lcom/rockrobo/more/MoreActivity;Lcom/rockrobo/more/MoreActivity$1;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;

    move-result-object p3

    iget-object v2, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {v2}, Lcom/rockrobo/more/MoreActivity;->access$1100(Lcom/rockrobo/more/MoreActivity;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f080024

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, p3, p1

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;

    move-result-object p3

    aget-object p3, p3, p1

    invoke-virtual {p3, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;

    move-result-object p3

    aget-object p3, p3, p1

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;

    :goto_0
    if-eqz v1, :cond_5

    iget-object p3, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    const/16 p3, 0x8

    sparse-switch p2, :sswitch_data_0

    iget-object p2, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->switchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-virtual {p2, p3}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setVisibility(I)V

    goto/16 :goto_3

    :sswitch_0
    iget-object p2, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p2, v1}, Lcom/rockrobo/more/MoreActivity;->access$2002(Lcom/rockrobo/more/MoreActivity;Lcom/rockrobo/more/MoreActivity$ViewHolder;)Lcom/rockrobo/more/MoreActivity$ViewHolder;

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getTimeZoneId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p2}, Lcom/rockrobo/more/MoreActivity;->access$2100(Lcom/rockrobo/more/MoreActivity;)V

    goto :goto_3

    :sswitch_1
    iget-object p2, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->switchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-virtual {p2, p3}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setVisibility(I)V

    iget-object p2, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->separator:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :sswitch_2
    iget-object p2, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->switchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-virtual {p2, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setVisibility(I)V

    iget-object p2, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->switchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iget-object p3, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p3}, Lcom/rockrobo/more/MoreActivity;->access$1300(Lcom/rockrobo/more/MoreActivity;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setChecked(Z)V

    iget-object p2, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->switchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    new-instance p3, Lcom/rockrobo/more/MoreActivity$MoreListAdapter$1;

    invoke-direct {p3, p0}, Lcom/rockrobo/more/MoreActivity$MoreListAdapter$1;-><init>(Lcom/rockrobo/more/MoreActivity$MoreListAdapter;)V

    invoke-virtual {p2, p3}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    :sswitch_3
    iget-object p2, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p2}, Lcom/rockrobo/more/MoreActivity;->access$1800(Lcom/rockrobo/more/MoreActivity;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->redPoint:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object p2, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->redPoint:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object p2, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->separator:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p2, v1}, Lcom/rockrobo/more/MoreActivity;->access$1902(Lcom/rockrobo/more/MoreActivity;Lcom/rockrobo/more/MoreActivity$ViewHolder;)Lcom/rockrobo/more/MoreActivity$ViewHolder;

    goto :goto_3

    :sswitch_4
    sget-boolean p2, Lcom/rockrobo/more/consumable/ConsumableItemSet;->dataRetrieved:Z

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->hasConsumableExpired()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->redPoint:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object p2, v1, Lcom/rockrobo/more/MoreActivity$ViewHolder;->redPoint:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object p2, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p2, v1}, Lcom/rockrobo/more/MoreActivity;->access$2202(Lcom/rockrobo/more/MoreActivity;Lcom/rockrobo/more/MoreActivity$ViewHolder;)Lcom/rockrobo/more/MoreActivity$ViewHolder;

    :cond_5
    :goto_3
    iget-object p2, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p2}, Lcom/rockrobo/more/MoreActivity;->access$1000(Lcom/rockrobo/more/MoreActivity;)[Landroid/view/View;

    move-result-object p2

    aget-object p1, p2, p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x7f0a0040 -> :sswitch_4
        0x7f0a00db -> :sswitch_3
        0x7f0a013b -> :sswitch_2
        0x7f0a018d -> :sswitch_1
        0x7f0a01be -> :sswitch_0
    .end sparse-switch
.end method
