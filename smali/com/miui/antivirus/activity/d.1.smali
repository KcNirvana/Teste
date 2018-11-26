.class Lcom/miui/antivirus/activity/d;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic asa:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/d;->asa:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/d;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/activity/d;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    const/4 v5, 0x1

    const-wide/16 v6, 0x200

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/activity/d;->asa:Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {v0}, Lcom/miui/antivirus/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/miui/permcenter/e;->SE(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/activity/d;->asa:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v1}, Lcom/miui/antivirus/activity/MainActivity;->axD(Lcom/miui/antivirus/activity/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v6, v7, v5, v3}, Lcom/miui/permission/a;->bBL(JI[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/activity/d;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "start_by_safepay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "pl.zdunex25.updater"

    const-string/jumbo v2, "pl.zdunex25.updater.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "user_action"

    const-string/jumbo v2, "user_action_update_full"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antivirus/activity/d;->asa:Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {v1}, Lcom/miui/antivirus/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/activity/d;->asa:Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/d;->asa:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axD(Lcom/miui/antivirus/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070579

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
