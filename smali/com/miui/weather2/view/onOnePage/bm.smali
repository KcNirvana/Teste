.class Lcom/miui/weather2/view/onOnePage/bm;
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
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/bm;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/weather2/structures/InfoBean;Lretrofit/client/Response;)V
    .locals 3

    const-string v0, "Wth2:VerticalCarousel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAlertAd() success, url="

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

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bm;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->d(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bm;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

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

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/bm;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v2, v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;Lcom/miui/weather2/structures/InfoCardBean;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bm;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a()V

    return-void
.end method

.method public failure(Lretrofit/RetrofitError;)V
    .locals 3

    const-string v0, "Wth2:VerticalCarousel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAlertAd() fail, error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Wth2:VerticalCarousel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAlertAd() fail, url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bm;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a()V

    return-void
.end method

.method public synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    check-cast p1, Lcom/miui/weather2/structures/InfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/miui/weather2/view/onOnePage/bm;->a(Lcom/miui/weather2/structures/InfoBean;Lretrofit/client/Response;)V

    return-void
.end method
