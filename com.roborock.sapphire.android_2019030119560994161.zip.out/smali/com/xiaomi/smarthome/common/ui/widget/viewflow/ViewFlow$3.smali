.class Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->computeScroll()V
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

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-static {v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$400(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$500(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;I)V

    return-void
.end method
