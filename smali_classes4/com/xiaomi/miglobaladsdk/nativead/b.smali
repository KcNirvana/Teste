.class public Lcom/xiaomi/miglobaladsdk/nativead/b;
.super Ljava/lang/Object;
.source "NativeAdLoaderMap.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/miglobaladsdk/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->c:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/a/a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/a/a;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/miglobaladsdk/a/a;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/miglobaladsdk/a/a;

    iget-object v4, v1, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/xiaomi/miglobaladsdk/a/a;->d:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, v1, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    iget-object v5, v3, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, v1, Lcom/xiaomi/miglobaladsdk/a/a;->d:Ljava/lang/String;

    iget-object v3, v3, Lcom/xiaomi/miglobaladsdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    :goto_2
    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/xiaomi/miglobaladsdk/a/a;)Lcom/xiaomi/miglobaladsdk/b/b;
    .locals 2

    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->a:Ljava/util/Map;

    iget-object v1, p2, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->a:Ljava/util/Map;

    iget-object p2, p2, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/miglobaladsdk/b/b;

    return-object p1

    :cond_1
    invoke-static {}, Lcom/xiaomi/miglobaladsdk/b/c;->a()Lcom/xiaomi/miglobaladsdk/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/miglobaladsdk/b/c;->a(Landroid/content/Context;Lcom/xiaomi/miglobaladsdk/a/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/miglobaladsdk/b/b;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->a:Ljava/util/Map;

    iget-object p2, p2, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/b/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/miglobaladsdk/b/b;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->b:Ljava/util/List;

    return-object v0
.end method

.method a(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/a/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->c:Ljava/util/List;

    invoke-direct {p0, p2, v0}, Lcom/xiaomi/miglobaladsdk/nativead/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/miglobaladsdk/a/a;

    invoke-virtual {p0, p1, v1}, Lcom/xiaomi/miglobaladsdk/nativead/b;->a(Landroid/content/Context;Lcom/xiaomi/miglobaladsdk/a/a;)Lcom/xiaomi/miglobaladsdk/b/b;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->a:Ljava/util/Map;

    iget-object v4, v1, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->b:Ljava/util/List;

    iget-object v1, v1, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "NativeAdLoaderMap"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mConfigBeans size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ,mLoaderCacheMap size: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/b;->a:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
