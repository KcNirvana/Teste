.class Lcom/miui/antivirus/e;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private awf:Lcom/miui/antivirus/b;

.field private awg:Lorg/json/JSONArray;

.field final synthetic awh:Lcom/miui/antivirus/a;

.field private startTime:J


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/a;Lcom/miui/antivirus/b;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/e;->awh:Lcom/miui/antivirus/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/antivirus/e;->awf:Lcom/miui/antivirus/b;

    iput-object p3, p0, Lcom/miui/antivirus/e;->awg:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method protected aCZ(Ljava/util/List;)V
    .locals 6

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/utils/c;

    new-instance v2, Lcom/miui/antivirus/model/b;

    invoke-direct {v2}, Lcom/miui/antivirus/model/b;-><init>()V

    sget-object v3, Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;->awc:Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/b;->aqx(Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;)V

    iget-object v3, v0, Lcom/miui/antivirus/utils/c;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/b;->setPkgName(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/miui/antivirus/utils/c;->aoa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/b;->setAppLabel(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/miui/antivirus/utils/c;->mSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/b;->aqy(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/antivirus/model/AppModel$CardType;->ala:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/b;->aqz(Lcom/miui/antivirus/model/AppModel$CardType;)V

    sget-object v3, Lcom/miui/antivirus/model/AppModel$AppGroup;->alk:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/b;->aqA(Lcom/miui/antivirus/model/AppModel$AppGroup;)V

    iget v0, v0, Lcom/miui/antivirus/utils/c;->aob:I

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/model/b;->aqB(I)V

    iget-object v0, p0, Lcom/miui/antivirus/e;->awf:Lcom/miui/antivirus/b;

    invoke-interface {v0, v2}, Lcom/miui/antivirus/b;->ayt(Lcom/miui/antivirus/model/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/e;->awh:Lcom/miui/antivirus/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/antivirus/e;->startTime:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/miui/antivirus/a;->aCV(Lcom/miui/antivirus/a;J)J

    iget-object v0, p0, Lcom/miui/antivirus/e;->awh:Lcom/miui/antivirus/a;

    invoke-static {v0}, Lcom/miui/antivirus/a;->aCQ(Lcom/miui/antivirus/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/e;->awh:Lcom/miui/antivirus/a;

    invoke-static {v1}, Lcom/miui/antivirus/a;->aCQ(Lcom/miui/antivirus/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PaySafetyCheckManager"

    const-string/jumbo v1, "virus scan first finished, now signature scan finished !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antivirus/e;->awf:Lcom/miui/antivirus/b;

    invoke-interface {v0}, Lcom/miui/antivirus/b;->ayw()V

    :cond_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/e;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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

    iget-object v4, p0, Lcom/miui/antivirus/e;->awh:Lcom/miui/antivirus/a;

    invoke-static {v4}, Lcom/miui/antivirus/a;->aCP(Lcom/miui/antivirus/a;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/miui/antivirus/utils/g;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v3, Lcom/miui/antivirus/utils/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v1}, Lcom/miui/antivirus/utils/h;-><init>(Lcom/miui/antivirus/utils/g;)V

    const-string/jumbo v4, "params"

    iget-object v5, p0, Lcom/miui/antivirus/e;->awg:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/antivirus/utils/h;->auT(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/antivirus/utils/h;

    const-string/jumbo v3, "PaySafetyCheckManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request url = "

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

    if-ne v3, v4, :cond_3

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

    iget-object v4, p0, Lcom/miui/antivirus/e;->awh:Lcom/miui/antivirus/a;

    invoke-static {v4}, Lcom/miui/antivirus/a;->aCR(Lcom/miui/antivirus/a;)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/antivirus/utils/c;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/antivirus/e;->awh:Lcom/miui/antivirus/a;

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
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PaySafetyCheckManager"

    const-string/jumbo v3, "exception when check sign foreground: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-object v2

    :cond_3
    move v1, v0

    :goto_3
    :try_start_1
    iget-object v0, p0, Lcom/miui/antivirus/e;->awg:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/e;->awg:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/antivirus/e;->awh:Lcom/miui/antivirus/a;

    invoke-static {v3}, Lcom/miui/antivirus/a;->aCR(Lcom/miui/antivirus/a;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v3, Lcom/miui/antivirus/utils/c;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/miui/antivirus/utils/c;-><init>(I)V

    iget-object v4, p0, Lcom/miui/antivirus/e;->awh:Lcom/miui/antivirus/a;

    invoke-static {v4}, Lcom/miui/antivirus/a;->aCR(Lcom/miui/antivirus/a;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/miui/antivirus/utils/c;->aoa:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    const-string/jumbo v1, "PaySafetyCheckManager"

    const-string/jumbo v3, "exception when check sign foreground: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/e;->aCZ(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/antivirus/e;->startTime:J

    return-void
.end method
