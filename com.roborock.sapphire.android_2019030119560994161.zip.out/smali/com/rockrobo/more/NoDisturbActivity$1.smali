.class Lcom/rockrobo/more/NoDisturbActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/NoDisturbActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/NoDisturbActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/NoDisturbActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$1;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-static {}, Lcom/rockrobo/more/NoDisturbActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check state changed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$1;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    invoke-static {p1}, Lcom/rockrobo/more/NoDisturbActivity;->access$100(Lcom/rockrobo/more/NoDisturbActivity;)V

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$1;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    invoke-static {p1}, Lcom/rockrobo/more/NoDisturbActivity;->access$200(Lcom/rockrobo/more/NoDisturbActivity;)V

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$1;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    iput-boolean p2, p1, Lcom/rockrobo/more/NoDisturbActivity;->switchOn:Z

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$1;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    iget-boolean p1, p1, Lcom/rockrobo/more/NoDisturbActivity;->switchOn:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$1;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/NoDisturbActivity;->closeDnd()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$1;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    iget-object p2, p0, Lcom/rockrobo/more/NoDisturbActivity$1;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    iget p2, p2, Lcom/rockrobo/more/NoDisturbActivity;->startHour:I

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity$1;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    iget v0, v0, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    iget-object v1, p0, Lcom/rockrobo/more/NoDisturbActivity$1;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    iget v1, v1, Lcom/rockrobo/more/NoDisturbActivity;->endHour:I

    iget-object v2, p0, Lcom/rockrobo/more/NoDisturbActivity$1;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    iget v2, v2, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/rockrobo/more/NoDisturbActivity;->setTime(IIII)V

    return-void
.end method
