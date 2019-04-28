.class public Lcom/rockrobo/more/consumable/FilterActivity;
.super Lcom/rockrobo/more/consumable/ConsumableBaseActivity;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/consumable/FilterActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/consumable/FilterActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/more/consumable/FilterActivity;)Lcom/rockrobo/presenter/RobotPresenterI;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/consumable/FilterActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    return-object p0
.end method

.method static synthetic access$100(Lcom/rockrobo/more/consumable/FilterActivity;)Lcom/rockrobo/xmplugin/Device;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/consumable/FilterActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    return-object p0
.end method


# virtual methods
.method public getActivityTitle()I
    .locals 1

    const v0, 0x7f0a00c8

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f080006

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/rockrobo/more/consumable/FilterActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onCreate entered"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f06002c

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/consumable/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/consumable/FilterActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/consumable/FilterActivity$1;-><init>(Lcom/rockrobo/more/consumable/FilterActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f060029

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/consumable/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/consumable/FilterActivity$2;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/consumable/FilterActivity$2;-><init>(Lcom/rockrobo/more/consumable/FilterActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/rockrobo/utils/RRUtils;->isCNServer()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
