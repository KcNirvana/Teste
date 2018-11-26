.class Lcom/miui/securityscan/model/manualitem/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic AE:Lcom/miui/securityscan/model/manualitem/DataPurchaseModel;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/manualitem/DataPurchaseModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/h;->AE:Lcom/miui/securityscan/model/manualitem/DataPurchaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/h;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/h;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/b/e;->aHA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/h;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/b/c;->aHs(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/h;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
