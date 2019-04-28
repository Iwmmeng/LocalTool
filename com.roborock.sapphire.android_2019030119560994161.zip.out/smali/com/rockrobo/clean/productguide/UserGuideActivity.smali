.class public Lcom/rockrobo/clean/productguide/UserGuideActivity;
.super Lcom/rockrobo/xmplugin/RRBaseActivity;


# static fields
.field public static final FRAGMENT_0:I = 0x0

.field public static final FRAGMENT_1:I = 0x1

.field public static final FRAGMENT_2:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/xmplugin/RRBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/rockrobo/xmplugin/RRBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f080016

    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/productguide/UserGuideActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/rockrobo/clean/productguide/UserGuideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/rockrobo/clean/productguide/UserGuideFragment;

    invoke-direct {v1}, Lcom/rockrobo/clean/productguide/UserGuideFragment;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/rockrobo/clean/productguide/UserGuideFragment;->setIndex(I)V

    iget-object v2, p0, Lcom/rockrobo/clean/productguide/UserGuideActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-virtual {v1, v2}, Lcom/rockrobo/clean/productguide/UserGuideFragment;->setUrlPresenter(Lcom/rockrobo/presenter/URLPresenterI;)V

    new-instance v2, Lcom/rockrobo/clean/productguide/UserGuideFragment;

    invoke-direct {v2}, Lcom/rockrobo/clean/productguide/UserGuideFragment;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/rockrobo/clean/productguide/UserGuideFragment;->setIndex(I)V

    iget-object v3, p0, Lcom/rockrobo/clean/productguide/UserGuideActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-virtual {v2, v3}, Lcom/rockrobo/clean/productguide/UserGuideFragment;->setUrlPresenter(Lcom/rockrobo/presenter/URLPresenterI;)V

    new-instance v3, Lcom/rockrobo/clean/productguide/UserGuideFragment;

    invoke-direct {v3}, Lcom/rockrobo/clean/productguide/UserGuideFragment;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/rockrobo/clean/productguide/UserGuideFragment;->setIndex(I)V

    iget-object v4, p0, Lcom/rockrobo/clean/productguide/UserGuideActivity;->urlPresenter:Lcom/rockrobo/presenter/URLPresenterI;

    invoke-virtual {v3, v4}, Lcom/rockrobo/clean/productguide/UserGuideFragment;->setUrlPresenter(Lcom/rockrobo/presenter/URLPresenterI;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/rockrobo/clean/productguide/UserGuideAdapter;

    invoke-direct {v1, p1, v0}, Lcom/rockrobo/clean/productguide/UserGuideAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    const p1, 0x7f0600fe

    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/productguide/UserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/rockrobo/xmplugin/RRBaseActivity;->onDestroy()V

    return-void
.end method
