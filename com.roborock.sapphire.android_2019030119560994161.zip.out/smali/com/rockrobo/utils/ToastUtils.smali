.class public Lcom/rockrobo/utils/ToastUtils;
.super Ljava/lang/Object;


# static fields
.field public static handler:Landroid/os/Handler;

.field private static final synObj:Ljava/lang/Object;

.field private static toastRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/rockrobo/utils/ToastUtils;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/rockrobo/utils/ToastUtils;->synObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/rockrobo/utils/ToastUtils;->synObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/rockrobo/utils/ToastUtils;->toastRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    sput-object p0, Lcom/rockrobo/utils/ToastUtils;->toastRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static release()V
    .locals 2

    sget-object v0, Lcom/rockrobo/utils/ToastUtils;->synObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/utils/ToastUtils;->toastRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/rockrobo/utils/ToastUtils;->toastRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v1, 0x0

    sput-object v1, Lcom/rockrobo/utils/ToastUtils;->toastRef:Ljava/lang/ref/WeakReference;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static showMessage(Landroid/content/Context;II)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rockrobo/utils/ToastUtils$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/rockrobo/utils/ToastUtils$1;-><init>(Ljava/lang/String;Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
