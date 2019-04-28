.class Lcom/rockrobo/more/timer/SetTimerActivity$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/timer/SetTimerActivity;->initTitleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/timer/SetTimerActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$8;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$8;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$1400(Lcom/rockrobo/more/timer/SetTimerActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$8;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$1500(Lcom/rockrobo/more/timer/SetTimerActivity;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$8;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->finish()V

    return-void
.end method
