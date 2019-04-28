.class Lcom/rockrobo/more/CleanHistoryActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/CleanHistoryActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rockrobo/more/CleanHistoryActivity$2;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/CleanHistoryActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity$2$1;->this$1:Lcom/rockrobo/more/CleanHistoryActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity$2$1;->this$1:Lcom/rockrobo/more/CleanHistoryActivity$2;

    iget-object p1, p1, Lcom/rockrobo/more/CleanHistoryActivity$2;->this$0:Lcom/rockrobo/more/CleanHistoryActivity;

    iget-object p2, p0, Lcom/rockrobo/more/CleanHistoryActivity$2$1;->this$1:Lcom/rockrobo/more/CleanHistoryActivity$2;

    iget-object p2, p2, Lcom/rockrobo/more/CleanHistoryActivity$2;->this$0:Lcom/rockrobo/more/CleanHistoryActivity;

    invoke-virtual {p2}, Lcom/rockrobo/more/CleanHistoryActivity;->activity()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/rockrobo/more/CleanHistoryActivity$2$1;->this$1:Lcom/rockrobo/more/CleanHistoryActivity$2;

    iget-object v0, v0, Lcom/rockrobo/more/CleanHistoryActivity$2;->this$0:Lcom/rockrobo/more/CleanHistoryActivity;

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/CleanHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showNotCancellableProgressDialog(Landroid/app/Activity;Ljava/lang/String;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/rockrobo/more/CleanHistoryActivity;->access$202(Lcom/rockrobo/more/CleanHistoryActivity;Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity$2$1;->this$1:Lcom/rockrobo/more/CleanHistoryActivity$2;

    iget-object p1, p1, Lcom/rockrobo/more/CleanHistoryActivity$2;->this$0:Lcom/rockrobo/more/CleanHistoryActivity;

    invoke-static {p1}, Lcom/rockrobo/more/CleanHistoryActivity;->access$300(Lcom/rockrobo/more/CleanHistoryActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/rockrobo/presenter/RobotPresenterI;->clearCleanRecords(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :try_start_0
    iget-object p1, p0, Lcom/rockrobo/more/CleanHistoryActivity$2$1;->this$1:Lcom/rockrobo/more/CleanHistoryActivity$2;

    iget-object p1, p1, Lcom/rockrobo/more/CleanHistoryActivity$2;->this$0:Lcom/rockrobo/more/CleanHistoryActivity;

    invoke-static {p1}, Lcom/rockrobo/more/CleanHistoryActivity;->access$400(Lcom/rockrobo/more/CleanHistoryActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, -0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/rockrobo/presenter/RobotPresenterI;->clearMapData(Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/rockrobo/presenter/PresenterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/rockrobo/more/CleanHistoryActivity;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearMapDataOnServer exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/rockrobo/presenter/PresenterException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
