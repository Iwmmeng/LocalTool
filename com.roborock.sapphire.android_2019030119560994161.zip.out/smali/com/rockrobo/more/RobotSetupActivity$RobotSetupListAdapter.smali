.class Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/RobotSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RobotSetupListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/RobotSetupActivity;


# direct methods
.method private constructor <init>(Lcom/rockrobo/more/RobotSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockrobo/more/RobotSetupActivity;Lcom/rockrobo/more/RobotSetupActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;-><init>(Lcom/rockrobo/more/RobotSetupActivity;)V

    return-void
.end method

.method private setupCarpetModeItem(I)Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;
    .locals 5

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$400(Lcom/rockrobo/more/RobotSetupActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f080020

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object v1

    aget-object p1, v1, p1

    const v1, 0x7f0600cb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-static {v0, p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$902(Lcom/rockrobo/more/RobotSetupActivity;Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;)Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$900(Lcom/rockrobo/more/RobotSetupActivity;)Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$1000(Lcom/rockrobo/more/RobotSetupActivity;)Lcom/rockrobo/common/CarpetMode;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/common/CarpetMode;->ON:Lcom/rockrobo/common/CarpetMode;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setChecked(Z)V

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getCarpetMode()Lcom/rockrobo/common/CarpetMode;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getCarpetMode()Lcom/rockrobo/common/CarpetMode;

    move-result-object p1

    sget-object v0, Lcom/rockrobo/common/CarpetMode;->ON:Lcom/rockrobo/common/CarpetMode;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$900(Lcom/rockrobo/more/RobotSetupActivity;)Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setChecked(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$900(Lcom/rockrobo/more/RobotSetupActivity;)Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setChecked(Z)V

    :goto_1
    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$900(Lcom/rockrobo/more/RobotSetupActivity;)Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$1;-><init>(Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v2
.end method

.method private setupGeneralItem(I)Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$400(Lcom/rockrobo/more/RobotSetupActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f080028

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, p1

    new-instance v0, Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-direct {v0, v1}, Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;-><init>(Lcom/rockrobo/more/RobotSetupActivity;)V

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, p1

    const v2, 0x7f0600dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, p1

    const v2, 0x7f0600c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;->access$502(Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, p1

    const v2, 0x7f06000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;->access$602(Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, p1

    const v2, 0x7f06005c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-static {v0, v1}, Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;->access$702(Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;)Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, p1

    const v2, 0x7f0600fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;->access$802(Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;->access$600(Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;->access$700(Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;)Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private setupTimeZoneItem(I)Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$400(Lcom/rockrobo/more/RobotSetupActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f08002b

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, p1

    const v3, 0x7f0600d2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$1502(Lcom/rockrobo/more/RobotSetupActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object v1

    aget-object p1, v1, p1

    const v1, 0x7f0600d1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$1602(Lcom/rockrobo/more/RobotSetupActivity;Landroid/view/View;)Landroid/view/View;

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getTimeZoneId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$1500(Lcom/rockrobo/more/RobotSetupActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getTimeZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$1700(Lcom/rockrobo/more/RobotSetupActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/RobotSetupActivity;->setupTimeZoneMismatchIndicator()V

    return-object v2

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$1800(Lcom/rockrobo/more/RobotSetupActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$1500(Lcom/rockrobo/more/RobotSetupActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$1800(Lcom/rockrobo/more/RobotSetupActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$1700(Lcom/rockrobo/more/RobotSetupActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    sget-object v0, Lcom/rockrobo/more/RobotSetupActivity;->titleIds:[I

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
    .locals 0

    sget-object p2, Lcom/rockrobo/more/RobotSetupActivity;->titleIds:[I

    aget p2, p2, p1

    iget-object p3, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p3}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object p3

    aget-object p3, p3, p1

    if-nez p3, :cond_3

    const p3, 0x7f0a000a

    if-eq p2, p3, :cond_2

    const p3, 0x7f0a0136

    if-eq p2, p3, :cond_1

    const p3, 0x7f0a01c1

    if-eq p2, p3, :cond_0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->setupGeneralItem(I)Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->setupTimeZoneItem(I)Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->setupMopModeItem(I)Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->setupCarpetModeItem(I)Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;

    move-result-object p3

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p3}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object p3

    aget-object p3, p3, p1

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;

    :goto_0
    if-eqz p3, :cond_4

    iget-object p3, p3, Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    iget-object p2, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p2}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object p2

    aget-object p1, p2, p1

    return-object p1
.end method

.method public setupMopModeItem(I)Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$400(Lcom/rockrobo/more/RobotSetupActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f080027

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    iget-object v1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v1}, Lcom/rockrobo/more/RobotSetupActivity;->access$300(Lcom/rockrobo/more/RobotSetupActivity;)[Landroid/view/View;

    move-result-object v1

    aget-object p1, v1, p1

    const v1, 0x7f0600cb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    invoke-static {v0, p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$1902(Lcom/rockrobo/more/RobotSetupActivity;Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;)Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$1900(Lcom/rockrobo/more/RobotSetupActivity;)Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$2000(Lcom/rockrobo/more/RobotSetupActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$1900(Lcom/rockrobo/more/RobotSetupActivity;)Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$2;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$2;-><init>(Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SwitchButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v2
.end method
