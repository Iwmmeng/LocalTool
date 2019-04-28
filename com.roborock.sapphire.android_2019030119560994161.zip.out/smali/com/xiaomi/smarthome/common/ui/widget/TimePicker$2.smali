.class Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$2;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;II)V
    .locals 1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$2;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->is24HourView()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xc

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    if-eq p3, p1, :cond_1

    :cond_0
    if-ne p2, p1, :cond_2

    if-ne p3, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$2;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$2;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-static {p2}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->access$000(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->access$002(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;Z)Z

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$2;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->access$100(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)V

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$2;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->access$200(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)V

    return-void
.end method
