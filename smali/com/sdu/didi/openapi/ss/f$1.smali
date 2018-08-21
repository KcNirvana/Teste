.class Lcom/sdu/didi/openapi/ss/f$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdu/didi/openapi/ss/f;->a(Ljava/lang/String;Lcom/sdu/didi/openapi/DiDiWebActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sdu/didi/openapi/DiDiWebActivity;

.field final synthetic b:Lcom/sdu/didi/openapi/ss/f;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/ss/f;Lcom/sdu/didi/openapi/DiDiWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/ss/f$1;->b:Lcom/sdu/didi/openapi/ss/f;

    iput-object p2, p0, Lcom/sdu/didi/openapi/ss/f$1;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/f$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/ss/f$1;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0, v1}, Lcom/sdu/didi/openapi/ss/c;->a(Ljava/lang/String;Lcom/sdu/didi/openapi/DiDiWebActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "jscalljava"

    invoke-static {v0, p1}, Lcom/sdu/didi/openapi/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/ss/f$1;->b:Lcom/sdu/didi/openapi/ss/f;

    invoke-static {v0}, Lcom/sdu/didi/openapi/ss/f;->a(Lcom/sdu/didi/openapi/ss/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "processRequest"

    const-string/jumbo v1, "onPostExecute return null"

    invoke-static {v0, v1}, Lcom/sdu/didi/openapi/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "javascript:window.didi&&window.didi.sdk&&window.didi.sdk._callback(%s);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/ss/f$1;->b:Lcom/sdu/didi/openapi/ss/f;

    invoke-static {v1}, Lcom/sdu/didi/openapi/ss/f;->b(Lcom/sdu/didi/openapi/ss/f;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sdu/didi/openapi/ss/f$1;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sdu/didi/openapi/ss/f$1;->a(Ljava/lang/String;)V

    return-void
.end method
