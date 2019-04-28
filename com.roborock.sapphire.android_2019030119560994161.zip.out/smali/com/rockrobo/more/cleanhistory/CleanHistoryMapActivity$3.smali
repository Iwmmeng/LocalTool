.class Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->doShowCustomMapRetryDialog(Lcom/rockrobo/more/cleanhistory/ChildItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$3;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterDismissCallBack()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$3;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    invoke-static {v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->access$000(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$3;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->finish()V

    :cond_0
    return-void
.end method

.method public beforeDismissCallBack()V
    .locals 0

    return-void
.end method
