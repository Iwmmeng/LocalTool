.class Lcom/rockrobo/clean/CleanActivity$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/clean/CleanActivity;->setupModeBarButton(ILcom/rockrobo/ui/HeartBeatView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/clean/CleanActivity;

.field final synthetic val$buttonId:I


# direct methods
.method constructor <init>(Lcom/rockrobo/clean/CleanActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$8;->this$0:Lcom/rockrobo/clean/CleanActivity;

    iput p2, p0, Lcom/rockrobo/clean/CleanActivity$8;->val$buttonId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$8;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$1900(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/ui/ListHeartbeatView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rockrobo/ui/ListHeartbeatView;->startBeat()V

    sget-object p1, Lcom/rockrobo/common/CleanMode;->STANDARD:Lcom/rockrobo/common/CleanMode;

    iget v0, p0, Lcom/rockrobo/clean/CleanActivity$8;->val$buttonId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/rockrobo/common/CleanMode;->STANDARD:Lcom/rockrobo/common/CleanMode;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/rockrobo/common/CleanMode;->SILENT:Lcom/rockrobo/common/CleanMode;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/rockrobo/common/CleanMode;->POWER:Lcom/rockrobo/common/CleanMode;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/rockrobo/common/CleanMode;->MOP:Lcom/rockrobo/common/CleanMode;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lcom/rockrobo/common/CleanMode;->FULL:Lcom/rockrobo/common/CleanMode;

    :goto_0
    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$8;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0, p1}, Lcom/rockrobo/clean/CleanActivity;->access$2000(Lcom/rockrobo/clean/CleanActivity;Lcom/rockrobo/common/CleanMode;)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$8;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$500(Lcom/rockrobo/clean/CleanActivity;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f060074
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
