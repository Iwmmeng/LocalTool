.class Lcom/rockrobo/more/timer/SetTimerActivity$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/timer/SetTimerActivity;->showSubRepeatDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/timer/SetTimerActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/timer/SetTimerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$13;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/more/timer/SetTimerActivity$13;->this$0:Lcom/rockrobo/more/timer/SetTimerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/timer/SetTimerActivity;->access$2100(Lcom/rockrobo/more/timer/SetTimerActivity;)[Z

    move-result-object p1

    aput-boolean p3, p1, p2

    return-void
.end method
