.class Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-static {v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$600(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-static {v3}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$700(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-static {v3}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$700(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-static {v0, v2}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$102(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;I)I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$100(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-static {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$102(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;I)I

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$100(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-static {v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$700(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-static {v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$700(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$102(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;I)I

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;->access$800(Lcom/xiaomi/smarthome/common/ui/widget/viewflow/ViewFlow;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method
