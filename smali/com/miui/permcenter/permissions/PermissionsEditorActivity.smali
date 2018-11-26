.class public Lcom/miui/permcenter/permissions/PermissionsEditorActivity;
.super Lcom/miui/common/a/c;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/miui/permcenter/f;


# instance fields
.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method static synthetic PQ(Lcom/miui/permcenter/permissions/PermissionsEditorActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->mPkgName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public PO(Landroid/content/Loader;Lcom/miui/permcenter/permissions/a;)V
    .locals 13

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v1, p2, Lcom/miui/permcenter/permissions/a;->OX:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v0

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/i;

    new-instance v10, Landroid/preference/PreferenceCategory;

    invoke-direct {v10, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    const/4 v7, 0x0

    :goto_2
    iget-object v1, v0, Lcom/miui/permcenter/permissions/i;->Pv:Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v1}, Lcom/miui/permission/PermissionGroupInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, v0, Lcom/miui/permcenter/permissions/i;->Pw:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/permission/PermissionInfo;

    invoke-virtual {v6}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p2, Lcom/miui/permcenter/permissions/a;->OZ:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    new-instance v12, Lcom/miui/permcenter/permissions/e;

    invoke-direct {v12, p0}, Lcom/miui/permcenter/permissions/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v4}, Lcom/miui/permcenter/permissions/e;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Lcom/miui/permission/PermissionInfo;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/miui/permcenter/permissions/e;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/miui/permcenter/permissions/e;->Qg(I)V

    new-instance v0, Lcom/miui/permcenter/permissions/o;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/permcenter/permissions/o;-><init>(Lcom/miui/permcenter/permissions/PermissionsEditorActivity;JLjava/lang/String;Ljava/lang/Integer;Lcom/miui/permission/PermissionInfo;)V

    invoke-virtual {v12, v0}, Lcom/miui/permcenter/permissions/e;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-boolean v0, p2, Lcom/miui/permcenter/permissions/a;->OY:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/miui/permcenter/permissions/e;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->mPkgName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/enterprise/ApplicationHelper;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Enterprise"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission edit for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is restricted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/miui/permcenter/permissions/e;->setEnabled(Z)V

    :cond_2
    invoke-virtual {v10, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    move v1, v7

    goto/16 :goto_1

    :cond_5
    return-void

    :cond_6
    move v7, v1

    goto/16 :goto_2
.end method

.method public PP(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x6e

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050021

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_pkgname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->mPkgName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.android.cts.permissionapp"

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->mPkgName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v5, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v1, v5, v4, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_2
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    new-instance v0, Lcom/miui/permcenter/permissions/n;

    invoke-direct {v0, p0, p0}, Lcom/miui/permcenter/permissions/n;-><init>(Lcom/miui/permcenter/permissions/PermissionsEditorActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/permcenter/permissions/a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->PO(Landroid/content/Loader;Lcom/miui/permcenter/permissions/a;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method
