.class public abstract Lcom/rockrobo/more/MoreBaseTimerTaskActivity;
.super Lcom/rockrobo/common/TaskTimerActivity;


# instance fields
.field private mContentView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/rockrobo/common/TaskTimerActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->mContentView:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public abstract getActivityTitle()I
.end method

.method public abstract getContentView()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/rockrobo/common/TaskTimerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->getContentView()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->mContentView:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->mHostActivity:Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    const v0, 0x7f0600de

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;->setTitleBarPadding(Landroid/view/View;)V

    const p1, 0x7f0600e1

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/MoreBaseTimerTaskActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity$1;-><init>(Lcom/rockrobo/more/MoreBaseTimerTaskActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0600df

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0600e2

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0600e3

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->getActivityTitle()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/rockrobo/common/TaskTimerActivity;->onDestroy()V

    iget-object v0, p0, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/rockrobo/utils/SysUtils;->nullViewDrawablesRecursive(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/more/MoreBaseTimerTaskActivity;->mContentView:Landroid/view/ViewGroup;

    return-void
.end method
