.class Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

.field final synthetic val$timer:Lcom/rockrobo/more/timer/PlugTimer;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/TimerListActivity$TimerAdapter;Lcom/rockrobo/more/timer/PlugTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;->this$1:Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    iput-object p2, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;->val$timer:Lcom/rockrobo/more/timer/PlugTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;->val$timer:Lcom/rockrobo/more/timer/PlugTimer;

    iput-boolean p2, p1, Lcom/rockrobo/more/timer/PlugTimer;->enable:Z

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;->this$1:Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {p1}, Lcom/rockrobo/more/TimerListActivity;->access$1100(Lcom/rockrobo/more/TimerListActivity;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show()V

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;->this$1:Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->this$0:Lcom/rockrobo/more/TimerListActivity;

    invoke-static {p1}, Lcom/rockrobo/more/TimerListActivity;->access$000(Lcom/rockrobo/more/TimerListActivity;)Lcom/rockrobo/more/timer/TimerCommonManager;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;->val$timer:Lcom/rockrobo/more/timer/PlugTimer;

    new-instance v1, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2$1;-><init>(Lcom/rockrobo/more/TimerListActivity$TimerAdapter$2;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/rockrobo/more/timer/TimerCommonManager;->enableTimer(Lcom/rockrobo/more/timer/PlugTimer;ZLcom/rockrobo/more/timer/TimerCommonManager$PlugSceneListener;)V

    return-void
.end method
