.class final Lcom/miui/common/datamodel/F;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source ""


# instance fields
.field final synthetic aBo:Lcom/miui/common/datamodel/Advertisement;


# direct methods
.method constructor <init>(Lcom/miui/common/datamodel/Advertisement;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/datamodel/F;->aBo:Lcom/miui/common/datamodel/Advertisement;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/common/datamodel/F;->aBo:Lcom/miui/common/datamodel/Advertisement;

    invoke-static {v0}, Lcom/miui/common/datamodel/Advertisement;->aKP(Lcom/miui/common/datamodel/Advertisement;)V

    :cond_0
    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeg(Landroid/content/Context;)V

    return-void
.end method
