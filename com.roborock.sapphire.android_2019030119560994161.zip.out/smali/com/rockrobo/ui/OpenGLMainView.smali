.class public Lcom/rockrobo/ui/OpenGLMainView;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rockrobo/ui/mainview/MainViewI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private cleanInfo:Lcom/rockrobo/common/CleanInfo;

.field private final context:Landroid/content/Context;

.field private final glSurfaceView:Landroid/opengl/GLSurfaceView;

.field private final lastRobotStatus:Lcom/rockrobo/clean/RobotStatus;

.field private final listener:Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;

.field private final render:Lcom/rockrobo/ui/mainview/GLMainViewRenderer;

.field private robotStatus:Lcom/rockrobo/clean/RobotStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/ui/OpenGLMainView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/OpenGLMainView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;Lcom/rockrobo/clean/RobotStatus;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/ui/OpenGLMainView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/OpenGLMainView;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    iput-object p1, p0, Lcom/rockrobo/ui/OpenGLMainView;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/rockrobo/ui/OpenGLMainView;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/rockrobo/ui/OpenGLMainView;->listener:Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    new-instance v1, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;

    iget-object v2, p0, Lcom/rockrobo/ui/OpenGLMainView;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p3}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;-><init>(Landroid/content/Context;Lcom/rockrobo/clean/RobotStatus;)V

    iput-object v1, p0, Lcom/rockrobo/ui/OpenGLMainView;->render:Lcom/rockrobo/ui/mainview/GLMainViewRenderer;

    iget-object v1, p0, Lcom/rockrobo/ui/OpenGLMainView;->render:Lcom/rockrobo/ui/mainview/GLMainViewRenderer;

    invoke-virtual {v1, p2}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->setMapButtonClickListener(Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;)V

    iput-object p3, p0, Lcom/rockrobo/ui/OpenGLMainView;->lastRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object p2, p0, Lcom/rockrobo/ui/OpenGLMainView;->render:Lcom/rockrobo/ui/mainview/GLMainViewRenderer;

    invoke-virtual {p1, p2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    new-instance p2, Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;

    invoke-direct {p2, p0, v0}, Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;-><init>(Lcom/rockrobo/ui/OpenGLMainView;Lcom/rockrobo/ui/OpenGLMainView$1;)V

    invoke-virtual {p1, p2}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/rockrobo/ui/OpenGLMainView;)Lcom/rockrobo/ui/mainview/GLMainViewRenderer;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/ui/OpenGLMainView;->render:Lcom/rockrobo/ui/mainview/GLMainViewRenderer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/rockrobo/ui/OpenGLMainView;)Landroid/opengl/GLSurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/ui/OpenGLMainView;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object p0
.end method


# virtual methods
.method public exit()V
    .locals 0

    return-void
.end method

.method public mapButtonDown()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/OpenGLMainView;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/rockrobo/ui/OpenGLMainView$4;

    invoke-direct {v1, p0}, Lcom/rockrobo/ui/OpenGLMainView$4;-><init>(Lcom/rockrobo/ui/OpenGLMainView;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public mapButtonUp()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/OpenGLMainView;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/rockrobo/ui/OpenGLMainView$3;

    invoke-direct {v1, p0}, Lcom/rockrobo/ui/OpenGLMainView$3;-><init>(Lcom/rockrobo/ui/OpenGLMainView;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/OpenGLMainView;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/OpenGLMainView;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    invoke-virtual {v0, p1}, Lcom/rockrobo/common/CleanInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/rockrobo/ui/OpenGLMainView;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    iget-object v0, p0, Lcom/rockrobo/ui/OpenGLMainView;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/rockrobo/ui/OpenGLMainView$2;

    invoke-direct {v1, p0, p1}, Lcom/rockrobo/ui/OpenGLMainView$2;-><init>(Lcom/rockrobo/ui/OpenGLMainView;Lcom/rockrobo/common/CleanInfo;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/OpenGLMainView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/OpenGLMainView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {p1, v0}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/rockrobo/ui/OpenGLMainView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v0, p0, Lcom/rockrobo/ui/OpenGLMainView;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/rockrobo/ui/OpenGLMainView$1;

    invoke-direct {v1, p0, p1}, Lcom/rockrobo/ui/OpenGLMainView$1;-><init>(Lcom/rockrobo/ui/OpenGLMainView;Lcom/rockrobo/clean/RobotStatus;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
