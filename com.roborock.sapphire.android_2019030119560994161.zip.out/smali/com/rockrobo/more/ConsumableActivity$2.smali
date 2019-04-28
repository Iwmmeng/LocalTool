.class Lcom/rockrobo/more/ConsumableActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/ConsumableActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/ConsumableActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/ConsumableActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/ConsumableActivity$2;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x1

    sub-int/2addr p3, p1

    const/4 p2, 0x0

    if-gez p3, :cond_0

    const/4 p3, 0x0

    :cond_0
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    const-string p5, "consumableType"

    invoke-virtual {p4, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p5, p0, Lcom/rockrobo/more/ConsumableActivity$2;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-static {p5}, Lcom/rockrobo/more/ConsumableActivity;->access$300(Lcom/rockrobo/more/ConsumableActivity;)Z

    move-result p5

    if-eqz p5, :cond_1

    return-void

    :cond_1
    iget-object p5, p0, Lcom/rockrobo/more/ConsumableActivity$2;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-static {p5, p1}, Lcom/rockrobo/more/ConsumableActivity;->access$302(Lcom/rockrobo/more/ConsumableActivity;Z)Z

    iget-object p1, p0, Lcom/rockrobo/more/ConsumableActivity$2;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-static {p1}, Lcom/rockrobo/more/ConsumableActivity;->access$000(Lcom/rockrobo/more/ConsumableActivity;)[I

    move-result-object p1

    aget p1, p1, p3

    sparse-switch p1, :sswitch_data_0

    iget-object p1, p0, Lcom/rockrobo/more/ConsumableActivity$2;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    invoke-static {p1, p2}, Lcom/rockrobo/more/ConsumableActivity;->access$302(Lcom/rockrobo/more/ConsumableActivity;Z)Z

    return-void

    :sswitch_0
    iget-object p1, p0, Lcom/rockrobo/more/ConsumableActivity$2;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    const-class p2, Lcom/rockrobo/more/consumable/SideBrushActivity;

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/rockrobo/more/ConsumableActivity$2;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    const-class p2, Lcom/rockrobo/more/consumable/SensorsMaintainActivity;

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/rockrobo/more/ConsumableActivity$2;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    const-class p2, Lcom/rockrobo/more/consumable/MainBrushActivity;

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/rockrobo/more/ConsumableActivity$2;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    const-class p2, Lcom/rockrobo/more/consumable/FilterElementActivity;

    goto :goto_0

    :sswitch_4
    iget-object p1, p0, Lcom/rockrobo/more/ConsumableActivity$2;->this$0:Lcom/rockrobo/more/ConsumableActivity;

    const-class p2, Lcom/rockrobo/more/consumable/FilterActivity;

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lcom/rockrobo/more/ConsumableActivity;->startActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00c8 -> :sswitch_4
        0x7f0a00cb -> :sswitch_3
        0x7f0a0109 -> :sswitch_2
        0x7f0a01cb -> :sswitch_1
        0x7f0a01eb -> :sswitch_0
    .end sparse-switch
.end method
