.class Lcom/rockrobo/more/VolumeAdjustActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity$2;->this$0:Lcom/rockrobo/more/VolumeAdjustActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity$2;->this$0:Lcom/rockrobo/more/VolumeAdjustActivity;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {v0, p1}, Lcom/rockrobo/more/VolumeAdjustActivity;->access$002(Lcom/rockrobo/more/VolumeAdjustActivity;I)I

    iget-object p1, p0, Lcom/rockrobo/more/VolumeAdjustActivity$2;->this$0:Lcom/rockrobo/more/VolumeAdjustActivity;

    iget-object v0, p0, Lcom/rockrobo/more/VolumeAdjustActivity$2;->this$0:Lcom/rockrobo/more/VolumeAdjustActivity;

    invoke-static {v0}, Lcom/rockrobo/more/VolumeAdjustActivity;->access$000(Lcom/rockrobo/more/VolumeAdjustActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/rockrobo/more/VolumeAdjustActivity;->access$100(Lcom/rockrobo/more/VolumeAdjustActivity;I)V

    return-void
.end method
