.class Lcom/rockrobo/more/TimerListActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/TimerListActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/TimerListActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/TimerListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/TimerListActivity$4;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$4;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {p1}, Lcom/rockrobo/more/TimerListActivity;->access$600(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->isOwnerMethodAdapter()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$4;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {p1}, Lcom/rockrobo/more/TimerListActivity;->access$700(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->isFamilyMethodAdapter()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$4;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {p1}, Lcom/rockrobo/more/TimerListActivity;->access$300(Lcom/rockrobo/more/TimerListActivity;)Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    if-ltz p3, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$4;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {p1}, Lcom/rockrobo/more/TimerListActivity;->access$400(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rockrobo/more/timer/PlugTimer;

    iget-object p2, p0, Lcom/rockrobo/more/TimerListActivity$4;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {p2, p1}, Lcom/rockrobo/more/TimerListActivity;->access$800(Lcom/rockrobo/more/TimerListActivity;Lcom/rockrobo/more/timer/PlugTimer;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
