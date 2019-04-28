.class Lcom/rockrobo/ui/OpenGLMainView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/ui/OpenGLMainView;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/ui/OpenGLMainView;

.field final synthetic val$robotStatus:Lcom/rockrobo/clean/RobotStatus;


# direct methods
.method constructor <init>(Lcom/rockrobo/ui/OpenGLMainView;Lcom/rockrobo/clean/RobotStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/OpenGLMainView$1;->this$0:Lcom/rockrobo/ui/OpenGLMainView;

    iput-object p2, p0, Lcom/rockrobo/ui/OpenGLMainView$1;->val$robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/OpenGLMainView$1;->this$0:Lcom/rockrobo/ui/OpenGLMainView;

    invoke-static {v0}, Lcom/rockrobo/ui/OpenGLMainView;->access$100(Lcom/rockrobo/ui/OpenGLMainView;)Lcom/rockrobo/ui/mainview/GLMainViewRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/OpenGLMainView$1;->val$robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    return-void
.end method
