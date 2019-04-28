.class Lcom/rockrobo/more/NoDisturbActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/NoDisturbActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/NoDisturbActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/NoDisturbActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$3;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$3;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    invoke-static {p1}, Lcom/rockrobo/more/NoDisturbActivity;->access$200(Lcom/rockrobo/more/NoDisturbActivity;)V

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$3;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    invoke-static {p1}, Lcom/rockrobo/more/NoDisturbActivity;->access$800(Lcom/rockrobo/more/NoDisturbActivity;)V

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$3;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    invoke-static {p1}, Lcom/rockrobo/more/NoDisturbActivity;->access$900(Lcom/rockrobo/more/NoDisturbActivity;)V

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$3;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    invoke-static {p1}, Lcom/rockrobo/more/NoDisturbActivity;->access$1000(Lcom/rockrobo/more/NoDisturbActivity;)V

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$3;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    invoke-static {p1}, Lcom/rockrobo/more/NoDisturbActivity;->access$1200(Lcom/rockrobo/more/NoDisturbActivity;)Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/NoDisturbActivity$3$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/NoDisturbActivity$3$1;-><init>(Lcom/rockrobo/more/NoDisturbActivity$3;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->setOnTimeChangedListener(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnTimeChangedListener;)V

    return-void
.end method
