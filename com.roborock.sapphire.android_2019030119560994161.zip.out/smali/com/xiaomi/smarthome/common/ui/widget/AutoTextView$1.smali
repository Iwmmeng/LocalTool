.class Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;->access$500(Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;-><init>(Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
