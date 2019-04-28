.class Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/ProductGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/ProductGuideActivity;


# direct methods
.method private constructor <init>(Lcom/rockrobo/more/ProductGuideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockrobo/more/ProductGuideActivity;Lcom/rockrobo/more/ProductGuideActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;-><init>(Lcom/rockrobo/more/ProductGuideActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {v0}, Lcom/rockrobo/more/ProductGuideActivity;->access$600(Lcom/rockrobo/more/ProductGuideActivity;)[I

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

    iget-object p2, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p2}, Lcom/rockrobo/more/ProductGuideActivity;->access$900(Lcom/rockrobo/more/ProductGuideActivity;)[Landroid/view/View;

    move-result-object p2

    aget-object p2, p2, p1

    const/4 p3, 0x0

    const v0, 0x7f0a0073

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p2}, Lcom/rockrobo/more/ProductGuideActivity;->access$600(Lcom/rockrobo/more/ProductGuideActivity;)[I

    move-result-object p2

    aget p2, p2, p1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p2}, Lcom/rockrobo/more/ProductGuideActivity;->access$1000(Lcom/rockrobo/more/ProductGuideActivity;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f080029

    invoke-virtual {p2, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {v1}, Lcom/rockrobo/more/ProductGuideActivity;->access$900(Lcom/rockrobo/more/ProductGuideActivity;)[Landroid/view/View;

    move-result-object v1

    aput-object p2, v1, p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p2}, Lcom/rockrobo/more/ProductGuideActivity;->access$1000(Lcom/rockrobo/more/ProductGuideActivity;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f08002a

    invoke-virtual {p2, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p3}, Lcom/rockrobo/more/ProductGuideActivity;->access$900(Lcom/rockrobo/more/ProductGuideActivity;)[Landroid/view/View;

    move-result-object p3

    aput-object p2, p3, p1

    new-instance p3, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;

    iget-object v1, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-direct {p3, v1}, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;-><init>(Lcom/rockrobo/more/ProductGuideActivity;)V

    const v1, 0x7f060032

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f06000a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->arrowRight:Landroid/widget/ImageView;

    const v1, 0x7f060102

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->valueDisplay:Landroid/widget/TextView;

    const v1, 0x7f060091

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p3, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f06005c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iput-object v1, p3, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->switchButton:Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    const v1, 0x7f060058

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p3, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->sepLine:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;

    :goto_0
    const/16 v1, 0x8

    if-eqz p3, :cond_3

    iget-object v2, p3, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {v3}, Lcom/rockrobo/more/ProductGuideActivity;->access$600(Lcom/rockrobo/more/ProductGuideActivity;)[I

    move-result-object v3

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {v3}, Lcom/rockrobo/more/ProductGuideActivity;->access$600(Lcom/rockrobo/more/ProductGuideActivity;)[I

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {v3}, Lcom/rockrobo/more/ProductGuideActivity;->access$600(Lcom/rockrobo/more/ProductGuideActivity;)[I

    move-result-object v3

    aget v3, v3, v2

    if-ne v3, v0, :cond_2

    iget-object v3, p3, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->sepLine:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {v3}, Lcom/rockrobo/more/ProductGuideActivity;->access$600(Lcom/rockrobo/more/ProductGuideActivity;)[I

    move-result-object v3

    array-length v3, v3

    if-ne v2, v3, :cond_3

    iget-object v2, p3, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->sepLine:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {v2}, Lcom/rockrobo/more/ProductGuideActivity;->access$600(Lcom/rockrobo/more/ProductGuideActivity;)[I

    move-result-object v2

    aget p1, v2, p1

    if-eq p1, v0, :cond_5

    const v0, 0x7f0a01d0

    if-eq p1, v0, :cond_4

    return-object p2

    :cond_4
    iget-object p1, p3, Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;->arrowRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p1, p3}, Lcom/rockrobo/more/ProductGuideActivity;->access$1102(Lcom/rockrobo/more/ProductGuideActivity;Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;)Lcom/rockrobo/more/ProductGuideActivity$ViewHolder;

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity$ListAdapter;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {v0}, Lcom/rockrobo/more/ProductGuideActivity;->access$1200(Lcom/rockrobo/more/ProductGuideActivity;)I

    move-result v0

    invoke-static {p1, v0, p3}, Lcom/rockrobo/more/ProductGuideActivity;->access$1300(Lcom/rockrobo/more/ProductGuideActivity;ILcom/rockrobo/more/ProductGuideActivity$ViewHolder;)V

    :cond_5
    return-object p2
.end method
