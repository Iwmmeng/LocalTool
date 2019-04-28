.class Lcom/rockrobo/clean/CleanActivity$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/clean/CleanActivity;->setupCleanButton()V
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

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$11;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/rockrobo/clean/CleanActivity;->access$1300()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clean button clicked, status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rockrobo/clean/CleanActivity$11;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v1}, Lcom/rockrobo/clean/CleanActivity;->access$2200(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/clean/RobotStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/rockrobo/clean/CleanActivity$21;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$11;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$2200(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/clean/RobotStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$11;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-virtual {p1}, Lcom/rockrobo/clean/CleanActivity;->clean()V

    return-void

    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$11;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$2300(Lcom/rockrobo/clean/CleanActivity;)V
    :try_end_0
    .catch Lcom/rockrobo/presenter/PresenterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/rockrobo/presenter/PresenterException;->printStackTrace()V

    invoke-static {}, Lcom/rockrobo/clean/CleanActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException, message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/rockrobo/presenter/PresenterException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$11;->this$0:Lcom/rockrobo/clean/CleanActivity;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$11;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {v0}, Lcom/rockrobo/clean/CleanActivity;->access$2200(Lcom/rockrobo/clean/CleanActivity;)Lcom/rockrobo/clean/RobotStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rockrobo/clean/CleanActivity;->pause(Lcom/rockrobo/clean/RobotStatus;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
