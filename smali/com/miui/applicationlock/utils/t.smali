.class final Lcom/miui/applicationlock/utils/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic abH:Lcom/miui/applicationlock/utils/d;

.field final synthetic abI:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

.field final synthetic abJ:Ljava/lang/String;

.field final synthetic abK:Ljava/util/List;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/utils/d;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/t;->abH:Lcom/miui/applicationlock/utils/d;

    iput-object p2, p0, Lcom/miui/applicationlock/utils/t;->abI:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    iput-object p3, p0, Lcom/miui/applicationlock/utils/t;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/applicationlock/utils/t;->abJ:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/applicationlock/utils/t;->abK:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/applicationlock/utils/t;->abH:Lcom/miui/applicationlock/utils/d;

    invoke-static {p2}, Lcom/xiaomi/ad/feedback/IAdFeedbackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/d;->aen(Lcom/miui/applicationlock/utils/d;Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    iget-object v0, p0, Lcom/miui/applicationlock/utils/t;->abH:Lcom/miui/applicationlock/utils/d;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/d;->aem(Lcom/miui/applicationlock/utils/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/utils/t;->abH:Lcom/miui/applicationlock/utils/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeo(Lcom/miui/applicationlock/utils/d;Z)Z

    iget-object v0, p0, Lcom/miui/applicationlock/utils/t;->abH:Lcom/miui/applicationlock/utils/d;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/d;->ael(Lcom/miui/applicationlock/utils/d;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/utils/t;->abI:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    iget-object v2, p0, Lcom/miui/applicationlock/utils/t;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/applicationlock/utils/t;->abJ:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/applicationlock/utils/t;->abK:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaomi/ad/feedback/IAdFeedbackService;->showFeedbackWindowAndTrackResultForMultiAds(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/applicationlock/utils/d;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "service connected exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/utils/t;->abH:Lcom/miui/applicationlock/utils/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/d;->aen(Lcom/miui/applicationlock/utils/d;Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    return-void
.end method
