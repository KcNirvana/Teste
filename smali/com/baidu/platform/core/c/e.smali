.class public Lcom/baidu/platform/core/c/e;
.super Lcom/baidu/platform/base/c;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/platform/base/c;-><init>()V

    invoke-virtual {p0, p1}, Lcom/baidu/platform/core/c/e;->a(Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/b;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lcom/baidu/platform/domain/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/core/c/e;->a:Lcom/baidu/platform/util/a;

    const-string/jumbo v1, "uid"

    iget-object v2, p1, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    iget-object v0, p0, Lcom/baidu/platform/core/c/e;->a:Lcom/baidu/platform/util/a;

    const-string/jumbo v1, "output"

    const-string/jumbo v2, "json"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    iget-object v0, p0, Lcom/baidu/platform/core/c/e;->a:Lcom/baidu/platform/util/a;

    const-string/jumbo v1, "scope"

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    return-void
.end method
