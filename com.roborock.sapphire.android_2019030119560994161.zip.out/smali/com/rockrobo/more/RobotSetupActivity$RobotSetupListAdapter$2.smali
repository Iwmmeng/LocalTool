.class Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->setupMopModeItem(I)Lcom/rockrobo/more/RobotSetupActivity$ViewHolder;
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

    iput-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$2;->this$1:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance p1, Lcom/rockrobo/more/robotsetup/MopAlertDialog;

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$2;->this$1:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    iget-object v0, v0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/RobotSetupActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/rockrobo/more/robotsetup/MopAlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/rockrobo/more/robotsetup/MopAlertDialog;->show()V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$2;->this$1:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    const/4 p2, 0x1

    :goto_0
    invoke-static {p1, p2}, Lcom/rockrobo/more/RobotSetupActivity;->access$2002(Lcom/rockrobo/more/RobotSetupActivity;I)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$2;->this$1:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$2;->this$1:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/RobotSetupActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$2;->this$1:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    iget-object p2, p2, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {p2}, Lcom/rockrobo/more/RobotSetupActivity;->access$2100(Lcom/rockrobo/more/RobotSetupActivity;)Lcom/rockrobo/xmplugin/Device;

    move-result-object p2

    iget-object v0, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$2;->this$1:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    iget-object v0, v0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->this$0:Lcom/rockrobo/more/RobotSetupActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RobotSetupActivity;->access$2000(Lcom/rockrobo/more/RobotSetupActivity;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/rockrobo/utils/PreferenceUtils;->saveMopModePreference(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;I)V

    iget-object p1, p0, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter$2;->this$1:Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;

    invoke-virtual {p1}, Lcom/rockrobo/more/RobotSetupActivity$RobotSetupListAdapter;->notifyDataSetChanged()V

    return-void
.end method
