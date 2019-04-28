.class Lcom/rockrobo/clean/JErrorActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/clean/JErrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/clean/JErrorActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/clean/JErrorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/JErrorActivity$1;->this$0:Lcom/rockrobo/clean/JErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/clean/JErrorActivity$1;->this$0:Lcom/rockrobo/clean/JErrorActivity;

    invoke-virtual {p1}, Lcom/rockrobo/clean/JErrorActivity;->finish()V

    return-void
.end method
