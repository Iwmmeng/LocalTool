.class Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2$1;->this$1:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2$1;->this$1:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;

    iget-object p1, p1, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;->this$0:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->finish()V

    return-void
.end method
