.class public Lcom/xiaomi/ad/feedback/DislikeManagerV2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DislikeManagerV2"

.field private static volatile sManager:Lcom/xiaomi/ad/feedback/DislikeManagerV2;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private buildIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ad.FEEDBACK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.systemAdSolution"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/ad/feedback/DislikeManagerV2;
    .locals 2

    sget-object v0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->sManager:Lcom/xiaomi/ad/feedback/DislikeManagerV2;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/ad/feedback/DislikeManagerV2;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->sManager:Lcom/xiaomi/ad/feedback/DislikeManagerV2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/feedback/DislikeManagerV2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->sManager:Lcom/xiaomi/ad/feedback/DislikeManagerV2;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->sManager:Lcom/xiaomi/ad/feedback/DislikeManagerV2;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isSupported()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public showDislikeWindow(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;

    iget-object v2, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->mContext:Landroid/content/Context;

    const-class v3, Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;-><init>(Lcom/xiaomi/ad/feedback/DislikeManagerV2;Landroid/content/Context;Ljava/lang/Class;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;->invokeAsync(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public showDislikeWindow(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/ad/feedback/IAdFeedbackListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;

    iget-object v2, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->mContext:Landroid/content/Context;

    const-class v3, Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;-><init>(Lcom/xiaomi/ad/feedback/DislikeManagerV2;Landroid/content/Context;Ljava/lang/Class;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;->invokeAsync(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
