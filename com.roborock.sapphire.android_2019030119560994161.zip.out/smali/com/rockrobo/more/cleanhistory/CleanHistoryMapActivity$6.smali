.class Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->setupShareButton()V
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

    iput-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$6;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$6;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$6;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    invoke-static {v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->access$400(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->access$500(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$6;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    invoke-static {p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->access$600(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)Lcom/rockrobo/map/MapShareBuilder;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$6;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    new-instance v0, Lcom/rockrobo/map/MapShareBuilder;

    iget-object v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$6;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    invoke-static {v1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->access$700(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)Lcom/rockrobo/map/MapViewI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rockrobo/map/MapShareBuilder;-><init>(Lcom/rockrobo/map/MapViewI;)V

    invoke-static {p1, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->access$602(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;Lcom/rockrobo/map/MapShareBuilder;)Lcom/rockrobo/map/MapShareBuilder;

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$6;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    invoke-static {p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->access$600(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)Lcom/rockrobo/map/MapShareBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rockrobo/map/MapShareBuilder;->createShareFile()Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity$6;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;

    invoke-static {v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;->access$800(Lcom/rockrobo/more/cleanhistory/CleanHistoryMapActivity;)Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;->openShareMediaActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
