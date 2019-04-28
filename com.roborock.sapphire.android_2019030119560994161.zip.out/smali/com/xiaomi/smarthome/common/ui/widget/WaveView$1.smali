.class Lcom/xiaomi/smarthome/common/ui/widget/WaveView$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smarthome/common/ui/widget/WaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/widget/WaveView;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/WaveView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/WaveView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/WaveView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->access$002(Lcom/xiaomi/smarthome/common/ui/widget/WaveView;Z)Z

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/WaveView;

    iget-object p1, p1, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/WaveView;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->invalidate()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/WaveView;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->invalidate()V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/WaveView;

    iget-object p1, p1, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/WaveView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/WaveView;

    iget-object p1, p1, Lcom/xiaomi/smarthome/common/ui/widget/WaveView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
