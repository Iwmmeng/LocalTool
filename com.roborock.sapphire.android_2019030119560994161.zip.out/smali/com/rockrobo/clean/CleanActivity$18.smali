.class Lcom/rockrobo/clean/CleanActivity$18;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/clean/CleanActivity;->showLicenseDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/clean/CleanActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$18;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/rockrobo/clean/CleanActivity;->access$1300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "User agreed the license!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$18;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$2900(Lcom/rockrobo/clean/CleanActivity;)V

    return-void
.end method
