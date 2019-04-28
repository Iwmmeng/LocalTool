.class Lcom/rockrobo/xmplugin/MiJiaApiPresenter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->loadCountryIn(Ljava/lang/Integer;Ljava/lang/Integer;)V
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
.field final synthetic this$0:Lcom/rockrobo/xmplugin/MiJiaApiPresenter;

.field final synthetic val$failMsg:Ljava/lang/Integer;

.field final synthetic val$successMsg:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/rockrobo/xmplugin/MiJiaApiPresenter;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter$1;->this$0:Lcom/rockrobo/xmplugin/MiJiaApiPresenter;

    iput-object p2, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter$1;->val$successMsg:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter$1;->val$failMsg:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter$1;->this$0:Lcom/rockrobo/xmplugin/MiJiaApiPresenter;

    invoke-static {p1}, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->access$000(Lcom/rockrobo/xmplugin/MiJiaApiPresenter;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter$1;->val$failMsg:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rockrobo/xmplugin/MiJiaApiPresenter$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter$1;->val$successMsg:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter$1;->this$0:Lcom/rockrobo/xmplugin/MiJiaApiPresenter;

    invoke-static {p1}, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->access$000(Lcom/rockrobo/xmplugin/MiJiaApiPresenter;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter$1;->this$0:Lcom/rockrobo/xmplugin/MiJiaApiPresenter;

    invoke-static {p1}, Lcom/rockrobo/xmplugin/MiJiaApiPresenter;->access$000(Lcom/rockrobo/xmplugin/MiJiaApiPresenter;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/xmplugin/MiJiaApiPresenter$1;->val$failMsg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
