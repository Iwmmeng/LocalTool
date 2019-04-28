.class Lcom/rockrobo/clean/UserImprovePlanActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/clean/UserImprovePlanActivity$1;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rockrobo/clean/UserImprovePlanActivity$1;


# direct methods
.method constructor <init>(Lcom/rockrobo/clean/UserImprovePlanActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/UserImprovePlanActivity$1$1;->this$1:Lcom/rockrobo/clean/UserImprovePlanActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/clean/UserImprovePlanActivity$1$1;->this$1:Lcom/rockrobo/clean/UserImprovePlanActivity$1;

    iget-object p1, p1, Lcom/rockrobo/clean/UserImprovePlanActivity$1;->this$0:Lcom/rockrobo/clean/UserImprovePlanActivity;

    invoke-virtual {p1}, Lcom/rockrobo/clean/UserImprovePlanActivity;->finish()V

    return-void
.end method
