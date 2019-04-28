.class Lcom/rockrobo/more/NoDisturbActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$4;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$4;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    invoke-static {p1}, Lcom/rockrobo/more/NoDisturbActivity;->access$100(Lcom/rockrobo/more/NoDisturbActivity;)V

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$4;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    invoke-static {p1}, Lcom/rockrobo/more/NoDisturbActivity;->access$200(Lcom/rockrobo/more/NoDisturbActivity;)V

    iget-object p1, p0, Lcom/rockrobo/more/NoDisturbActivity$4;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    iget-object v0, p0, Lcom/rockrobo/more/NoDisturbActivity$4;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    iget v0, v0, Lcom/rockrobo/more/NoDisturbActivity;->startHour:I

    iget-object v1, p0, Lcom/rockrobo/more/NoDisturbActivity$4;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    iget v1, v1, Lcom/rockrobo/more/NoDisturbActivity;->startMinute:I

    iget-object v2, p0, Lcom/rockrobo/more/NoDisturbActivity$4;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    iget v2, v2, Lcom/rockrobo/more/NoDisturbActivity;->endHour:I

    iget-object v3, p0, Lcom/rockrobo/more/NoDisturbActivity$4;->this$0:Lcom/rockrobo/more/NoDisturbActivity;

    iget v3, v3, Lcom/rockrobo/more/NoDisturbActivity;->endMinute:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/rockrobo/more/NoDisturbActivity;->setTime(IIII)V

    return-void
.end method
