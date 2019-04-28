.class Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$childItem:Lcom/rockrobo/more/cleanhistory/ChildItem;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;Lcom/rockrobo/more/cleanhistory/ChildItem;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$1;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    iput-object p2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$1;->val$childItem:Lcom/rockrobo/more/cleanhistory/ChildItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$1;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->access$002(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;Z)Z

    iget-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$1;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    invoke-static {p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->access$100(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$1;->val$childItem:Lcom/rockrobo/more/cleanhistory/ChildItem;

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;->retrieveOneMap(Lcom/rockrobo/more/cleanhistory/ChildItem;)V

    iget-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$1;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$1;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    iget-object v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$1;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    invoke-virtual {v1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$1$1;

    invoke-direct {v2, p0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$1$1;-><init>(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$1;)V

    invoke-static {v0, v1, v2}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showCancellableProgressDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->access$202(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    iget-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$1;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    invoke-static {p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->access$300(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->dismiss()V

    return-void
.end method
