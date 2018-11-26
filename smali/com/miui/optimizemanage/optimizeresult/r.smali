.class final Lcom/miui/optimizemanage/optimizeresult/r;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source ""


# instance fields
.field final synthetic xf:Lcom/miui/optimizemanage/optimizeresult/d;

.field final synthetic xg:Lcom/miui/optimizemanage/OptimizemanageMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/optimizeresult/d;Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/r;->xf:Lcom/miui/optimizemanage/optimizeresult/d;

    iput-object p2, p0, Lcom/miui/optimizemanage/optimizeresult/r;->xg:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/r;->xf:Lcom/miui/optimizemanage/optimizeresult/d;

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/r;->xg:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    invoke-static {v0, v1}, Lcom/miui/optimizemanage/optimizeresult/d;->yk(Lcom/miui/optimizemanage/optimizeresult/d;Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V

    :cond_0
    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeg(Landroid/content/Context;)V

    return-void
.end method
