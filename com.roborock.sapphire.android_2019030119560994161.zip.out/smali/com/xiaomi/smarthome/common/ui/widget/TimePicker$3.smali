.class Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;
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

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;II)V
    .locals 1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->access$300(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getMinValue()I

    move-result p1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-static {v0}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->access$300(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getMaxValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->access$400(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-virtual {p2}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->is24HourView()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iget-object p3, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-static {p3}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->access$000(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)Z

    move-result p3

    :goto_0
    xor-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->access$002(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;Z)Z

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-static {p2}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->access$100(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)V

    :cond_0
    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-static {p2}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->access$400(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    :cond_1
    if-ne p2, p1, :cond_2

    if-ne p3, v0, :cond_2

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->access$400(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;->getValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-virtual {p2}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->is24HourView()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    iget-object p3, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-static {p3}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->access$000(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)Z

    move-result p3

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$3;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-static {p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->access$200(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)V

    return-void
.end method
