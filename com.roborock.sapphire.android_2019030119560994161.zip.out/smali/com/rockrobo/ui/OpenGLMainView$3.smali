.class Lcom/rockrobo/ui/OpenGLMainView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/ui/OpenGLMainView;->mapButtonUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/ui/OpenGLMainView;


# direct methods
.method constructor <init>(Lcom/rockrobo/ui/OpenGLMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/OpenGLMainView$3;->this$0:Lcom/rockrobo/ui/OpenGLMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/OpenGLMainView$3;->this$0:Lcom/rockrobo/ui/OpenGLMainView;

    invoke-static {v0}, Lcom/rockrobo/ui/OpenGLMainView;->access$100(Lcom/rockrobo/ui/OpenGLMainView;)Lcom/rockrobo/ui/mainview/GLMainViewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonUp()V

    return-void
.end method
