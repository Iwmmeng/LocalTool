.class public Lcom/rockrobo/clean/productguide/UserGuideFragment;
.super Lcom/xiaomi/smarthome/device/api/BaseFragment;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private index:I

.field private uri:Landroid/net/Uri;

.field private urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/clean/productguide/UserGuideFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/clean/productguide/UserGuideFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/smarthome/device/api/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/clean/productguide/UserGuideFragment;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/clean/productguide/UserGuideFragment;->uri:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    const v0, 0x7f08001e

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f06000c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v0, 0x7f060010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f06004d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f06004b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0600bc

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a0220

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    new-instance v4, Lcom/rockrobo/clean/productguide/UserGuideFragment$1;

    invoke-direct {v4, p0}, Lcom/rockrobo/clean/productguide/UserGuideFragment$1;-><init>(Lcom/rockrobo/clean/productguide/UserGuideFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v4, p0, Lcom/rockrobo/clean/productguide/UserGuideFragment;->index:I

    const/4 v5, 0x4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/rockrobo/clean/productguide/UserGuideFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0221

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f050172

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v2, p3}, Landroid/widget/Button;->setVisibility(I)V

    const p3, 0x7f05023d

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/rockrobo/clean/productguide/UserGuideFragment;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {p2}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideVideoScheduleUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/rockrobo/clean/productguide/UserGuideFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v4, 0x7f0a021d

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f050171

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    const p3, 0x7f050024

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/rockrobo/clean/productguide/UserGuideFragment;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {p2}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideVideoDustbinUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/rockrobo/clean/productguide/UserGuideFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v4, 0x7f0a021e

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f050170

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    const p3, 0x7f050177

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/rockrobo/clean/productguide/UserGuideFragment;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {p2}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideVideoFunctionUrl()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/rockrobo/clean/productguide/UserGuideFragment;->uri:Landroid/net/Uri;

    :goto_1
    new-instance p2, Lcom/rockrobo/clean/productguide/UserGuideFragment$2;

    invoke-direct {p2, p0}, Lcom/rockrobo/clean/productguide/UserGuideFragment$2;-><init>(Lcom/rockrobo/clean/productguide/UserGuideFragment;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/clean/productguide/UserGuideFragment;->index:I

    return-void
.end method

.method public setUrlPresenter(Lcom/rockrobo/presenter/URLPresenterI;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/productguide/UserGuideFragment;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    return-void
.end method
