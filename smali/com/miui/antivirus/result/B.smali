.class final Lcom/miui/antivirus/result/B;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source ""


# instance fields
.field final synthetic anL:Lcom/miui/antivirus/result/Advertisement;

.field final synthetic anM:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/Advertisement;Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/B;->anL:Lcom/miui/antivirus/result/Advertisement;

    iput-object p2, p0, Lcom/miui/antivirus/result/B;->anM:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/result/B;->anL:Lcom/miui/antivirus/result/Advertisement;

    iget-object v1, p0, Lcom/miui/antivirus/result/B;->anM:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0, v1}, Lcom/miui/antivirus/result/Advertisement;->asv(Lcom/miui/antivirus/result/Advertisement;Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/result/B;->anM:Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {v1}, Lcom/miui/antivirus/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeg(Landroid/content/Context;)V

    return-void
.end method
