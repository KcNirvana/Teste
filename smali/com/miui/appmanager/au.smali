.class final Lcom/miui/appmanager/au;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aXa:Lcom/miui/appmanager/AppManagerMainActivity;

.field final synthetic aXb:Ljava/util/List;

.field final synthetic aXc:Landroid/app/INotificationManager;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;Landroid/app/INotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/au;->aXa:Lcom/miui/appmanager/AppManagerMainActivity;

    iput-object p2, p0, Lcom/miui/appmanager/au;->aXb:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/appmanager/au;->aXc:Landroid/app/INotificationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/au;->aXa:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v1}, Lcom/miui/appmanager/AppManagerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    move-result-object v4

    move v2, v3

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/au;->aXb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/au;->aXb:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    :try_start_0
    iget-object v6, p0, Lcom/miui/appmanager/au;->aXc:Landroid/app/INotificationManager;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v9, 0x1

    invoke-interface {v6, v7, v8, v9}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v6, p0, Lcom/miui/appmanager/au;->aXa:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v6}, Lcom/miui/appmanager/AppManagerMainActivity;->bot(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/appmanager/au;->aXa:Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v7, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boN(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    iget-object v1, p0, Lcom/miui/appmanager/au;->aXa:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AppManagerMainActivity;->bot(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6, v3, v10}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/miui/appmanager/au;->aXa:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AppManagerMainActivity;->bol(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/r;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/appmanager/r;->aUB:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/appmanager/model/i;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v10}, Lcom/miui/appmanager/model/i;->bhn(Z)V

    :cond_0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_1
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v6, 0x2710

    if-le v0, v6, :cond_3

    :cond_2
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v0, v6}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->isAppRestrictBackground(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v0, v3}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->setAppRestrictBackground(IZ)V

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/miui/appmanager/au;->aXa:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v4}, Lcom/miui/appmanager/AppManagerMainActivity;->bot(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v11}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    iget-object v0, p0, Lcom/miui/appmanager/au;->aXa:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bot(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-object v1

    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/au;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/au;->aXa:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bop(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/appmanager/p;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/au;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
