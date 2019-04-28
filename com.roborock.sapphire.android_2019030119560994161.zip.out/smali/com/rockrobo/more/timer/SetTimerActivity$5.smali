.class Lcom/rockrobo/more/timer/SetTimerActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$Formatter;


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

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$5;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$5;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {v0, p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$1000(Lcom/rockrobo/more/timer/SetTimerActivity;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
