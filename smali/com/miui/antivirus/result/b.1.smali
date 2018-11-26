.class Lcom/miui/antivirus/result/b;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic amr:Lcom/miui/antivirus/result/ScanResultFrame;


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/result/ScanResultFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/b;->amr:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/result/ScanResultFrame;Lcom/miui/antivirus/result/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/b;-><init>(Lcom/miui/antivirus/result/ScanResultFrame;)V

    return-void
.end method


# virtual methods
.method protected asg(Lcom/miui/antivirus/result/DataModel;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->amr:Lcom/miui/antivirus/result/ScanResultFrame;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/antivirus/result/ScanResultFrame;->asc(Lcom/miui/antivirus/result/ScanResultFrame;Z)Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->amr:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->arX(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->amr:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-static {v1}, Lcom/miui/antivirus/result/ScanResultFrame;->arZ(Lcom/miui/antivirus/result/ScanResultFrame;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/result/i;->addAll(Ljava/util/Collection;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/antivirus/result/DataModel;->asX()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->amr:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->asa(Lcom/miui/antivirus/result/ScanResultFrame;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "initSucess"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/result/b;->amr:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-static {v0, p1}, Lcom/miui/antivirus/result/ScanResultFrame;->asb(Lcom/miui/antivirus/result/ScanResultFrame;Lcom/miui/antivirus/result/DataModel;)Lcom/miui/antivirus/result/DataModel;

    invoke-virtual {p1}, Lcom/miui/antivirus/result/DataModel;->asY()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->amr:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-static {v0, v2}, Lcom/miui/antivirus/result/ScanResultFrame;->asd(Lcom/miui/antivirus/result/ScanResultFrame;Z)Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/antivirus/result/b;->amr:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-static {v1, v0}, Lcom/miui/antivirus/result/ScanResultFrame;->ase(Lcom/miui/antivirus/result/ScanResultFrame;Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->amr:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-static {v1}, Lcom/miui/antivirus/result/ScanResultFrame;->arZ(Lcom/miui/antivirus/result/ScanResultFrame;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->amr:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-static {v1}, Lcom/miui/antivirus/result/ScanResultFrame;->arX(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/result/i;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/miui/antivirus/result/DataModel;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/miui/antivirus/result/DataModel;->asV(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/miui/antivirus/result/DataModel;->asW(Lorg/json/JSONObject;Z)Lcom/miui/antivirus/result/DataModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CleanResultFrame"

    const-string/jumbo v2, "msg"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/result/b;->doInBackground([Ljava/lang/Object;)Lcom/miui/antivirus/result/DataModel;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/antivirus/result/DataModel;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/result/b;->asg(Lcom/miui/antivirus/result/DataModel;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->amr:Lcom/miui/antivirus/result/ScanResultFrame;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/antivirus/result/ScanResultFrame;->asc(Lcom/miui/antivirus/result/ScanResultFrame;Z)Z

    return-void
.end method
