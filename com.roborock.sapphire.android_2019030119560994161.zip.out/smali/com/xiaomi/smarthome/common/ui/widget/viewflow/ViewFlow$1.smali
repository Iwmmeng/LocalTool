.class Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-static {v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$000(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-static {v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$100(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->setSelection(I)V

    return-void
.end method
