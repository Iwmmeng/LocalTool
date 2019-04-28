.class Lcom/rockrobo/more/RemoteControllerActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/RemoteControllerActivity;->setupCmdButton(II)Lcom/rockrobo/ui/HeartBeatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/RemoteControllerActivity;

.field final synthetic val$command:I


# direct methods
.method constructor <init>(Lcom/rockrobo/more/RemoteControllerActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$9;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    iput p2, p0, Lcom/rockrobo/more/RemoteControllerActivity$9;->val$command:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity$9;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RemoteControllerActivity;->access$700(Lcom/rockrobo/more/RemoteControllerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity$9;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1300(Lcom/rockrobo/more/RemoteControllerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/rockrobo/ui/HeartBeatView;

    invoke-virtual {p1}, Lcom/rockrobo/ui/HeartBeatView;->startBeat()V

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity$9;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    iget v1, p0, Lcom/rockrobo/more/RemoteControllerActivity$9;->val$command:I

    invoke-static {v0, v1, p1}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1400(Lcom/rockrobo/more/RemoteControllerActivity;ILcom/rockrobo/ui/HeartBeatView;)V

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$9;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1500(Lcom/rockrobo/more/RemoteControllerActivity;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$9;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1600(Lcom/rockrobo/more/RemoteControllerActivity;)V

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$9;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1700(Lcom/rockrobo/more/RemoteControllerActivity;)V

    return-void
.end method
