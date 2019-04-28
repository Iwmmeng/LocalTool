.class Lcom/rockrobo/ui/OpenGLMainView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/ui/OpenGLMainView;->setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/ui/OpenGLMainView;

.field final synthetic val$cleanInfo:Lcom/rockrobo/common/CleanInfo;


# direct methods
.method constructor <init>(Lcom/rockrobo/ui/OpenGLMainView;Lcom/rockrobo/common/CleanInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/OpenGLMainView$2;->this$0:Lcom/rockrobo/ui/OpenGLMainView;

    iput-object p2, p0, Lcom/rockrobo/ui/OpenGLMainView$2;->val$cleanInfo:Lcom/rockrobo/common/CleanInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/OpenGLMainView$2;->this$0:Lcom/rockrobo/ui/OpenGLMainView;

    invoke-static {v0}, Lcom/rockrobo/ui/OpenGLMainView;->access$100(Lcom/rockrobo/ui/OpenGLMainView;)Lcom/rockrobo/ui/mainview/GLMainViewRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/OpenGLMainView$2;->val$cleanInfo:Lcom/rockrobo/common/CleanInfo;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V

    return-void
.end method
