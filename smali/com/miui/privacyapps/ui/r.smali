.class final Lcom/miui/privacyapps/ui/r;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic bcb:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/r;->bcb:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/r;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/r;->bcb:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v0, p0, Lcom/miui/privacyapps/ui/r;->bcb:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->byl(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Lmiui/security/SecurityManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/security/SecurityManager;->getAllPrivacyApps(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/privacyapps/ui/r;->bcb:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-static {v5, v0, v3}, Lcom/miui/common/b/k;->aID(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/miui/privacyapps/d;

    invoke-direct {v5}, Lcom/miui/privacyapps/d;-><init>()V

    invoke-virtual {v5, v0}, Lcom/miui/privacyapps/d;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/miui/privacyapps/d;->byP(I)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/miui/privacyapps/d;->byO(Z)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method
