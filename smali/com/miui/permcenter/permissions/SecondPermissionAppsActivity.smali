.class public Lcom/miui/permcenter/permissions/SecondPermissionAppsActivity;
.super Lcom/miui/common/a/c;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const v5, 0x7f0706ed

    const v4, 0x7f0706eb

    const/4 v3, -0x1

    const/4 v9, 0x1

    invoke-super {p0, p1}, Lcom/miui/common/a/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050023

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/permissions/SecondPermissionAppsActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/SecondPermissionAppsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_group_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/SecondPermissionAppsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra_permission_list"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eq v0, v3, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/SecondPermissionAppsActivity;->finish()V

    :cond_1
    if-ne v0, v9, :cond_3

    invoke-virtual {p0, v4}, Lcom/miui/permcenter/permissions/SecondPermissionAppsActivity;->setTitle(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/SecondPermissionAppsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-direct {v3, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permission/PermissionInfo;

    new-instance v2, Lmiui/preference/ValuePreference;

    invoke-direct {v2, p0}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v9}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmiui/preference/ValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->bBY()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/SecondPermissionAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f0c0035

    invoke-virtual {v5, v7, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v5, ":miui:starting_window_label"

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "extra_permission_id"

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v5, "extra_permission_name"

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "extra_permission_flags"

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->bBX()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Lmiui/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v5}, Lcom/miui/permcenter/permissions/SecondPermissionAppsActivity;->setTitle(I)V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_1

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
