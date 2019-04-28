.class Lcom/rockrobo/clean/CleanActivity$7;
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

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$7;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$7;->this$0:Lcom/rockrobo/clean/CleanActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rockrobo/clean/CleanActivity;->access$1202(Lcom/rockrobo/clean/CleanActivity;I)I

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$7;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$1400(Lcom/rockrobo/clean/CleanActivity;)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$7;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$1100(Lcom/rockrobo/clean/CleanActivity;)I

    move-result p1

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x284

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$7;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1, v1}, Lcom/rockrobo/clean/CleanActivity;->access$1702(Lcom/rockrobo/clean/CleanActivity;Z)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$7;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1, v1}, Lcom/rockrobo/clean/CleanActivity;->access$1602(Lcom/rockrobo/clean/CleanActivity;Z)Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$7;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1, v1}, Lcom/rockrobo/clean/CleanActivity;->access$1502(Lcom/rockrobo/clean/CleanActivity;Z)Z

    return-void
.end method
