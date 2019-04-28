.class Lcom/rockrobo/more/CleanHistoryActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/CleanHistoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/CleanHistoryActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/CleanHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity$1;->this$0:Lcom/rockrobo/more/CleanHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startRefresh()V
    .locals 3

    invoke-static {}, Lcom/rockrobo/more/CleanHistoryActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Begin to refresh the list!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity$1;->this$0:Lcom/rockrobo/more/CleanHistoryActivity;

    invoke-static {v0}, Lcom/rockrobo/more/CleanHistoryActivity;->access$100(Lcom/rockrobo/more/CleanHistoryActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadCleanSummary(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
