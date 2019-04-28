.class Lcom/rockrobo/more/TimerListActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnRefreshListener;


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

    iput-object p1, p0, Lcom/rockrobo/more/TimerListActivity$2;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity$2;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {v0}, Lcom/rockrobo/more/TimerListActivity;->access$000(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/more/timer/TimerCommonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockrobo/more/timer/TimerCommonManager;->getScene()V

    return-void
.end method
