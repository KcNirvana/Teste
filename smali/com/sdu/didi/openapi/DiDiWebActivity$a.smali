.class Lcom/sdu/didi/openapi/DiDiWebActivity$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdu/didi/openapi/DiDiWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/sdu/didi/openapi/pK/a;

.field final synthetic b:Lcom/sdu/didi/openapi/DiDiWebActivity;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->a:Lcom/sdu/didi/openapi/pK/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->a:Lcom/sdu/didi/openapi/pK/a;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/pK/a;->dismiss()V

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "special_url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "special_url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {}, Lcom/sdu/didi/openapi/a;->a()Lcom/sdu/didi/openapi/a;

    move-result-object v2

    iget-object v3, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-virtual {v2, v3}, Lcom/sdu/didi/openapi/a;->b(Landroid/content/Context;)Lcom/sdu/didi/openapi/gK/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sdu/didi/openapi/DiDiWebActivity;->a(Lcom/sdu/didi/openapi/DiDiWebActivity;Lcom/sdu/didi/openapi/gK/b;)Lcom/sdu/didi/openapi/gK/b;

    iget-object v1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v1}, Lcom/sdu/didi/openapi/DiDiWebActivity;->d(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/gK/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdu/didi/openapi/gK/b;->c()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v0, "https://static.udache.com/gulfstream/webapp/pages/sdk/error.html"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "errorcode"

    const-string/jumbo v2, "1001"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v1, "openid"

    iget-object v2, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v2}, Lcom/sdu/didi/openapi/DiDiWebActivity;->d(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/gK/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sdu/didi/openapi/gK/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sdu/didi/openapi/ss/a;->a()Lcom/sdu/didi/openapi/ss/a;

    move-result-object v1

    const-string/jumbo v2, "https://open.xiaojukeji.com/gulfstream/develop/v1/permit/pGetConfig"

    invoke-virtual {v1, v2, v0}, Lcom/sdu/didi/openapi/ss/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, ""

    goto/16 :goto_0

    :cond_4
    new-instance v2, Lcom/sdu/didi/openapi/gK/c;

    invoke-direct {v2}, Lcom/sdu/didi/openapi/gK/c;-><init>()V

    invoke-virtual {v2, v1}, Lcom/sdu/didi/openapi/gK/c;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sdu/didi/openapi/gK/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v1, "openid"

    iget-object v3, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v3}, Lcom/sdu/didi/openapi/DiDiWebActivity;->d(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/gK/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sdu/didi/openapi/gK/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v1, "channel"

    iget-object v3, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v3}, Lcom/sdu/didi/openapi/DiDiWebActivity;->d(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/gK/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sdu/didi/openapi/gK/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {}, Lcom/sdu/didi/openapi/utils/Utils;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v3, "sign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v7}, Lcom/sdu/didi/openapi/DiDiWebActivity;->d(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/gK/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sdu/didi/openapi/gK/b;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-virtual {v7}, Lcom/sdu/didi/openapi/DiDiWebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sdu/didi/openapi/DIOpenSDK;->getSecrectStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v7}, Lcom/sdu/didi/openapi/DiDiWebActivity;->d(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/gK/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sdu/didi/openapi/gK/b;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sdu/didi/openapi/DIOpenSDK;->getSDKSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, ""

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->a:Lcom/sdu/didi/openapi/pK/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->a:Lcom/sdu/didi/openapi/pK/a;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/pK/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->a:Lcom/sdu/didi/openapi/pK/a;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/pK/a;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->a(Lcom/sdu/didi/openapi/DiDiWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "https://static.udache.com/gulfstream/webapp/pages/sdk/error.html"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "errorcode"

    const-string/jumbo v3, "1001"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    new-instance v0, Lcom/sdu/didi/openapi/pK/a;

    iget-object v1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-direct {v0, v1}, Lcom/sdu/didi/openapi/pK/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->a:Lcom/sdu/didi/openapi/pK/a;

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->a:Lcom/sdu/didi/openapi/pK/a;

    const-string/jumbo v1, "\u6b63\u5728\u8f7d\u5165\u6ef4\u6ef4\u51fa\u884c"

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/pK/a;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->a:Lcom/sdu/didi/openapi/pK/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/pK/a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->a:Lcom/sdu/didi/openapi/pK/a;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/pK/a;->show()V

    return-void
.end method
