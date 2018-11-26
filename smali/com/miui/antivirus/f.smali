.class Lcom/miui/antivirus/f;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private awi:Lcom/miui/antivirus/c;

.field private awj:Lorg/json/JSONArray;

.field final synthetic awk:Lcom/miui/antivirus/a;


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/a;Lcom/miui/antivirus/c;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/f;->awk:Lcom/miui/antivirus/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/antivirus/f;->awi:Lcom/miui/antivirus/c;

    iput-object p3, p0, Lcom/miui/antivirus/f;->awj:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method protected aDa(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/utils/c;

    iget v2, v0, Lcom/miui/antivirus/utils/c;->aob:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/f;->awi:Lcom/miui/antivirus/c;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/miui/antivirus/c;->aBE(I)V

    const-string/jumbo v1, "PaySafetyCheckManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "background scan : unofficial app risk = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/miui/antivirus/utils/c;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/f;->awi:Lcom/miui/antivirus/c;

    invoke-interface {v0}, Lcom/miui/antivirus/c;->aBH()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/f;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lcom/miui/antivirus/utils/g;

    sget-object v3, Lcom/miui/antivirus/utils/e;->aok:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/antivirus/f;->awk:Lcom/miui/antivirus/a;

    invoke-static {v4}, Lcom/miui/antivirus/a;->aCP(Lcom/miui/antivirus/a;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/miui/antivirus/utils/g;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v3, Lcom/miui/antivirus/utils/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v1}, Lcom/miui/antivirus/utils/h;-><init>(Lcom/miui/antivirus/utils/g;)V

    const-string/jumbo v4, "params"

    iget-object v5, p0, Lcom/miui/antivirus/f;->awj:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/antivirus/utils/h;->auT(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/antivirus/utils/h;

    const-string/jumbo v3, "PaySafetyCheckManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "active request url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/miui/antivirus/utils/e;->aok:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/miui/antivirus/utils/g;->auE()Lcom/miui/antivirus/utils/Connection$NetworkError;

    move-result-object v3

    sget-object v4, Lcom/miui/antivirus/utils/Connection$NetworkError;->aou:Lcom/miui/antivirus/utils/Connection$NetworkError;

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/miui/antivirus/utils/g;->auF()Lorg/json/JSONArray;

    move-result-object v1

    sget-boolean v3, Lcom/miui/antivirus/utils/e;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "PaySafetyCheckManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "obj = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v1}, Lcom/miui/antivirus/utils/d;->auB(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/antivirus/utils/c;

    const/4 v4, 0x5

    invoke-direct {v0, v4}, Lcom/miui/antivirus/utils/c;-><init>(I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/utils/c;

    iget-object v4, p0, Lcom/miui/antivirus/f;->awk:Lcom/miui/antivirus/a;

    invoke-static {v4}, Lcom/miui/antivirus/a;->aCR(Lcom/miui/antivirus/a;)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/antivirus/utils/c;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/antivirus/f;->awk:Lcom/miui/antivirus/a;

    invoke-static {v5}, Lcom/miui/antivirus/a;->aCR(Lcom/miui/antivirus/a;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/antivirus/utils/c;->aoa:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/antivirus/utils/c;->mSourceDir:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PaySafetyCheckManager"

    const-string/jumbo v3, "NameNotFoundException when check sign background: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/f;->aDa(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
