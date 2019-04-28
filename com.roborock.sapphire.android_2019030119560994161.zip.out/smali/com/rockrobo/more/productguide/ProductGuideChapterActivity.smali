.class public Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;
.super Lcom/rockrobo/more/MoreBaseActivity;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_SCROLL_TO_TOP:I = 0x1


# instance fields
.field private contentView:Landroid/widget/ScrollView;

.field private pageLoaded:Z

.field private scrollY:I

.field private titleId:I

.field private videoFrame:Landroid/view/View;

.field private videoPicture:Landroid/widget/ImageView;

.field private videoPlayView:Landroid/view/View;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/rockrobo/more/MoreBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->scrollY:I

    return-void
.end method

.method static synthetic access$002(Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;I)I
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->scrollY:I

    return p1
.end method

.method static synthetic access$100(Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->contentView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->getVideoURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$302(Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->pageLoaded:Z

    return p1
.end method

.method private buildPageUrl()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->titleId:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {v0}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideTroubleShootingUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {v0}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideVirtualWallUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {v0}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideQuickStartUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2
    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {v0}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideInstructionUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_3
    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {v0}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideMaintenanceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_4
    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {v0}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideMoppingModuleUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_5
    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {v0}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideFunctionUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_6
    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {v0}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideDustBinFilterUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0070 -> :sswitch_6
        0x7f0a00d9 -> :sswitch_5
        0x7f0a00ec -> :sswitch_4
        0x7f0a0115 -> :sswitch_3
        0x7f0a01a0 -> :sswitch_2
        0x7f0a01a7 -> :sswitch_1
        0x7f0a0225 -> :sswitch_0
    .end sparse-switch
.end method

.method private getVideoPictureId(I)I
    .locals 1

    const v0, 0x7f0a0070

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a00d9

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a01a7

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0225

    if-eq p1, v0, :cond_0

    const p1, 0x7f05013d

    return p1

    :cond_0
    const p1, 0x7f0500c1

    return p1

    :cond_1
    const p1, 0x7f050177

    return p1

    :cond_2
    const p1, 0x7f050078

    return p1

    :cond_3
    const p1, 0x7f050024

    return p1
.end method

.method private getVideoURI()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->titleId:I

    const v1, 0x7f0a0070

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a00d9

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a01a7

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0225

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {v0}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideVideoMaintainUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {v0}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideVideoVirtualWallUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {v0}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideVideoQuickStartUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {v0}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideVideoFunctionUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-interface {v0}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideVideoDustbinUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityTitle()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->titleId:I

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f08000d

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p0}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Scroll to top!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->contentView:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    iget v1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->scrollY:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "detail_page_pos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->titleId:I

    sget-object v0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detail for product guide item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->titleId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f060103

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->videoFrame:Landroid/view/View;

    iget p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->titleId:I

    const/4 v0, 0x0

    const v1, 0x7f0a01a0

    if-eq p1, v1, :cond_1

    iget p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->titleId:I

    const v1, 0x7f0a0212

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->videoFrame:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f060104

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->videoPicture:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->videoPicture:Landroid/widget/ImageView;

    iget v1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->titleId:I

    invoke-direct {p0, v1}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->getVideoPictureId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f060105

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->videoPlayView:Landroid/view/View;

    iget-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->videoPlayView:Landroid/view/View;

    new-instance v1, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$1;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$1;-><init>(Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->videoFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const p1, 0x7f060030

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->contentView:Landroid/widget/ScrollView;

    invoke-direct {p0}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->buildPageUrl()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f060111

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_2
    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;-><init>(Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->webView:Landroid/webkit/WebView;

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iput-object v1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->videoPlayView:Landroid/view/View;

    iput-object v1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->contentView:Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->videoFrame:Landroid/view/View;

    iput-object v1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->videoPicture:Landroid/widget/ImageView;

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onResume()V

    iget-boolean v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->pageLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
