.class public Lcom/alipay/android/app/ctemplate/api/TemplateTransport;
.super Ljava/lang/Object;
.source "TemplateTransport.java"

# interfaces
.implements Lcom/alipay/android/app/plugin/e;


# static fields
.field public static final TPL_IDS:Ljava/lang/String; = "tplids"

.field public static final TPL_VER:Ljava/lang/String; = "tplver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private requestTplData(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/alipay/android/app/trans/config/a;

    sget-object v2, Lcom/alipay/android/app/trans/config/RequestChannel;->BYTES_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/trans/config/a;-><init>(Lcom/alipay/android/app/trans/config/RequestChannel;)V

    const-string/jumbo v2, "get"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/trans/config/a;->d(Ljava/lang/String;)V

    const-string/jumbo v2, "tpl"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/trans/config/a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/trans/config/a;->g(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/alipay/android/app/logic/c/d;->a(Ljava/lang/String;Lcom/alipay/android/app/trans/config/a;)[B

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/trans/a;

    invoke-direct {v3, v2}, Lcom/alipay/android/app/trans/a;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->e()Lcom/alipay/android/app/plugin/f;

    move-result-object v2

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/app/plugin/f;->requestData(Lcom/alipay/android/app/trans/a;Lcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/b;

    move-result-object v2

    const-string/jumbo v3, "msp-gzip"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/trans/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/trans/config/a;->d(Z)V

    :try_start_0
    invoke-virtual {v2}, Lcom/alipay/android/app/trans/b;->b()[B

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/android/app/logic/c/d;->a([BLcom/alipay/android/app/trans/config/a;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/android/app/exception/PublicKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string/jumbo v2, "tpls"

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "tpls"

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/alipay/android/app/ctemplate/api/TemplateTransport;->requestTplData(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public fetchTemplates(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    if-eqz p1, :cond_1

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "tplids"

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "tplver"

    invoke-static {}, Lcom/alipay/android/app/ctemplate/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/ctemplate/api/TemplateTransport;->requestTplData(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public querySyncTpls(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
