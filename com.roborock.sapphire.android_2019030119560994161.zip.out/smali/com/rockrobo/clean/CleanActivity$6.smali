.class Lcom/rockrobo/clean/CleanActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/clean/CleanActivity;->setupErrorView()V
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

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$6;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$6;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$1100(Lcom/rockrobo/clean/CleanActivity;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$6;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$1100(Lcom/rockrobo/clean/CleanActivity;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$6;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$1200(Lcom/rockrobo/clean/CleanActivity;)I

    move-result p1

    :goto_0
    invoke-static {p1}, Lcom/rockrobo/utils/Errors;->knownErrorCode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/rockrobo/clean/CleanActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To start activity for error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/clean/CleanActivity$6;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v2}, Lcom/rockrobo/clean/CleanActivity;->access$1100(Lcom/rockrobo/clean/CleanActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ErrorCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$6;->this$0:Lcom/rockrobo/clean/CleanActivity;

    const-class v1, Lcom/rockrobo/clean/JErrorActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/rockrobo/clean/CleanActivity;->startActivity(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
