.class Lcom/miui/weather2/view/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/miui/weather2/structures/InfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/miui/weather2/view/WeatherScrollView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/WeatherScrollView;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/bb;->d:Lcom/miui/weather2/view/WeatherScrollView;

    iput-object p2, p0, Lcom/miui/weather2/view/bb;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/weather2/view/bb;->b:Z

    iput-object p4, p0, Lcom/miui/weather2/view/bb;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/weather2/structures/InfoBean;Lretrofit/client/Response;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Wth2:WeatherScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCommercialInfo() success, url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit/client/Response;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoBean;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoBean;->getCards()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoBean;->getCards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/bb;->d:Lcom/miui/weather2/view/WeatherScrollView;

    invoke-static {v0, v3}, Lcom/miui/weather2/view/WeatherScrollView;->a(Lcom/miui/weather2/view/WeatherScrollView;Z)Z

    iget-object v0, p0, Lcom/miui/weather2/view/bb;->d:Lcom/miui/weather2/view/WeatherScrollView;

    iget-object v0, v0, Lcom/miui/weather2/view/WeatherScrollView;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/bb;->d:Lcom/miui/weather2/view/WeatherScrollView;

    iget-object v0, v0, Lcom/miui/weather2/view/WeatherScrollView;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/weather2/view/bb;->d:Lcom/miui/weather2/view/WeatherScrollView;

    iget-object v1, p0, Lcom/miui/weather2/view/bb;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/weather2/view/WeatherScrollView;->a(Lcom/miui/weather2/view/WeatherScrollView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/bb;->d:Lcom/miui/weather2/view/WeatherScrollView;

    iget-boolean v1, p0, Lcom/miui/weather2/view/bb;->b:Z

    invoke-static {v0, v1}, Lcom/miui/weather2/view/WeatherScrollView;->b(Lcom/miui/weather2/view/WeatherScrollView;Z)Z

    iget-object v0, p0, Lcom/miui/weather2/view/bb;->d:Lcom/miui/weather2/view/WeatherScrollView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherScrollView;->b(Lcom/miui/weather2/view/WeatherScrollView;)V

    iget-object v0, p0, Lcom/miui/weather2/view/bb;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/bb;->d:Lcom/miui/weather2/view/WeatherScrollView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherScrollView;->c(Lcom/miui/weather2/view/WeatherScrollView;)Lcom/miui/weather2/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/bb;->d:Lcom/miui/weather2/view/WeatherScrollView;

    invoke-static {v1}, Lcom/miui/weather2/view/WeatherScrollView;->a(Lcom/miui/weather2/view/WeatherScrollView;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/a/a/k;

    invoke-direct {v2}, Lcom/a/a/k;-><init>()V

    invoke-virtual {v2, p1}, Lcom/a/a/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/view/bb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/weather2/model/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/AsyncTask;

    :cond_0
    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoBean;->getCards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/InfoCardBean;

    iget-object v2, p0, Lcom/miui/weather2/view/bb;->d:Lcom/miui/weather2/view/WeatherScrollView;

    invoke-virtual {v2, v0}, Lcom/miui/weather2/view/WeatherScrollView;->a(Lcom/miui/weather2/structures/InfoCardBean;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public failure(Lretrofit/RetrofitError;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "Wth2:WeatherScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCommercialInfo() fail, error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Wth2:WeatherScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCommercialInfo() fail, url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    check-cast p1, Lcom/miui/weather2/structures/InfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/miui/weather2/view/bb;->a(Lcom/miui/weather2/structures/InfoBean;Lretrofit/client/Response;)V

    return-void
.end method
