.class Lcom/rockrobo/more/timer/TimerCommonManager$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/timer/TimerCommonManager;->updateScene(Lcom/rockrobo/more/timer/CommonTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;Lcom/rockrobo/more/timer/PlugTimer;)V
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

.field final synthetic val$listener:Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;

.field final synthetic val$newTimer:Lcom/rockrobo/more/timer/PlugTimer;

.field final synthetic val$timer:Lcom/rockrobo/more/timer/CommonTimer;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/timer/TimerCommonManager;Lcom/rockrobo/more/timer/CommonTimer;Lcom/rockrobo/more/timer/PlugTimer;Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    iput-object p2, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$timer:Lcom/rockrobo/more/timer/CommonTimer;

    iput-object p3, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$newTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iput-object p4, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$listener:Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3

    const-string v0, "roborock.vacuum.e2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTimer failed, errro: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "errorInfo: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$102(Lcom/rockrobo/more/timer/TimerCommonManager;Z)Z

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-static {p1}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$500(Lcom/rockrobo/more/timer/TimerCommonManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-static {p1}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$500(Lcom/rockrobo/more/timer/TimerCommonManager;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-static {p2}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$400(Lcom/rockrobo/more/timer/TimerCommonManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-static {p1}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$200(Lcom/rockrobo/more/timer/TimerCommonManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;

    invoke-interface {p2}, Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;->onSetSceneFailed()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$listener:Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$listener:Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;

    invoke-interface {p1}, Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;->onSetSceneFailed()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/timer/TimerCommonManager$5;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    const-string p1, "roborock.vacuum.e2"

    const-string v0, "updateTimer success"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$102(Lcom/rockrobo/more/timer/TimerCommonManager;Z)Z

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$timer:Lcom/rockrobo/more/timer/CommonTimer;

    const/4 v1, 0x1

    iput v1, p1, Lcom/rockrobo/more/timer/CommonTimer;->usId:I

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$timer:Lcom/rockrobo/more/timer/CommonTimer;

    iput v0, p1, Lcom/rockrobo/more/timer/CommonTimer;->status:I

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-static {p1}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$400(Lcom/rockrobo/more/timer/TimerCommonManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-static {p1}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$400(Lcom/rockrobo/more/timer/TimerCommonManager;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-static {v0}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$500(Lcom/rockrobo/more/timer/TimerCommonManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$newTimer:Lcom/rockrobo/more/timer/PlugTimer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$newTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$timer:Lcom/rockrobo/more/timer/CommonTimer;

    iget v0, v0, Lcom/rockrobo/more/timer/CommonTimer;->usId:I

    iput v0, p1, Lcom/rockrobo/more/timer/PlugTimer;->usId:I

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$newTimer:Lcom/rockrobo/more/timer/PlugTimer;

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$timer:Lcom/rockrobo/more/timer/CommonTimer;

    iget v0, v0, Lcom/rockrobo/more/timer/CommonTimer;->status:I

    iput v0, p1, Lcom/rockrobo/more/timer/PlugTimer;->status:I

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-static {p1}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$200(Lcom/rockrobo/more/timer/TimerCommonManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;

    iget-object v1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$timer:Lcom/rockrobo/more/timer/CommonTimer;

    invoke-interface {v0, v1}, Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;->onSetSceneSuccess(Lcom/rockrobo/more/timer/CommonTimer;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-static {p1}, Lcom/rockrobo/more/timer/TimerCommonManager;->access$400(Lcom/rockrobo/more/timer/TimerCommonManager;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/timer/TimerCommonManager$CompTimer;

    iget-object v1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rockrobo/more/timer/TimerCommonManager$CompTimer;-><init>(Lcom/rockrobo/more/timer/TimerCommonManager;Lcom/rockrobo/more/timer/TimerCommonManager$1;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->this$0:Lcom/rockrobo/more/timer/TimerCommonManager;

    invoke-virtual {v0}, Lcom/rockrobo/more/timer/TimerCommonManager;->timersToJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/timer/TimerCommonManager;->writeSharedPrefs(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$listener:Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$listener:Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;

    iget-object v0, p0, Lcom/rockrobo/more/timer/TimerCommonManager$5;->val$timer:Lcom/rockrobo/more/timer/CommonTimer;

    invoke-interface {p1, v0}, Lcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;->onSetSceneSuccess(Lcom/rockrobo/more/timer/CommonTimer;)V

    :cond_2
    return-void
.end method
