.class Lcom/rockrobo/clean/CleanActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/clean/CleanActivity;->setupChargeButton()V
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

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$10;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object p1, Lcom/rockrobo/clean/CleanActivity$21;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$10;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$2200(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/clean/RobotStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$10;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-virtual {p1}, Lcom/rockrobo/clean/CleanActivity;->charge()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$10;->this$0:Lcom/rockrobo/clean/CleanActivity;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->BACK_TO_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {p1, v0}, Lcom/rockrobo/clean/CleanActivity;->pause(Lcom/rockrobo/clean/RobotStatus;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
