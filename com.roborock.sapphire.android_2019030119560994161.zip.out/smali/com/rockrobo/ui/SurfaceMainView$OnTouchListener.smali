.class Lcom/rockrobo/ui/SurfaceMainView$OnTouchListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/ui/SurfaceMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/ui/SurfaceMainView;


# direct methods
.method private constructor <init>(Lcom/rockrobo/ui/SurfaceMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/SurfaceMainView$OnTouchListener;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockrobo/ui/SurfaceMainView;Lcom/rockrobo/ui/SurfaceMainView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/SurfaceMainView$OnTouchListener;-><init>(Lcom/rockrobo/ui/SurfaceMainView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/ui/SurfaceMainView$OnTouchListener;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-static {p1}, Lcom/rockrobo/ui/SurfaceMainView;->access$100(Lcom/rockrobo/ui/SurfaceMainView;)Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->touchDown(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object p1, p0, Lcom/rockrobo/ui/SurfaceMainView$OnTouchListener;->this$0:Lcom/rockrobo/ui/SurfaceMainView;

    invoke-static {p1}, Lcom/rockrobo/ui/SurfaceMainView;->access$100(Lcom/rockrobo/ui/SurfaceMainView;)Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->touchUp(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    :cond_1
    return p1
.end method
