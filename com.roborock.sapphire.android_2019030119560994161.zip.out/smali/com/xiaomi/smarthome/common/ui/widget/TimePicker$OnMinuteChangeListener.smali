.class Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnMinuteChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnMinuteChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnMinuteChangeListener;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/xiaomi/smarthome/common/ui/widget/NumberPicker;II)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker$OnMinuteChangeListener;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/TimePicker;->callOnTimeChanged()V

    return-void
.end method
