.class Lcom/rockrobo/clean/CleanActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/clean/CleanActivity;->initViews()V
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

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$2;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$2;->this$0:Lcom/rockrobo/clean/CleanActivity;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$2;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$000(Lcom/rockrobo/clean/CleanActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/rockrobo/clean/CleanActivity;->access$100(Lcom/rockrobo/clean/CleanActivity;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "firmware_new_key"

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity$2;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v1}, Lcom/rockrobo/clean/CleanActivity;->access$200(Lcom/rockrobo/clean/CleanActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$2;->this$0:Lcom/rockrobo/clean/CleanActivity;

    const-class v1, Lcom/rockrobo/more/MoreActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/rockrobo/clean/CleanActivity;->startActivityForResult(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method
