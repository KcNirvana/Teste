.class Lcom/miui/antispam/service/b/d;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private aaj:Ljava/lang/Runnable;

.field private aak:Lcom/miui/antispam/service/b/c;

.field final synthetic aal:Lcom/miui/antispam/service/b/b;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/service/b/b;Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/antispam/service/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/b/d;->aal:Lcom/miui/antispam/service/b/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/antispam/service/b/d;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/antispam/service/b/d;->aaj:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/miui/antispam/service/b/d;->aak:Lcom/miui/antispam/service/b/c;

    return-void
.end method


# virtual methods
.method protected adm(Ljava/lang/Integer;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/miui/antispam/service/b/d;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/provider/MiuiSettings$AntiSpam;->setSMSClassifierUpdateTime(Landroid/content/Context;J)V

    invoke-static {v1}, Lcom/miui/antispam/service/b/b;->adj(Z)Z

    iget-object v0, p0, Lcom/miui/antispam/service/b/d;->aaj:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/b/d;->aaj:Ljava/lang/Runnable;

    check-cast v0, Lcom/miui/antivirus/service/b;

    invoke-virtual {v0}, Lcom/miui/antivirus/service/b;->aBh()V

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/service/b/d;->aak:Lcom/miui/antispam/service/b/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/service/b/d;->aak:Lcom/miui/antispam/service/b/c;

    invoke-interface {v0, v4}, Lcom/miui/antispam/service/b/c;->Ws(I)V

    :cond_1
    const-string/jumbo v0, "SmsEngineUpdateManager"

    const-string/jumbo v1, " xiaomi engine update success !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/miui/antispam/service/b/b;->adj(Z)Z

    iget-object v0, p0, Lcom/miui/antispam/service/b/d;->aaj:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/antispam/service/b/d;->aaj:Ljava/lang/Runnable;

    check-cast v0, Lcom/miui/antivirus/service/b;

    invoke-virtual {v0}, Lcom/miui/antivirus/service/b;->aBh()V

    :cond_4
    iget-object v0, p0, Lcom/miui/antispam/service/b/d;->aak:Lcom/miui/antispam/service/b/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/antispam/service/b/d;->aak:Lcom/miui/antispam/service/b/c;

    invoke-interface {v0, v1}, Lcom/miui/antispam/service/b/c;->Ws(I)V

    :cond_5
    const-string/jumbo v0, "SmsEngineUpdateManager"

    const-string/jumbo v1, " xiaomi engine update failed !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5

    iget-object v0, p0, Lcom/miui/antispam/service/b/d;->aal:Lcom/miui/antispam/service/b/b;

    iget-object v1, p0, Lcom/miui/antispam/service/b/d;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/antispam/service/b/d;->aaj:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/miui/antispam/service/b/d;->aak:Lcom/miui/antispam/service/b/c;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/antispam/service/b/b;->adk(Lcom/miui/antispam/service/b/b;Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/antispam/service/b/c;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/service/b/d;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/service/b/d;->adm(Ljava/lang/Integer;)V

    return-void
.end method
