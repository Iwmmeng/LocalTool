.class Lcom/rockrobo/more/ProductGuideActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/ProductGuideActivity;->createListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/ProductGuideActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/ProductGuideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p1}, Lcom/rockrobo/more/ProductGuideActivity;->access$500(Lcom/rockrobo/more/ProductGuideActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p1}, Lcom/rockrobo/more/ProductGuideActivity;->access$600(Lcom/rockrobo/more/ProductGuideActivity;)[I

    move-result-object p1

    aget p1, p1, p3

    const/4 p2, 0x0

    const/4 p4, 0x1

    sparse-switch p1, :sswitch_data_0

    return-void

    :sswitch_0
    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    iget-object p1, p1, Lcom/rockrobo/more/ProductGuideActivity;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :sswitch_1
    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p1, p4}, Lcom/rockrobo/more/ProductGuideActivity;->access$502(Lcom/rockrobo/more/ProductGuideActivity;Z)Z

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    const-class p3, Lcom/rockrobo/more/productguide/ObaInfoActivity;

    goto/16 :goto_0

    :sswitch_2
    const p1, 0x7f0a0129

    :try_start_0
    iget-object p2, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p2}, Lcom/rockrobo/more/ProductGuideActivity;->access$700(Lcom/rockrobo/more/ProductGuideActivity;)Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "openHelpActivity"

    const/4 p5, 0x0

    new-array v0, p5, [Ljava/lang/Class;

    invoke-virtual {p2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iget-object p3, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {v0}, Lcom/rockrobo/more/ProductGuideActivity;->access$100(Lcom/rockrobo/more/ProductGuideActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-static {p3, v0}, Lcom/rockrobo/more/ProductGuideActivity;->access$002(Lcom/rockrobo/more/ProductGuideActivity;I)I

    iget-object p3, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p3, p4}, Lcom/rockrobo/more/ProductGuideActivity;->access$502(Lcom/rockrobo/more/ProductGuideActivity;Z)Z

    iget-object p3, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p3}, Lcom/rockrobo/more/ProductGuideActivity;->access$800(Lcom/rockrobo/more/ProductGuideActivity;)Lcom/xiaomi/smarthome/device/api/IXmPluginHostActivity;

    move-result-object p3

    new-array p5, p5, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p2, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-virtual {p2}, Lcom/rockrobo/more/ProductGuideActivity;->activity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :sswitch_3
    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    iget-object p2, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p2}, Lcom/rockrobo/more/ProductGuideActivity;->access$100(Lcom/rockrobo/more/ProductGuideActivity;)Landroid/widget/ScrollView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p2

    invoke-static {p1, p2}, Lcom/rockrobo/more/ProductGuideActivity;->access$002(Lcom/rockrobo/more/ProductGuideActivity;I)I

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p1, p4}, Lcom/rockrobo/more/ProductGuideActivity;->access$502(Lcom/rockrobo/more/ProductGuideActivity;Z)Z

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "detail_page_pos"

    iget-object p4, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p4}, Lcom/rockrobo/more/ProductGuideActivity;->access$600(Lcom/rockrobo/more/ProductGuideActivity;)[I

    move-result-object p4

    aget p3, p4, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    const-class p3, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/rockrobo/more/ProductGuideActivity;->startActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :sswitch_4
    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p1, p4}, Lcom/rockrobo/more/ProductGuideActivity;->access$502(Lcom/rockrobo/more/ProductGuideActivity;Z)Z

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    iget-object p3, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p3}, Lcom/rockrobo/more/ProductGuideActivity;->access$100(Lcom/rockrobo/more/ProductGuideActivity;)Landroid/widget/ScrollView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p3

    invoke-static {p1, p3}, Lcom/rockrobo/more/ProductGuideActivity;->access$002(Lcom/rockrobo/more/ProductGuideActivity;I)I

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$3;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    const-class p3, Lcom/rockrobo/more/productguide/CustomerServiceActivity;

    :goto_0
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/rockrobo/more/ProductGuideActivity;->startActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0063 -> :sswitch_4
        0x7f0a0070 -> :sswitch_3
        0x7f0a00c7 -> :sswitch_2
        0x7f0a00d9 -> :sswitch_3
        0x7f0a0115 -> :sswitch_3
        0x7f0a014c -> :sswitch_1
        0x7f0a01a0 -> :sswitch_3
        0x7f0a01a7 -> :sswitch_3
        0x7f0a01d0 -> :sswitch_0
        0x7f0a0212 -> :sswitch_3
        0x7f0a0225 -> :sswitch_3
    .end sparse-switch
.end method
