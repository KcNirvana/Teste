.class final Lcom/miui/optimizemanage/optimizeresult/u;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source ""


# instance fields
.field final synthetic xl:Lcom/miui/optimizemanage/optimizeresult/o;

.field final synthetic xm:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

.field final synthetic xn:Lcom/miui/optimizemanage/optimizeresult/o;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/optimizeresult/o;Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/o;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/u;->xl:Lcom/miui/optimizemanage/optimizeresult/o;

    iput-object p2, p0, Lcom/miui/optimizemanage/optimizeresult/u;->xm:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    iput-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/u;->xn:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 3

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/u;->xl:Lcom/miui/optimizemanage/optimizeresult/o;

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/u;->xm:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/u;->xn:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-static {v0, v1, v2}, Lcom/miui/optimizemanage/optimizeresult/o;->zf(Lcom/miui/optimizemanage/optimizeresult/o;Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/o;)V

    :cond_0
    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeg(Landroid/content/Context;)V

    return-void
.end method
