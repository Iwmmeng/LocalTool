.class Lcom/rockrobo/utils/ToastUtils$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/utils/ToastUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/utils/ToastUtils$1;


# direct methods
.method constructor <init>(Lcom/rockrobo/utils/ToastUtils$1;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/utils/ToastUtils$1$1;->this$0:Lcom/rockrobo/utils/ToastUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/rockrobo/utils/ToastUtils;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/rockrobo/utils/ToastUtils$1$1;->this$0:Lcom/rockrobo/utils/ToastUtils$1;

    iget-object v1, v1, Lcom/rockrobo/utils/ToastUtils$1;->val$msg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Lcom/rockrobo/utils/ToastUtils;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/rockrobo/utils/ToastUtils;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/rockrobo/utils/ToastUtils;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Toast;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/rockrobo/utils/ToastUtils$1$1;->this$0:Lcom/rockrobo/utils/ToastUtils$1;

    iget-object v2, v2, Lcom/rockrobo/utils/ToastUtils$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/rockrobo/utils/ToastUtils$1$1;->this$0:Lcom/rockrobo/utils/ToastUtils$1;

    iget v2, v2, Lcom/rockrobo/utils/ToastUtils$1;->val$len:I

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/rockrobo/utils/ToastUtils$1$1;->this$0:Lcom/rockrobo/utils/ToastUtils$1;

    iget-object v1, v1, Lcom/rockrobo/utils/ToastUtils$1;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/rockrobo/utils/ToastUtils$1$1;->this$0:Lcom/rockrobo/utils/ToastUtils$1;

    iget-object v2, v2, Lcom/rockrobo/utils/ToastUtils$1;->val$msg:Ljava/lang/String;

    iget-object v3, p0, Lcom/rockrobo/utils/ToastUtils$1$1;->this$0:Lcom/rockrobo/utils/ToastUtils$1;

    iget v3, v3, Lcom/rockrobo/utils/ToastUtils$1;->val$len:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    invoke-static {v2}, Lcom/rockrobo/utils/ToastUtils;->access$102(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/rockrobo/utils/ToastUtils$1$1;->this$0:Lcom/rockrobo/utils/ToastUtils$1;

    iget-object v1, v1, Lcom/rockrobo/utils/ToastUtils$1;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/rockrobo/utils/ToastUtils$1$1;->this$0:Lcom/rockrobo/utils/ToastUtils$1;

    iget-object v2, v2, Lcom/rockrobo/utils/ToastUtils$1;->val$msg:Ljava/lang/String;

    iget-object v3, p0, Lcom/rockrobo/utils/ToastUtils$1$1;->this$0:Lcom/rockrobo/utils/ToastUtils$1;

    iget v3, v3, Lcom/rockrobo/utils/ToastUtils$1;->val$len:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :goto_2
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
