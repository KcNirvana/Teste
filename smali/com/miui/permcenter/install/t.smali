.class final Lcom/miui/permcenter/install/t;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic QO:Lcom/miui/permcenter/install/PackageVerificationRecevier;

.field final synthetic QP:Ljava/lang/String;

.field final synthetic QQ:Ljava/lang/String;

.field final synthetic QR:Landroid/os/IMessenger;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/install/PackageVerificationRecevier;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/IMessenger;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/install/t;->QO:Lcom/miui/permcenter/install/PackageVerificationRecevier;

    iput-object p2, p0, Lcom/miui/permcenter/install/t;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/permcenter/install/t;->QP:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/permcenter/install/t;->QQ:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/permcenter/install/t;->QR:Landroid/os/IMessenger;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/install/t;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/permcenter/install/t;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "content://guard"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "parseApk"

    iget-object v5, p0, Lcom/miui/permcenter/install/t;->QP:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    const-string/jumbo v2, "pkgInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    :goto_1
    const-string/jumbo v2, "PackageVerifyedRecevier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "verify package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/permcenter/install/t;->QP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " info:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-nez v0, :cond_3

    move v2, v3

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/miui/permcenter/install/t;->QR:Landroid/os/IMessenger;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    const/4 v3, -0x1

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v3, v0, Landroid/os/Message;->what:I

    :try_start_1
    iget-object v3, p0, Lcom/miui/permcenter/install/t;->QR:Landroid/os/IMessenger;

    invoke-interface {v3, v0}, Landroid/os/IMessenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_3
    const-string/jumbo v0, "PackageVerifyedRecevier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "verify package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/permcenter/install/t;->QP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " finish "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PackageVerifyedRecevier"

    const-string/jumbo v4, "parseApk"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordException(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/miui/permcenter/install/t;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/permcenter/install/t;->QP:Ljava/lang/String;

    invoke-static {v4, v0, v5}, Lcom/miui/permcenter/install/PackageVerificationRecevier;->Se(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method
