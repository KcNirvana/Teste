.class public Lcom/xiaomi/a/c;
.super Lcom/xiaomi/a/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/a/l;-><init>()V

    const-string v0, "ad"

    invoke-virtual {p0, v0}, Lcom/xiaomi/a/c;->b(Ljava/lang/String;)Lcom/xiaomi/a/l;

    invoke-virtual {p0, p1}, Lcom/xiaomi/a/c;->c(Ljava/lang/String;)Lcom/xiaomi/a/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/a/l;-><init>()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/a/c;->b(Ljava/lang/String;)Lcom/xiaomi/a/l;

    invoke-virtual {p0, p2}, Lcom/xiaomi/a/c;->c(Ljava/lang/String;)Lcom/xiaomi/a/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/xiaomi/a/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/a/c;"
        }
    .end annotation

    if-eqz p1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "_ad_monitor_"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method
