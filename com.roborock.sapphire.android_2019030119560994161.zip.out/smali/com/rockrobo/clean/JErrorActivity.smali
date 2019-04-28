.class public Lcom/rockrobo/clean/JErrorActivity;
.super Lcom/rockrobo/more/MoreBaseActivity;


# static fields
.field public static final ERROR_INTENT_CODE_KEY:Ljava/lang/String; = "ErrorCode"

.field public static final ERROR_INTENT_KEY:Ljava/lang/String; = "Error"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/clean/JErrorActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/clean/JErrorActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/MoreBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityTitle()I
    .locals 1

    const v0, 0x7f0a0075

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f080005

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f060016

    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/JErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/rockrobo/clean/JErrorActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/clean/JErrorActivity$1;-><init>(Lcom/rockrobo/clean/JErrorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/rockrobo/clean/JErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/rockrobo/clean/JErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ErrorCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/rockrobo/clean/JErrorActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",error code:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f060048

    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/JErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/rockrobo/utils/Errors;->getErrorTitle(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f060046

    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/JErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/rockrobo/utils/Errors;->getErrorContent(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/rockrobo/clean/JErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0a01a4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/rockrobo/clean/JErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a01a5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f060109

    invoke-virtual {p0, v3}, Lcom/rockrobo/clean/JErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/rockrobo/clean/JErrorActivity;->activity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p1, v1}, Lcom/rockrobo/utils/RRUtils;->buildVirtualWallSpannableString(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->isCNServer()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const p1, 0x7f060045

    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/JErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    new-instance v1, Lcom/rockrobo/clean/error/OpenGLErrorRenderer;

    invoke-direct {v1, p1, v0}, Lcom/rockrobo/clean/error/OpenGLErrorRenderer;-><init>(Landroid/opengl/GLSurfaceView;I)V

    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void

    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
