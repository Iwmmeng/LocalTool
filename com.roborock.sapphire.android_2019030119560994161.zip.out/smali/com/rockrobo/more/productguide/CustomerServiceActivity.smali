.class public Lcom/rockrobo/more/productguide/CustomerServiceActivity;
.super Lcom/rockrobo/more/MoreBaseActivity;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private clipboardManager:Landroid/content/ClipboardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/productguide/CustomerServiceActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/MoreBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rockrobo/more/productguide/CustomerServiceActivity;)Landroid/content/ClipboardManager;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->clipboardManager:Landroid/content/ClipboardManager;

    return-object p0
.end method

.method private buildUrlComponent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    invoke-static {v0, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p3

    new-instance v2, Landroid/text/style/URLSpan;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x11

    invoke-virtual {v0, v2, p3, v1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private buildWeChat()V
    .locals 5

    invoke-virtual {p0}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->clipboardManager:Landroid/content/ClipboardManager;

    const v0, 0x7f0a01c6

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v3, Lcom/rockrobo/more/productguide/CustomerServiceActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/rockrobo/more/productguide/CustomerServiceActivity$1;-><init>(Lcom/rockrobo/more/productguide/CustomerServiceActivity;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v2, v1, v0, v3, v4}, Lcom/rockrobo/utils/RRUtils;->buildClickableSpan(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Landroid/text/style/ClickableSpan;Ljava/lang/Integer;)Landroid/text/SpannableString;

    move-result-object v0

    const v1, 0x7f060039

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private viewOverSeasServer()V
    .locals 2

    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getActivityTitle()I
    .locals 1

    const v0, 0x7f0a0063

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f080004

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->buildWeChat()V

    const-string p1, "tel:"

    const v0, 0x7f0a0069

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a006a

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060037

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->buildUrlComponent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mailto:"

    const v0, 0x7f0a0066

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->getRegionCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->selectEmailByHost(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060036

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->buildUrlComponent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->isCNServer()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->viewOverSeasServer()V

    :cond_0
    return-void
.end method
