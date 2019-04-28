.class Lcom/rockrobo/more/timer/TimerCommonManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/device/api/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/timer/TimerCommonManager;->getScene()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/smarthome/device/api/Parser<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/timer/TimerCommonManager;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/timer/TimerCommonManager;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$2;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/TimerCommonManager$2;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScene result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$2;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-virtual {p1, v1}, Lcom/rockrobo/more/timer/TimerCommonManager;->parseTimers(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$2;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    iget-object v1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$2;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-virtual {v1}, Lcom/rockrobo/more/timer/TimerCommonManager;->timersToJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/rockrobo/more/timer/TimerCommonManager;->writeSharedPrefs(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$2;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/timer/TimerCommonManager;->writeSharedPrefs(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$2;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-static {p1}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$200(Lcom/rockrobo/more/timer/TimerCommonManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;

    invoke-interface {v1}, Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;->onGetSceneSuccess()V

    goto :goto_1

    :cond_1
    return-object v0
.end method
