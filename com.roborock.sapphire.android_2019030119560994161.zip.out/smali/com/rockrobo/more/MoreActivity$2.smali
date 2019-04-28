.class Lcom/rockrobo/more/MoreActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/MoreActivity;->makeItemListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/MoreActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/MoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/MoreActivity$2;->this$0:Lcom/rockrobo/more/MoreActivity;

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

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$2;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p1}, Lcom/rockrobo/more/MoreActivity;->access$400(Lcom/rockrobo/more/MoreActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$2;->this$0:Lcom/rockrobo/more/MoreActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/rockrobo/more/MoreActivity;->access$402(Lcom/rockrobo/more/MoreActivity;Z)Z

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$2;->this$0:Lcom/rockrobo/more/MoreActivity;

    iget-object p2, p0, Lcom/rockrobo/more/MoreActivity$2;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p2}, Lcom/rockrobo/more/MoreActivity;->access$500(Lcom/rockrobo/more/MoreActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/rockrobo/more/MoreActivity;->access$600(Lcom/rockrobo/more/MoreActivity;Lcom/rockrobo/xmplugin/Device;)[I

    move-result-object p1

    aget p1, p1, p3

    const/4 p2, 0x0

    sparse-switch p1, :sswitch_data_0

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$2;->this$0:Lcom/rockrobo/more/MoreActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/rockrobo/more/MoreActivity;->access$402(Lcom/rockrobo/more/MoreActivity;Z)Z

    return-void

    :sswitch_0
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$2;->this$0:Lcom/rockrobo/more/MoreActivity;

    const-class p3, Lcom/rockrobo/more/VoicePackageActivity;

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$2;->this$0:Lcom/rockrobo/more/MoreActivity;

    const-class p3, Lcom/rockrobo/more/TimerListActivity;

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$2;->this$0:Lcom/rockrobo/more/MoreActivity;

    const-class p3, Lcom/rockrobo/more/RobotSetupActivity;

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$2;->this$0:Lcom/rockrobo/more/MoreActivity;

    const-class p3, Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0xa

    invoke-virtual {p1, p2, p3, p4}, Lcom/rockrobo/more/MoreActivity;->startActivityForResult(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void

    :sswitch_4
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$2;->this$0:Lcom/rockrobo/more/MoreActivity;

    const-class p3, Lcom/rockrobo/more/ProductGuideActivity;

    goto :goto_0

    :sswitch_5
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$2;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p1}, Lcom/rockrobo/more/MoreActivity;->access$700(Lcom/rockrobo/more/MoreActivity;)V

    return-void

    :sswitch_6
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$2;->this$0:Lcom/rockrobo/more/MoreActivity;

    const-class p3, Lcom/rockrobo/more/ConsumableActivity;

    goto :goto_0

    :sswitch_7
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$2;->this$0:Lcom/rockrobo/more/MoreActivity;

    const-class p3, Lcom/rockrobo/more/CleanHistoryActivity;

    :goto_0
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/rockrobo/more/MoreActivity;->startActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0019 -> :sswitch_7
        0x7f0a0040 -> :sswitch_6
        0x7f0a00db -> :sswitch_5
        0x7f0a018d -> :sswitch_4
        0x7f0a01b5 -> :sswitch_3
        0x7f0a01be -> :sswitch_2
        0x7f0a0201 -> :sswitch_1
        0x7f0a0227 -> :sswitch_0
    .end sparse-switch
.end method
