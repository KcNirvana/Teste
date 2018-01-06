.class Lcom/miui/weather2/bj;
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
.field final synthetic a:Lcom/miui/weather2/WeatherIndexActivity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/WeatherIndexActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/weather2/structures/InfoBean;Lretrofit/client/Response;)V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "Wth2:WeatherIndexActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestData() status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit/client/Response;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Wth2:WeatherIndexActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestData() url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit/client/Response;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoBean;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoBean;->getCards()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoBean;->getCards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->b(Lcom/miui/weather2/WeatherIndexActivity;)Lcom/miui/weather2/view/LoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/LoadingView;->b()V

    iget-object v0, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->b(Lcom/miui/weather2/WeatherIndexActivity;)Lcom/miui/weather2/view/LoadingView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/LoadingView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->c(Lcom/miui/weather2/WeatherIndexActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_0

    const-string v0, "index_net_status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit/client/Response;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->d(Lcom/miui/weather2/WeatherIndexActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v1}, Lcom/miui/weather2/WeatherIndexActivity;->e(Lcom/miui/weather2/WeatherIndexActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "get_data_success"

    const-string v3, "inside"

    const-string v4, "all"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->f(Lcom/miui/weather2/WeatherIndexActivity;)Lcom/miui/weather2/model/w;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    iget v1, v1, Lcom/miui/weather2/WeatherIndexActivity;->c:I

    iget-object v2, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    iget-boolean v2, v2, Lcom/miui/weather2/WeatherIndexActivity;->d:Z

    iget-object v3, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    iget v3, v3, Lcom/miui/weather2/WeatherIndexActivity;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/weather2/model/w;->a(IZI)V

    iget-object v0, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->f(Lcom/miui/weather2/WeatherIndexActivity;)Lcom/miui/weather2/model/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/weather2/model/w;->a(Lcom/miui/weather2/structures/InfoBean;)V

    iget-object v0, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->f(Lcom/miui/weather2/WeatherIndexActivity;)Lcom/miui/weather2/model/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/model/w;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->g(Lcom/miui/weather2/WeatherIndexActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->b(Lcom/miui/weather2/WeatherIndexActivity;)Lcom/miui/weather2/view/LoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/LoadingView;->c()V

    iget-object v0, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->h(Lcom/miui/weather2/WeatherIndexActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0900c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->g(Lcom/miui/weather2/WeatherIndexActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public failure(Lretrofit/RetrofitError;)V
    .locals 5

    const-string v0, "Wth2:WeatherIndexActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestData() error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Wth2:WeatherIndexActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestData() url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->b(Lcom/miui/weather2/WeatherIndexActivity;)Lcom/miui/weather2/view/LoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/LoadingView;->c()V

    iget-object v0, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->h(Lcom/miui/weather2/WeatherIndexActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0900c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->g(Lcom/miui/weather2/WeatherIndexActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "index_net_status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failure_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->d(Lcom/miui/weather2/WeatherIndexActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/bj;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v1}, Lcom/miui/weather2/WeatherIndexActivity;->e(Lcom/miui/weather2/WeatherIndexActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "get_data_fail"

    const-string v3, "inside"

    const-string v4, "all"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    check-cast p1, Lcom/miui/weather2/structures/InfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/miui/weather2/bj;->a(Lcom/miui/weather2/structures/InfoBean;Lretrofit/client/Response;)V

    return-void
.end method
