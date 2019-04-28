.class Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/ui/ListHeartbeatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonResource"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final bitmapId:I

.field private final cleanMode:Lcom/rockrobo/common/CleanMode;

.field private sleepingBitmap:Landroid/graphics/Bitmap;

.field private final sleepingBitmapId:I

.field private text:Ljava/lang/String;

.field private final textId:I

.field final synthetic this$0:Lcom/rockrobo/ui/ListHeartbeatView;


# direct methods
.method public constructor <init>(Lcom/rockrobo/ui/ListHeartbeatView;Lcom/rockrobo/common/CleanMode;III)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->this$0:Lcom/rockrobo/ui/ListHeartbeatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->text:Ljava/lang/String;

    iput-object p1, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->bitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->sleepingBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->cleanMode:Lcom/rockrobo/common/CleanMode;

    iput p3, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->bitmapId:I

    iput p4, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->sleepingBitmapId:I

    iput p5, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->textId:I

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Lcom/rockrobo/common/CleanMode;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->cleanMode:Lcom/rockrobo/common/CleanMode;

    return-object p0
.end method

.method static synthetic access$100(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->text:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)I
    .locals 0

    iget p0, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->textId:I

    return p0
.end method

.method static synthetic access$300(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->sleepingBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$302(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->sleepingBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)I
    .locals 0

    iget p0, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->sleepingBitmapId:I

    return p0
.end method

.method static synthetic access$500(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$502(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)I
    .locals 0

    iget p0, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->bitmapId:I

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ButtonResource{cleanMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->cleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bitmapId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->bitmapId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
