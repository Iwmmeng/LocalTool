.class public Lcom/rockrobo/more/consumable/FilterElementActivity;
.super Lcom/rockrobo/more/MoreBaseActivity;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/consumable/FilterElementActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/consumable/FilterElementActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/MoreBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityTitle()I
    .locals 1

    const v0, 0x7f0a00cb

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f080007

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f060029

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/consumable/FilterElementActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/consumable/FilterElementActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/consumable/FilterElementActivity$1;-><init>(Lcom/rockrobo/more/consumable/FilterElementActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
