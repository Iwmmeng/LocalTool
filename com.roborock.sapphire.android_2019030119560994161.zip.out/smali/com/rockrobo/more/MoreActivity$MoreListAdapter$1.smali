.class Lcom/rockrobo/more/MoreActivity$MoreListAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rockrobo/more/MoreActivity$MoreListAdapter;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/MoreActivity$MoreListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter$1;->this$1:Lcom/rockrobo/more/MoreActivity$MoreListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    invoke-static {}, Lcom/rockrobo/more/MoreActivity;->access$1400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "On perform checked change listener!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter$1;->this$1:Lcom/rockrobo/more/MoreActivity$MoreListAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p1, p2}, Lcom/rockrobo/more/MoreActivity;->access$1302(Lcom/rockrobo/more/MoreActivity;Z)Z

    invoke-static {}, Lcom/rockrobo/more/MoreActivity;->access$1400()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Msg switch status:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter$1;->this$1:Lcom/rockrobo/more/MoreActivity$MoreListAdapter;

    iget-object v0, v0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {v0}, Lcom/rockrobo/more/MoreActivity;->access$1300(Lcom/rockrobo/more/MoreActivity;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter$1;->this$1:Lcom/rockrobo/more/MoreActivity$MoreListAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p1}, Lcom/rockrobo/more/MoreActivity;->access$1700(Lcom/rockrobo/more/MoreActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object v0

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter$1;->this$1:Lcom/rockrobo/more/MoreActivity$MoreListAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p1}, Lcom/rockrobo/more/MoreActivity;->access$1300(Lcom/rockrobo/more/MoreActivity;)Z

    move-result v1

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter$1;->this$1:Lcom/rockrobo/more/MoreActivity$MoreListAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p1}, Lcom/rockrobo/more/MoreActivity;->access$1500(Lcom/rockrobo/more/MoreActivity;)I

    move-result v2

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$MoreListAdapter$1;->this$1:Lcom/rockrobo/more/MoreActivity$MoreListAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/MoreActivity$MoreListAdapter;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p1}, Lcom/rockrobo/more/MoreActivity;->access$1600(Lcom/rockrobo/more/MoreActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 p1, -0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/rockrobo/presenter/RobotPresenterI;->sendPushStatusToServer(ZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
