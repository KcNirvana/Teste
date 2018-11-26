.class public Lcom/miui/privacyapps/ui/PrivacyAppsHelper;
.super Lcom/miui/common/a/d;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/d;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsHelper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsHelper;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/miui/privacyapps/b/a;

    invoke-direct {v0, p0}, Lcom/miui/privacyapps/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/privacyapps/b/a;->byx()Z

    move-result v1

    invoke-virtual {v0}, Lcom/miui/privacyapps/b/a;->byy()I

    move-result v0

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/miui/privacyapps/ui/PrivacyAppsHelper;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-static {}, Lcom/miui/privacyapps/a/a;->byq()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsHelper;->finish()V

    goto :goto_0
.end method
