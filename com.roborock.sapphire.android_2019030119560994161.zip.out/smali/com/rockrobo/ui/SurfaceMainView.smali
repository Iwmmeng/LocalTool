.class public Lcom/rockrobo/ui/SurfaceMainView;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rockrobo/ui/mainview/MainViewI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/ui/SurfaceMainView$OnTouchListener;,
        Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final drawingThread:Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

.field private preCleanInfo:Lcom/rockrobo/common/CleanInfo;

.field private preRobotStatus:Lcom/rockrobo/clean/RobotStatus;

.field private final surfaceHolder:Landroid/view/SurfaceHolder;

.field private final surfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/ui/SurfaceMainView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/SurfaceMainView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Landroid/content/Context;Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/ui/SurfaceMainView;->preCleanInfo:Lcom/rockrobo/common/CleanInfo;

    iput-object v0, p0, Lcom/rockrobo/ui/SurfaceMainView;->preRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-object p1, p0, Lcom/rockrobo/ui/SurfaceMainView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/rockrobo/ui/SurfaceMainView;->surfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v1, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    new-instance v2, Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-direct {v2, p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;-><init>(Landroid/view/SurfaceView;Lcom/rockrobo/ui/mainview/MainViewResourceManager;)V

    iput-object v1, p0, Lcom/rockrobo/ui/SurfaceMainView;->drawingThread:Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    iget-object p2, p0, Lcom/rockrobo/ui/SurfaceMainView;->drawingThread:Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    invoke-virtual {p2, p3}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->setOnTouchListener(Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;)V

    iget-object p2, p0, Lcom/rockrobo/ui/SurfaceMainView;->drawingThread:Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    invoke-virtual {p2}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->start()V

    iget-object p2, p0, Lcom/rockrobo/ui/SurfaceMainView;->surfaceHolder:Landroid/view/SurfaceHolder;

    new-instance p3, Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;

    invoke-direct {p3, p0}, Lcom/rockrobo/ui/SurfaceMainView$SurfaceHolderCallback;-><init>(Lcom/rockrobo/ui/SurfaceMainView;)V

    invoke-interface {p2, p3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance p2, Lcom/rockrobo/ui/SurfaceMainView$OnTouchListener;

    invoke-direct {p2, p0, v0}, Lcom/rockrobo/ui/SurfaceMainView$OnTouchListener;-><init>(Lcom/rockrobo/ui/SurfaceMainView;Lcom/rockrobo/ui/SurfaceMainView$1;)V

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/rockrobo/ui/SurfaceMainView;)Lcom/rockrobo/ui/mainview/MainViewDrawingThread;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/ui/SurfaceMainView;->drawingThread:Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/ui/SurfaceMainView;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public exit()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMainView;->drawingThread:Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->exit()V

    return-void
.end method

.method public mapButtonDown()V
    .locals 0

    return-void
.end method

.method public mapButtonUp()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMainView;->drawingThread:Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->reStart()V

    return-void
.end method

.method public setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMainView;->preCleanInfo:Lcom/rockrobo/common/CleanInfo;

    invoke-virtual {p1, v0}, Lcom/rockrobo/common/CleanInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/rockrobo/ui/SurfaceMainView;->preCleanInfo:Lcom/rockrobo/common/CleanInfo;

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMainView;->drawingThread:Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    invoke-virtual {v0, p1}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V

    return-void
.end method

.method public setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMainView;->preRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {p1, v0}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/rockrobo/ui/SurfaceMainView;->preRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMainView;->drawingThread:Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    invoke-virtual {v0, p1}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V

    return-void
.end method
