.class Lcom/rockrobo/more/ConsumableActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/ConsumableActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/ConsumableActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/ConsumableActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/ConsumableActivity$3;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startRefresh()V
    .locals 2

    invoke-static {}, Lcom/rockrobo/more/ConsumableActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TO refresh data!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/ConsumableActivity$3;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/ConsumableActivity;->loadFromRobot()V

    return-void
.end method
