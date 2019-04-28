.class Lcom/rockrobo/more/RobotSetupActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/RobotSetupActivity;->makeItemListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/RobotSetupActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/RobotSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$2;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

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

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$2;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$100(Lcom/rockrobo/more/RobotSetupActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$2;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/rockrobo/more/RobotSetupActivity;->access$102(Lcom/rockrobo/more/RobotSetupActivity;Z)Z

    sget-object p1, Lcom/rockrobo/more/RobotSetupActivity;->titleIds:[I

    aget p1, p1, p3

    const p2, 0x7f0a0142

    const/4 p3, 0x0

    if-eq p1, p2, :cond_3

    const p2, 0x7f0a01c1

    if-eq p1, p2, :cond_2

    const p2, 0x7f0a01c5

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$2;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/rockrobo/more/RobotSetupActivity;->access$102(Lcom/rockrobo/more/RobotSetupActivity;Z)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$2;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    const-class p2, Lcom/rockrobo/more/VolumeAdjustActivity;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$2;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    const-class p2, Lcom/rockrobo/more/TimeZoneSyncActivity;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$2;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    const-class p2, Lcom/rockrobo/more/NoDisturbActivity;

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/rockrobo/more/RobotSetupActivity;->startActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
