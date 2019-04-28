.class Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/timer/SetTimerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/rockrobo/more/timer/SetTimerActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/timer/SetTimerActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/more/timer/SetTimerActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$000(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    const p1, 0x7f0a00f0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/rockrobo/more/timer/CommonTimer;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/rockrobo/more/timer/CommonTimer;->status:I

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v1, 0x7f0a01d8

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    :cond_1
    invoke-static {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$000(Lcom/rockrobo/more/timer/SetTimerActivity;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    invoke-virtual {v0}, Lcom/rockrobo/more/timer/SetTimerActivity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
