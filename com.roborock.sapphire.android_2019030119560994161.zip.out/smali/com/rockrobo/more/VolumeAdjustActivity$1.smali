.class Lcom/rockrobo/more/VolumeAdjustActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/VolumeAdjustActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/VolumeAdjustActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/VolumeAdjustActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity$1;->this$0:Lcom/rockrobo/more/VolumeAdjustActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity$1;->this$0:Lcom/rockrobo/more/VolumeAdjustActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/VolumeAdjustActivity;->finish()V

    return-void
.end method
