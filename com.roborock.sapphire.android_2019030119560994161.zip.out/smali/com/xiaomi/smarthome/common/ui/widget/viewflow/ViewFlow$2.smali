.class Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$2;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$2;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    iget-object p1, p1, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$2;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$200(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$2;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$302(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;I)I

    :cond_0
    return-void
.end method
