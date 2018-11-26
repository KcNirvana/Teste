.class final Lcom/miui/privacyapps/ui/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic bbL:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/g;->bbL:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/privacyapps/ui/g;->bbL:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-virtual {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/g;->bbL:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxU(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)Lcom/miui/privacyapps/ui/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/privacyapps/ui/g;->bbL:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-static {v1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxT(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/privacyapps/ui/b;->bye(Ljava/util/ArrayList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/privacyapps/ui/g;->bbL:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-static {v1, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->byc(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
