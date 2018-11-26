.class Lcom/miui/antivirus/whitelist/b;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private atN:Lcom/miui/antivirus/model/b;

.field final synthetic atO:Lcom/miui/antivirus/whitelist/a;


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/whitelist/a;Lcom/miui/antivirus/model/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/b;->atO:Lcom/miui/antivirus/whitelist/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/antivirus/whitelist/b;->atN:Lcom/miui/antivirus/model/b;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/whitelist/b;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/b;->atN:Lcom/miui/antivirus/model/b;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->aqF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/utils/a;->auf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    return-object v9

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/whitelist/b;->atN:Lcom/miui/antivirus/model/b;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->aqJ()Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;->awc:Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    if-ne v0, v1, :cond_1

    const-string/jumbo v1, "INSTALLED_APP"

    :goto_0
    iget-object v0, p0, Lcom/miui/antivirus/whitelist/b;->atN:Lcom/miui/antivirus/model/b;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->aqH()Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    move-result-object v0

    sget-object v2, Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;->avX:Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    if-ne v0, v2, :cond_2

    const-string/jumbo v2, "riskapp"

    :goto_1
    iget-object v0, p0, Lcom/miui/antivirus/whitelist/b;->atO:Lcom/miui/antivirus/whitelist/a;

    iget-object v3, p0, Lcom/miui/antivirus/whitelist/b;->atN:Lcom/miui/antivirus/model/b;

    invoke-virtual {v3}, Lcom/miui/antivirus/model/b;->getAppLabel()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/antivirus/whitelist/b;->atN:Lcom/miui/antivirus/model/b;

    invoke-virtual {v4}, Lcom/miui/antivirus/model/b;->aqI()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/antivirus/whitelist/b;->atN:Lcom/miui/antivirus/model/b;

    invoke-virtual {v5}, Lcom/miui/antivirus/model/b;->aqF()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/antivirus/whitelist/b;->atN:Lcom/miui/antivirus/model/b;

    invoke-virtual {v6}, Lcom/miui/antivirus/model/b;->getPkgName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/antivirus/whitelist/b;->atN:Lcom/miui/antivirus/model/b;

    invoke-virtual {v7}, Lcom/miui/antivirus/model/b;->aqG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v8}, Lcom/miui/antivirus/whitelist/a;->aAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    return-object v9

    :cond_1
    const-string/jumbo v1, "UNINSTALLED_APK"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "trojan"

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/whitelist/b;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
