.class final Lcom/miui/privacyapps/ui/p;
.super Lmiui/process/IForegroundInfoListener$Stub;
.source ""


# instance fields
.field final synthetic bbZ:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/p;->bbZ:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-direct {p0}, Lmiui/process/IForegroundInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundInfoChanged(Lmiui/process/ForegroundInfo;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/privacyapps/ui/p;->bbZ:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->byj(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Lcom/miui/privacyapps/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/privacyapps/ui/p;->bbZ:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-static {v1}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->byj(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Lcom/miui/privacyapps/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/privacyapps/d;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/privacyapps/ui/p;->bbZ:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    iget-object v1, p0, Lcom/miui/privacyapps/ui/p;->bbZ:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-static {v1}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->byj(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Lcom/miui/privacyapps/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->byn(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;Lcom/miui/privacyapps/d;Z)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/p;->bbZ:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-static {v0, v3}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bym(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;Lcom/miui/privacyapps/d;)Lcom/miui/privacyapps/d;

    :cond_0
    return-void
.end method
