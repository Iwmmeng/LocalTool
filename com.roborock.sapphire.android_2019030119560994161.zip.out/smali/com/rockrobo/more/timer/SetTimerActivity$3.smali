.class Lcom/rockrobo/more/timer/SetTimerActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/timer/SetTimerActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$3;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$3;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$600(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$3;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->lowLightTimerOn(Z)V

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$3;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->highLightCleanMode(Z)V

    return-void
.end method
