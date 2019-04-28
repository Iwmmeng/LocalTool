.class public Lcom/rockrobo/xmplugin/XmFDSDownloader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final bucketName:Ljava/lang/String;

.field private final failMsg:I

.field private fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

.field private final handler:Landroid/os/Handler;

.field private final objName:Ljava/lang/String;

.field private final okMsg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/xmplugin/XmFDSDownloader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/rockrobo/xmplugin/utils/FDSOperator;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    iput-object p2, p0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->bucketName:Ljava/lang/String;

    iput-object p4, p0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->objName:Ljava/lang/String;

    iput p5, p0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->okMsg:I

    iput p6, p0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->failMsg:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To get FDS object,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->objName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->bucketName:Ljava/lang/String;

    iget-object v2, p0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->objName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/rockrobo/xmplugin/utils/FDSOperator;->getObject(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget v2, p0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->okMsg:I

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/rockrobo/xmplugin/XmFDSDownloader;->failMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
