.class Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->setupCarpetModeItem(I)Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$1;->this$1:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-static {}, Lcom/rockrobo/more/RobotSetupActivity;->access$1100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "On perform checked change listener!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$1;->this$1:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$1200(Lcom/rockrobo/more/RobotSetupActivity;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$1;->this$1:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$1300(Lcom/rockrobo/more/RobotSetupActivity;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$1;->this$1:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RobotSetupActivity;->access$1400(Lcom/rockrobo/more/RobotSetupActivity;)V
    :try_end_0
    .catch Lcom/rockrobo/presenter/PresenterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/rockrobo/more/RobotSetupActivity;->access$1100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONException, msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/rockrobo/presenter/PresenterException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
