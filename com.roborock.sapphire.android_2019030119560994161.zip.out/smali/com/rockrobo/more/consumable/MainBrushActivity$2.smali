.class Lcom/rockrobo/more/consumable/MainBrushActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/consumable/MainBrushActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/consumable/MainBrushActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/consumable/MainBrushActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/consumable/MainBrushActivity$2;->this$0:Lcom/rockrobo/more/consumable/MainBrushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/more/consumable/MainBrushActivity$2;->this$0:Lcom/rockrobo/more/consumable/MainBrushActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/consumable/MainBrushActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a010b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/consumable/MainBrushActivity$2;->this$0:Lcom/rockrobo/more/consumable/MainBrushActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/consumable/MainBrushActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/rockrobo/utils/RRUtils;->gotoPage(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method
