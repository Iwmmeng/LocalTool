.class Lcom/rockrobo/more/timer/SetTimerActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnValueChangeListener;


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

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$6;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;II)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$6;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$1100(Lcom/rockrobo/more/timer/SetTimerActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/rockrobo/more/timer/SetTimerActivity$6;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p2, p3}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$1000(Lcom/rockrobo/more/timer/SetTimerActivity;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
