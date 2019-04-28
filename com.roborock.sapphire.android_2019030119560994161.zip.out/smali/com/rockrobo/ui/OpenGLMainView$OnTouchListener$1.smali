.class Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;

.field final synthetic val$event:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener$1;->this$1:Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;

    iput-object p2, p0, Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener$1;->val$event:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener$1;->this$1:Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;

    iget-object v0, v0, Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener;->this$0:Lcom/rockrobo/ui/OpenGLMainView;

    invoke-static {v0}, Lcom/rockrobo/ui/OpenGLMainView;->access$100(Lcom/rockrobo/ui/OpenGLMainView;)Lcom/rockrobo/ui/mainview/GLMainViewRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/OpenGLMainView$OnTouchListener$1;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->touchDown(Landroid/view/MotionEvent;)V

    return-void
.end method
