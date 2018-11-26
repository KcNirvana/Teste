.class final Lcom/miui/gamebooster/gamead/i;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source ""


# instance fields
.field final synthetic kA:Lcom/miui/gamebooster/gamead/Advertisement;

.field final synthetic kB:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gamead/Advertisement;Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gamead/i;->kA:Lcom/miui/gamebooster/gamead/Advertisement;

    iput-object p2, p0, Lcom/miui/gamebooster/gamead/i;->kB:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 2

    const-string/jumbo v0, "GameAdAdapter"

    const-string/jumbo v1, "closeAD"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gamead/i;->kB:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeg(Landroid/content/Context;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gamead/i;->kA:Lcom/miui/gamebooster/gamead/Advertisement;

    iget-object v1, p0, Lcom/miui/gamebooster/gamead/i;->kB:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gamead/Advertisement;->kO(Lcom/miui/gamebooster/gamead/Advertisement;Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    return-void
.end method
