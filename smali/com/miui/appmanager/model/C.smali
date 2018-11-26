.class final Lcom/miui/appmanager/model/C;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source ""


# instance fields
.field final synthetic aRa:Lcom/miui/appmanager/model/c;

.field final synthetic aRb:Lcom/miui/appmanager/AppManagerMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/model/c;Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/C;->aRa:Lcom/miui/appmanager/model/c;

    iput-object p2, p0, Lcom/miui/appmanager/model/C;->aRb:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/model/C;->aRa:Lcom/miui/appmanager/model/c;

    iget-object v1, p0, Lcom/miui/appmanager/model/C;->aRb:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0, v1}, Lcom/miui/appmanager/model/c;->bha(Lcom/miui/appmanager/model/c;Lcom/miui/appmanager/AppManagerMainActivity;)V

    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/model/C;->aRb:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v1}, Lcom/miui/appmanager/AppManagerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeg(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
