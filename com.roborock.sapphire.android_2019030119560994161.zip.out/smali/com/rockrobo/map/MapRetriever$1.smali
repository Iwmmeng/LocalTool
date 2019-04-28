.class Lcom/rockrobo/map/MapRetriever$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/map/MapRetriever;->retrieve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/smarthome/device/api/Callback<",
        "Lcom/rockrobo/map/MapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/map/MapRetriever;


# direct methods
.method constructor <init>(Lcom/rockrobo/map/MapRetriever;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/map/MapRetriever$1;->this$0:Lcom/rockrobo/map/MapRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/rockrobo/map/MapRetriever;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Thread id:%d, Get map file URL failed, code:%d, msg:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/map/MapRetriever$1;->this$0:Lcom/rockrobo/map/MapRetriever;

    invoke-static {p1}, Lcom/rockrobo/map/MapRetriever;->access$200(Lcom/rockrobo/map/MapRetriever;)V

    return-void
.end method

.method public onSuccess(Lcom/rockrobo/map/MapInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapRetriever$1;->this$0:Lcom/rockrobo/map/MapRetriever;

    invoke-static {v0, p1}, Lcom/rockrobo/map/MapRetriever;->access$000(Lcom/rockrobo/map/MapRetriever;Lcom/rockrobo/map/MapInfo;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/rockrobo/map/MapInfo;

    invoke-virtual {p0, p1}, Lcom/rockrobo/map/MapRetriever$1;->onSuccess(Lcom/rockrobo/map/MapInfo;)V

    return-void
.end method
