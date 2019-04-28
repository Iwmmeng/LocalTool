.class Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/ui/OpenGLMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/ui/OpenGLMainView;


# direct methods
.method private constructor <init>(Lcom/rockrobo/ui/OpenGLMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;->this$0:Lcom/rockrobo/ui/OpenGLMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockrobo/ui/OpenGLMainView;Lcom/rockrobo/ui/OpenGLMainView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;-><init>(Lcom/rockrobo/ui/OpenGLMainView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;->this$0:Lcom/rockrobo/ui/OpenGLMainView;

    invoke-static {p1}, Lcom/rockrobo/ui/OpenGLMainView;->access$200(Lcom/rockrobo/ui/OpenGLMainView;)Landroid/opengl/GLSurfaceView;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener$1;

    invoke-direct {v0, p0, p2}, Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener$1;-><init>(Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;->this$0:Lcom/rockrobo/ui/OpenGLMainView;

    invoke-static {p1}, Lcom/rockrobo/ui/OpenGLMainView;->access$200(Lcom/rockrobo/ui/OpenGLMainView;)Landroid/opengl/GLSurfaceView;

    move-result-object p1

    new-instance v1, Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener$2;

    invoke-direct {v1, p0, p2}, Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener$2;-><init>(Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    return v0
.end method
