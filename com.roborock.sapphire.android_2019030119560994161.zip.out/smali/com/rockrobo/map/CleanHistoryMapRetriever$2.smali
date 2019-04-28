.class Lcom/rockrobo/map/CleanHistoryMapRetriever$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/device/api/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/map/CleanHistoryMapRetriever;->retrieve(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/smarthome/device/api/Parser<",
        "Lcom/rockrobo/map/MapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/map/CleanHistoryMapRetriever;


# direct methods
.method constructor <init>(Lcom/rockrobo/map/CleanHistoryMapRetriever;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/map/CleanHistoryMapRetriever$2;->this$0:Lcom/rockrobo/map/CleanHistoryMapRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/rockrobo/map/MapInfo;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/rockrobo/map/CleanHistoryMapRetriever;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/map/CleanHistoryMapRetriever$2;->this$0:Lcom/rockrobo/map/CleanHistoryMapRetriever;

    invoke-virtual {v0, p1}, Lcom/rockrobo/map/CleanHistoryMapRetriever;->doRetrieve(Ljava/lang/String;)Lcom/rockrobo/map/MapInfo;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/rockrobo/map/MapIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/rockrobo/map/CleanHistoryMapRetriever;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapMsg Parser failed, exception msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rockrobo/map/CleanHistoryMapRetriever$2;->parse(Ljava/lang/String;)Lcom/rockrobo/map/MapInfo;

    move-result-object p1

    return-object p1
.end method
