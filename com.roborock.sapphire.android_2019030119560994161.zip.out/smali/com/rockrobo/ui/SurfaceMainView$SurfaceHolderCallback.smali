.class public Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/ui/SurfaceMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SurfaceHolderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/ui/SurfaceMainView;


# direct methods
.method public constructor <init>(Lcom/rockrobo/ui/SurfaceMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-static {p1}, Lcom/rockrobo/ui/SurfaceMainView;->access$100(Lcom/rockrobo/ui/SurfaceMainView;)Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-static {p2}, Lcom/rockrobo/ui/SurfaceMainView;->access$100(Lcom/rockrobo/ui/SurfaceMainView;)Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->setViewSize(II)V

    iget-object p2, p0, Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-static {p2}, Lcom/rockrobo/ui/SurfaceMainView;->access$100(Lcom/rockrobo/ui/SurfaceMainView;)Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    move-result-object p2

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->initialized:Z

    iget-object p2, p0, Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-static {p2}, Lcom/rockrobo/ui/SurfaceMainView;->access$100(Lcom/rockrobo/ui/SurfaceMainView;)Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    move-result-object p2

    iput-boolean p3, p2, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->running:Z

    iget-object p2, p0, Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-static {p2}, Lcom/rockrobo/ui/SurfaceMainView;->access$100(Lcom/rockrobo/ui/SurfaceMainView;)Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    invoke-static {}, Lcom/rockrobo/ui/SurfaceMainView;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "surface destroyed!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-static {p1}, Lcom/rockrobo/ui/SurfaceMainView;->access$100(Lcom/rockrobo/ui/SurfaceMainView;)Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-static {v0}, Lcom/rockrobo/ui/SurfaceMainView;->access$100(Lcom/rockrobo/ui/SurfaceMainView;)Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->running:Z

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-static {v0}, Lcom/rockrobo/ui/SurfaceMainView;->access$100(Lcom/rockrobo/ui/SurfaceMainView;)Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    move-result-object v0

    iput-boolean v1, v0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->initialized:Z

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-static {v0}, Lcom/rockrobo/ui/SurfaceMainView;->access$100(Lcom/rockrobo/ui/SurfaceMainView;)Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_0
    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-static {v0}, Lcom/rockrobo/ui/SurfaceMainView;->access$100(Lcom/rockrobo/ui/SurfaceMainView;)Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->active:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-static {v0}, Lcom/rockrobo/ui/SurfaceMainView;->access$100(Lcom/rockrobo/ui/SurfaceMainView;)Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-static {v0}, Lcom/rockrobo/ui/SurfaceMainView;->access$100(Lcom/rockrobo/ui/SurfaceMainView;)Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->quit:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
