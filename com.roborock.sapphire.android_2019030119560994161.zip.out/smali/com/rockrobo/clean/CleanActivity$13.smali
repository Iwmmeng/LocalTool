.class Lcom/rockrobo/clean/CleanActivity$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/clean/CleanActivity;->pause(Lcom/rockrobo/clean/RobotStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/clean/CleanActivity;

.field final synthetic val$robotStatus:Lcom/rockrobo/clean/RobotStatus;


# direct methods
.method constructor <init>(Lcom/rockrobo/clean/CleanActivity;Lcom/rockrobo/clean/RobotStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$13;->this$0:Lcom/rockrobo/clean/CleanActivity;

    iput-object p2, p0, Lcom/rockrobo/clean/CleanActivity$13;->val$robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/rockrobo/clean/CleanActivity$13;->this$0:Lcom/rockrobo/clean/CleanActivity;

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$13;->val$robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-static {p2, p1, v0}, Lcom/rockrobo/clean/CleanActivity;->access$2400(Lcom/rockrobo/clean/CleanActivity;Landroid/content/DialogInterface;Lcom/rockrobo/clean/RobotStatus;)V

    return-void
.end method
