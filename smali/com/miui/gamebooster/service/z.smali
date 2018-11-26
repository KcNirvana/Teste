.class final Lcom/miui/gamebooster/service/z;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic nb:Lcom/miui/gamebooster/service/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/z;->nb:Lcom/miui/gamebooster/service/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/service/z;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/z;->nb:Lcom/miui/gamebooster/service/b;

    invoke-static {v1}, Lcom/miui/gamebooster/service/b;->oV(Lcom/miui/gamebooster/service/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gamebooster/service/z;->nb:Lcom/miui/gamebooster/service/b;

    invoke-static {v0}, Lcom/miui/gamebooster/service/b;->oW(Lcom/miui/gamebooster/service/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_0
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_0
    return-object v6

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_1
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/service/z;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/z;->nb:Lcom/miui/gamebooster/service/b;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/service/b;->oS(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/z;->nb:Lcom/miui/gamebooster/service/b;

    invoke-static {v0}, Lcom/miui/gamebooster/service/b;->oY(Lcom/miui/gamebooster/service/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/z;->nb:Lcom/miui/gamebooster/service/b;

    invoke-static {v0}, Lcom/miui/gamebooster/service/b;->oU(Lcom/miui/gamebooster/service/b;)Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/z;->nb:Lcom/miui/gamebooster/service/b;

    invoke-static {v0}, Lcom/miui/gamebooster/service/b;->oU(Lcom/miui/gamebooster/service/b;)Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qO(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
