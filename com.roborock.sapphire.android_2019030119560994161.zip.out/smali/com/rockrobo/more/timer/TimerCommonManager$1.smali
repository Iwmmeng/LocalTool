.class Lcom/rockrobo/more/timer/TimerCommonManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/device/api/Callback;


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
        "Lcom/xiaomi/smarthome/device/api/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/timer/TimerCommonManager;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/timer/TimerCommonManager;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$1;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/rockrobo/more/timer/TimerCommonManager$1;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$102(Lcom/rockrobo/more/timer/TimerCommonManager;Z)Z

    invoke-static {}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScene error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/rockrobo/more/timer/TimerCommonManager$1;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-static {p2}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$200(Lcom/rockrobo/more/timer/TimerCommonManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;

    invoke-interface {v0, p1}, Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;->onGetSceneFailed(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/TimerCommonManager$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadTimers success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager$1;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$102(Lcom/rockrobo/more/timer/TimerCommonManager;Z)Z

    invoke-static {}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScene: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
