.class final Lcom/miui/antivirus/s;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic awM:Lcom/miui/antivirus/j;

.field final synthetic awN:Lcom/miui/antivirus/model/DangerousInfo;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/j;Ljava/lang/String;Lcom/miui/antivirus/model/DangerousInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/s;->awM:Lcom/miui/antivirus/j;

    iput-object p2, p0, Lcom/miui/antivirus/s;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/antivirus/s;->awN:Lcom/miui/antivirus/model/DangerousInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/s;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/s;->awM:Lcom/miui/antivirus/j;

    invoke-static {v0}, Lcom/miui/antivirus/j;->aEc(Lcom/miui/antivirus/j;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/miui/antivirus/s;->val$packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/antivirus/s;->awM:Lcom/miui/antivirus/j;

    iget-object v3, p0, Lcom/miui/antivirus/s;->awN:Lcom/miui/antivirus/model/DangerousInfo;

    invoke-static {v2, v3, v0}, Lcom/miui/antivirus/j;->aEf(Lcom/miui/antivirus/j;Lcom/miui/antivirus/model/DangerousInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/s;->awM:Lcom/miui/antivirus/j;

    iget-object v2, p0, Lcom/miui/antivirus/s;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/miui/antivirus/j;->aEi(Lcom/miui/antivirus/j;Ljava/lang/String;)V

    const-string/jumbo v0, "DangerousService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove invalid package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/s;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "DangerousService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPackageInfo NameNotFoundException pkg :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/s;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method
