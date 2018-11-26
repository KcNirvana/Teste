.class Lcom/miui/securityscan/model/manualitem/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic Ay:Lcom/miui/securityscan/model/manualitem/FirstAidModel;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/manualitem/FirstAidModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/c;->Ay:Lcom/miui/securityscan/model/manualitem/FirstAidModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/c;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/c;->Ay:Lcom/miui/securityscan/model/manualitem/FirstAidModel;

    invoke-static {v0}, Lcom/miui/securityscan/model/manualitem/FirstAidModel;->Bv(Lcom/miui/securityscan/model/manualitem/FirstAidModel;)Lcom/miui/firstaidkit/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/firstaidkit/c;->vP()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/c;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
