.class final Lcom/miui/applicationlock/aD;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aks:Lcom/miui/applicationlock/SettingLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/SettingLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/aD;->aks:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected apD(Ljava/util/List;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/aD;->aks:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apl(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/preference/ValuePreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/aD;->aks:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apl(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/preference/ValuePreference;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/applicationlock/aD;->aks:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-virtual {v0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0x7f0c0041

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/aD;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/applicationlock/aD;->aks:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v1}, Lcom/miui/applicationlock/SettingLockActivity;->apn(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/security/SecurityManager;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/applicationlock/utils/m;->afx(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/miui/applicationlock/aD;->aks:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v2}, Lcom/miui/applicationlock/SettingLockActivity;->apn(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/security/SecurityManager;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/applicationlock/utils/m;->agF(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/aD;->apD(Ljava/util/List;)V

    return-void
.end method
