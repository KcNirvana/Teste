.class public Lcom/miui/permcenter/permissions/k;
.super Landroid/preference/PreferenceFragment;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/permcenter/permissions/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/permcenter/permissions/k;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public Qv(Landroid/content/Loader;Lcom/miui/permcenter/permissions/j;)V
    .locals 12

    const v7, 0x7f0706ed

    const v6, 0x7f0706eb

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/k;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/k;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0706ea

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    iget-object v2, p2, Lcom/miui/permcenter/permissions/j;->Pz:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p2, Lcom/miui/permcenter/permissions/j;->Py:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v2, p2, Lcom/miui/permcenter/permissions/j;->Pz:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/k;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v11}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    invoke-virtual {v2, v6}, Lmiui/preference/ValuePreference;->setTitle(I)V

    const v3, 0x7f0706ec

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setSummary(I)V

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/k;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/miui/permcenter/permissions/SecondPermissionAppsActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, ":miui:starting_window_label"

    invoke-virtual {p0, v6}, Lcom/miui/permcenter/permissions/k;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "extra_permission_list"

    iget-object v5, p2, Lcom/miui/permcenter/permissions/j;->Pz:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v4, "extra_group_type"

    invoke-virtual {v3, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    iget-object v2, p2, Lcom/miui/permcenter/permissions/j;->Py:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/k;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v11}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    invoke-virtual {v2, v7}, Lmiui/preference/ValuePreference;->setTitle(I)V

    const v3, 0x7f0706ee

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setSummary(I)V

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/k;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/miui/permcenter/permissions/SecondPermissionAppsActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, ":miui:starting_window_label"

    invoke-virtual {p0, v7}, Lcom/miui/permcenter/permissions/k;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "extra_permission_list"

    iget-object v5, p2, Lcom/miui/permcenter/permissions/j;->Py:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v4, "extra_group_type"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_3
    iget-object v0, p2, Lcom/miui/permcenter/permissions/j;->Px:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/i;

    iget-object v3, v0, Lcom/miui/permcenter/permissions/i;->Pw:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/k;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v4, v0, Lcom/miui/permcenter/permissions/i;->Pv:Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v4}, Lcom/miui/permission/PermissionGroupInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, v0, Lcom/miui/permcenter/permissions/i;->Pw:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permission/PermissionInfo;

    new-instance v5, Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/k;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v11}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/preference/ValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->bBY()I

    move-result v6

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/k;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const v9, 0x7f0c0035

    invoke-virtual {v7, v9, v6, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/k;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v7, ":miui:starting_window_label"

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "extra_permission_id"

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v7, "extra_permission_name"

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "extra_permission_flags"

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->bBX()I

    move-result v0

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v5, v6}, Lmiui/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050023

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/permissions/k;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2

    new-instance v0, Lcom/miui/permcenter/permissions/l;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/permcenter/permissions/l;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/permcenter/permissions/j;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/k;->Qv(Landroid/content/Loader;Lcom/miui/permcenter/permissions/j;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x96

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClipToPadding(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lmiui/R$attr;->preferenceScreenPaddingBottom:I

    invoke-static {v1, v2}, Lmiui/util/AttributeResolver;->resolveDimension(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/k;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/k;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v5, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v1, v5, v4, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_1
    return-void
.end method
