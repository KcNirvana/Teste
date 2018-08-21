.class public Lcom/alipay/android/app/ctemplate/transport/TemplateManager;
.super Ljava/lang/Object;
.source "TemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;,
        Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/alipay/android/app/plugin/e;

.field private c:Lcom/alipay/android/app/ctemplate/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->a()Lcom/alipay/android/app/plugin/e;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->b:Lcom/alipay/android/app/plugin/e;

    new-instance v0, Lcom/alipay/android/app/ctemplate/a/d;

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ctemplate/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->c:Lcom/alipay/android/app/ctemplate/a/d;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x3

    const/4 v0, 0x0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v1, v2

    if-ne v1, v6, :cond_5

    array-length v1, v3

    if-ne v1, v6, :cond_5

    move v1, v0

    :goto_1
    if-ge v1, v6, :cond_0

    aget-object v4, v2, v1

    aget-object v5, v3, v1

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    aget-object v0, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/ctemplate/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"tplId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"tplVersion\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"publishVersion\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"platform\":\"android\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"uid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    iget-object v0, v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;

    iget-object v3, v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->a:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->c:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    :goto_1
    iget-object v0, v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v5, 0xc8

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tplId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "birdParams="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;

    iget-object v3, v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->b:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/content/res/Resources;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;",
            ">;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/ctemplate/log/LogTracer$a;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/sys/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;

    iget-object v8, v3, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v8, p2}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v1

    const-string/jumbo v0, "NULL"

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$a;

    iget-object v3, v3, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->c:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    iget-object v3, v3, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    const-string/jumbo v4, "F"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/ctemplate/log/LogTracer$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, v6

    goto :goto_0
.end method

.method public static a(Lcom/alipay/android/app/ctemplate/model/Template;Lcom/alipay/android/app/ctemplate/model/Template;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/alipay/android/app/ctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v3, "5.0.0"

    invoke-static {v4, v3}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    move v3, v1

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    if-nez p1, :cond_3

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v2, "TemplateManager::whetherNeedUpdate"

    const-string/jumbo v3, "local template is null, need update"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    invoke-static {p0, p1}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->c(Lcom/alipay/android/app/ctemplate/model/Template;Lcom/alipay/android/app/ctemplate/model/Template;)Z

    move-result v2

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "TemplateManager::whetherNeedUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "call compareTemplateForUpdate(...) result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "template"

    const-string/jumbo v3, "TplManagerTplversionIllegal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remoteTplVersion is invalid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;

    iget-object v0, v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static b(Lcom/alipay/android/app/ctemplate/model/Template;Lcom/alipay/android/app/ctemplate/model/Template;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method static c(Lcom/alipay/android/app/ctemplate/model/Template;Lcom/alipay/android/app/ctemplate/model/Template;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/alipay/android/app/ctemplate/model/Template;->tplVersion:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/android/app/ctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_0

    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    move v0, v1

    :goto_1
    const-string/jumbo v3, "\u670d\u52a1\u7aef\u53d1\u5e03\u7248\u672c\u4e0e\u672c\u5730\u4e0d\u4e00\u6837\u6216\u53d1\u5e03\u7248\u672c\u4e00\u6837time\u5347\u7ea7,\u66f4\u65b0:%s"

    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-string/jumbo v1, "YES"

    :goto_2
    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "TemplateManager::compareTemplateForUpdate"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "NO"

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/alipay/android/app/ctemplate/model/Template;
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/ctemplate/model/Template;

    invoke-direct {v0}, Lcom/alipay/android/app/ctemplate/model/Template;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    const-string/jumbo v1, "tag"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->tag:Ljava/lang/String;

    const-string/jumbo v1, "time"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    const-string/jumbo v1, "html"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->html:Ljava/lang/String;

    const-string/jumbo v1, "tplId"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    const-string/jumbo v1, "format"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->format:Ljava/lang/String;

    const-string/jumbo v1, "tplVersion"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->tplVersion:Ljava/lang/String;

    const-string/jumbo v1, "publishVersion"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "template"

    const-string/jumbo v4, "TplManagerParseFromJsonEx"

    invoke-virtual {v2, v3, v4, v1}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->c:Lcom/alipay/android/app/ctemplate/a/d;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/android/app/ctemplate/a/d;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/alipay/android/app/ctemplate/model/Template;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p1, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/android/app/ctemplate/model/Template;->tplVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;Landroid/content/res/Resources;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->c:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    sget-object v1, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p2, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->c:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    sget-object v1, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->FORCE:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lcom/alipay/birdnest/a/f;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v5, Landroid/os/ConditionVariable;

    invoke-direct {v5}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/alipay/android/app/ctemplate/transport/a;

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/ctemplate/transport/a;-><init>(Lcom/alipay/android/app/ctemplate/transport/TemplateManager;Ljava/util/Map;Ljava/util/List;Landroid/content/res/Resources;Landroid/os/ConditionVariable;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0xbb8

    invoke-virtual {v5, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    :goto_0
    return-object v2

    :cond_0
    sget-object v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a:Ljava/util/Map;

    iget-object v1, p2, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v3, p3, v0}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/util/List;Landroid/content/res/Resources;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Landroid/content/res/Resources;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/util/List;Landroid/content/res/Resources;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;Landroid/content/res/Resources;Ljava/util/Map;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;",
            ">;",
            "Landroid/content/res/Resources;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v2

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->b(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    invoke-direct/range {p0 .. p2}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/util/List;Landroid/content/res/Resources;)Ljava/util/Map;

    move-result-object v11

    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->b:Lcom/alipay/android/app/plugin/e;

    invoke-interface {v2, v4}, Lcom/alipay/android/app/plugin/e;->fetchTemplates(Ljava/util/Map;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v10, v2

    :goto_1
    if-eqz v10, :cond_7

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-static {}, Lcom/alipay/android/app/sys/a;->l()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    move v8, v2

    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_8

    :try_start_1
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/lang/String;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v7

    iget-object v2, v7, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v5

    if-nez v5, :cond_3

    const-string/jumbo v2, "NULL"

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v7, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v7, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, "-"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "-"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v5}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Lcom/alipay/android/app/ctemplate/model/Template;Lcom/alipay/android/app/ctemplate/model/Template;)Z

    move-result v12

    if-nez v5, :cond_4

    const/4 v2, 0x1

    :goto_4
    if-nez v12, :cond_2

    if-eqz v2, :cond_6

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->c:Lcom/alipay/android/app/ctemplate/a/d;

    invoke-virtual {v2, v7}, Lcom/alipay/android/app/ctemplate/a/d;->a(Lcom/alipay/android/app/ctemplate/model/Template;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v6, "T"

    :goto_5
    iget-object v5, v7, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v9, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    iget-object v2, v7, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    iget-object v12, v7, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    new-instance v2, Lcom/alipay/android/app/ctemplate/log/LogTracer$a;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/alipay/android/app/ctemplate/log/LogTracer$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_2

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v5

    const-string/jumbo v6, "template"

    const-string/jumbo v7, "TplDownloadEx"

    invoke-virtual {v5, v6, v7, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v10, v3

    goto/16 :goto_1

    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    const-string/jumbo v6, "F"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "tplId:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v12, v7, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, ",publishVersion:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v12, v7, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, ",tplVersion:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v12, v7, Lcom/alipay/android/app/ctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v12

    const-string/jumbo v13, "template"

    const-string/jumbo v14, "TplDownloadSaveFailed"

    invoke-virtual {v12, v13, v14, v5}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v2

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v3

    const-string/jumbo v5, "template"

    const-string/jumbo v6, "TplDownloadSaveEx"

    invoke-virtual {v3, v5, v6, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_6
    :try_start_3
    const-string/jumbo v6, "E"

    iget-object v5, v7, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v9, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v5

    const-string/jumbo v13, "template"

    const-string/jumbo v14, "TplDownloadTemplateExist"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "needUpdate:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v15, ",noLocalTemplate:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v13, v14, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    :cond_7
    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "template"

    const-string/jumbo v5, "TplDownloadNull"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v4

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/ctemplate/log/LogTracer$a;

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Lcom/alipay/android/app/ctemplate/log/LogTracer$a;)V

    goto :goto_8

    :cond_9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;

    iget-object v3, v2, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->a:Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v2, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->a:Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_b

    sget-object v3, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a:Ljava/util/Map;

    iget-object v2, v2, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->a:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_b
    sget-object v3, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a:Ljava/util/Map;

    iget-object v5, v2, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->a:Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_c
    move-object v2, v9

    goto/16 :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
