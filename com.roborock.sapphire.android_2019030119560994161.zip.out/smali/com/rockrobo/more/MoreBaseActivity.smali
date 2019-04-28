.class public abstract Lcom/rockrobo/more/MoreBaseActivity;
.super Lcom/rockrobo/xmplugin/RRBaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/xmplugin/RRBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActivityTitle()I
.end method

.method public abstract getContentView()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/rockrobo/xmplugin/RRBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/rockrobo/more/MoreBaseActivity;->getContentView()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->setContentView(I)V

    iget-object p1, p0, Lcom/rockrobo/more/MoreBaseActivity;->mHostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    const v0, 0x7f0600de

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/MoreBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;->setTitleBarPadding(Landroid/view/View;)V

    const p1, 0x7f0600e1

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/MoreBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/MoreBaseActivity$1;-><init>(Lcom/rockrobo/more/MoreBaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0600df

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0600e2

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0600e3

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rockrobo/more/MoreBaseActivity;->getActivityTitle()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
