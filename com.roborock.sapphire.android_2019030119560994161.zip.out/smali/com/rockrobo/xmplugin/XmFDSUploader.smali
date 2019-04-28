.class public abstract Lcom/rockrobo/xmplugin/XmFDSUploader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected final fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/xmplugin/XmFDSUploader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/xmplugin/XmFDSUploader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->getRegionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockrobo/xmplugin/ServerRegionCode;->regionToServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->selectUploadFDSHost(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/xmplugin/XmFDSUploader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FDS host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/rockrobo/xmplugin/utils/FDSOperator;

    const-string v2, "https"

    invoke-direct {v1, v2, v0}, Lcom/rockrobo/xmplugin/utils/FDSOperator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/rockrobo/xmplugin/XmFDSUploader;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    return-void
.end method


# virtual methods
.method protected abstract buildBucketName()Ljava/lang/String;
.end method

.method protected abstract buildContent()Ljava/lang/String;
.end method

.method protected abstract buildObjectName()Ljava/lang/String;
.end method

.method public run()V
    .locals 4

    sget-object v0, Lcom/rockrobo/xmplugin/XmFDSUploader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "To upload share info:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/XmFDSUploader;->buildContent()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/xmplugin/XmFDSUploader;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/XmFDSUploader;->buildObjectName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/rockrobo/xmplugin/XmFDSUploader;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/rockrobo/xmplugin/XmFDSUploader;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/XmFDSUploader;->buildBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/rockrobo/xmplugin/utils/FDSOperator;->uploadObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockrobo/xmplugin/XmFDSUploader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "upload OK!"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/rockrobo/xmplugin/XmFDSUploader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "upload fail!"

    goto :goto_0

    return-void
.end method
