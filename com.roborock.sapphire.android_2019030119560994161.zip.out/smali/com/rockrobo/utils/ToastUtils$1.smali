.class final Lcom/rockrobo/utils/ToastUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$len:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/utils/ToastUtils$1;->val$msg:Ljava/lang/String;

    iput-object p2, p0, Lcom/rockrobo/utils/ToastUtils$1;->val$ctx:Landroid/content/Context;

    iput p3, p0, Lcom/rockrobo/utils/ToastUtils$1;->val$len:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/rockrobo/utils/ToastUtils;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/rockrobo/utils/ToastUtils$1$1;

    invoke-direct {v1, p0}, Lcom/rockrobo/utils/ToastUtils$1$1;-><init>(Lcom/rockrobo/utils/ToastUtils$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
