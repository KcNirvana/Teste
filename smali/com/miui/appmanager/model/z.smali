.class final Lcom/miui/appmanager/model/z;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source ""


# instance fields
.field final synthetic aQU:Lcom/miui/appmanager/model/a;

.field final synthetic aQV:Lcom/miui/appmanager/AppManagerMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/model/a;Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/z;->aQU:Lcom/miui/appmanager/model/a;

    iput-object p2, p0, Lcom/miui/appmanager/model/z;->aQV:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/model/z;->aQU:Lcom/miui/appmanager/model/a;

    iget-object v1, p0, Lcom/miui/appmanager/model/z;->aQV:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0, v1}, Lcom/miui/appmanager/model/a;->bgQ(Lcom/miui/appmanager/model/a;Lcom/miui/appmanager/AppManagerMainActivity;)V

    :cond_0
    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeg(Landroid/content/Context;)V

    return-void
.end method
