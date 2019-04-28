.class Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;->access$000(Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;->access$100(Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;

    invoke-static {v1}, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;->access$200(Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;)Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;

    invoke-static {v1}, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;->access$300(Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;)Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$Rotate3dAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;->access$400(Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;->access$402(Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;Z)Z

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;

    invoke-static {v1}, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;->access$000(Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;->access$402(Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;Z)Z

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;

    iget-object v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1$1;->this$1:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;

    iget-object v1, v1, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;

    invoke-static {v1}, Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;->access$100(Lcom/xiaomi/smarthome/common/ui/widget/AutoTextView;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    return-void
.end method
