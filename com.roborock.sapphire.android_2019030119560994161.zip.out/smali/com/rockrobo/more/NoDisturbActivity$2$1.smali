.class Lcom/rockrobo/more/NoDisturbActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/NoDisturbActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rockrobo/more/NoDisturbActivity$2;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/NoDisturbActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$2$1;->this$1:Lcom/rockrobo/more/NoDisturbActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;II)V
    .locals 2

    invoke-static {}, Lcom/rockrobo/more/NoDisturbActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",minute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$2$1;->this$1:Lcom/rockrobo/more/NoDisturbActivity$2;

    iget-object p1, p1, Lcom/rockrobo/more/NoDisturbActivity$2;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    iput p2, p1, Lcom/rockrobo/more/NoDisturbActivity;->startHour:I

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$2$1;->this$1:Lcom/rockrobo/more/NoDisturbActivity$2;

    iget-object p1, p1, Lcom/rockrobo/more/NoDisturbActivity$2;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    iput p3, p1, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$2$1;->this$1:Lcom/rockrobo/more/NoDisturbActivity$2;

    iget-object p1, p1, Lcom/rockrobo/more/NoDisturbActivity$2;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    invoke-static {p1}, Lcom/rockrobo/more/NoDisturbActivity;->access$600(Lcom/rockrobo/more/NoDisturbActivity;)V

    return-void
.end method
