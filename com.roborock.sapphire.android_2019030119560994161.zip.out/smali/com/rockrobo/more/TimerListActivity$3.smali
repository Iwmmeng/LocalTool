.class Lcom/rockrobo/more/TimerListActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/rockrobo/more/TimerListActivity$3;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$3;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {p1}, Lcom/rockrobo/more/TimerListActivity;->access$100(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->isOwnerMethodAdapter()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$3;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {p1}, Lcom/rockrobo/more/TimerListActivity;->access$200(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->isFamilyMethodAdapter()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$3;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {p1}, Lcom/rockrobo/more/TimerListActivity;->access$300(Lcom/rockrobo/more/TimerListActivity;)Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    if-ltz p3, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$3;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {p1}, Lcom/rockrobo/more/TimerListActivity;->access$400(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rockrobo/more/timer/PlugTimer;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/rockrobo/more/TimerListActivity$3;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-virtual {p3}, Lcom/rockrobo/more/TimerListActivity;->activity()Landroid/app/Activity;

    move-result-object p3

    const-class p4, Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "plug.timer"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "bundle"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "action.add.plug.timer"

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "device_did"

    iget-object p3, p0, Lcom/rockrobo/more/TimerListActivity$3;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {p3}, Lcom/rockrobo/more/TimerListActivity;->access$500(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object p3

    invoke-virtual {p3}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$3;->this$0:Lcom/rockrobo/more/TimerListActivity;

    const-class p3, Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/rockrobo/more/TimerListActivity;->startActivity(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
