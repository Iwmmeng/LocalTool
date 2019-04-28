.class Lcom/rockrobo/more/TimerListActivity$TimerAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$1;->this$1:Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    iput-object p2, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$1;->val$timer:Lcom/rockrobo/more/timer/PlugTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$1;->this$1:Lcom/rockrobo/more/TimerListActivity$TimerAdapter;

    iget-object p1, p1, Lcom/rockrobo/more/TimerListActivity$TimerAdapter;->this$0:Lcom/rockrobo/more/TimerListActivity;

    iget-object v0, p0, Lcom/rockrobo/more/TimerListActivity$TimerAdapter$1;->val$timer:Lcom/rockrobo/more/timer/PlugTimer;

    invoke-static {p1, v0}, Lcom/rockrobo/more/TimerListActivity;->access$1300(Lcom/rockrobo/more/TimerListActivity;Lcom/rockrobo/more/timer/PlugTimer;)V

    return-void
.end method
