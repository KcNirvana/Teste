.class public Lcom/alipay/android/app/ctemplate/a/d;
.super Ljava/lang/Object;
.source "TemplateStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ctemplate/a/d$a;
    }
.end annotation


# static fields
.field private static final b:I

.field private static final c:I

.field private static final d:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/ctemplate/a/d$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/alipay/android/app/ctemplate/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/alipay/android/app/ctemplate/a/d;->b:I

    sget v0, Lcom/alipay/android/app/ctemplate/a/d;->b:I

    div-int/lit8 v0, v0, 0x28

    sput v0, Lcom/alipay/android/app/ctemplate/a/d;->c:I

    new-instance v0, Lcom/alipay/android/app/ctemplate/a/e;

    sget v1, Lcom/alipay/android/app/ctemplate/a/d;->c:I

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ctemplate/a/e;-><init>(I)V

    sput-object v0, Lcom/alipay/android/app/ctemplate/a/d;->d:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid params passed to TemplateStorage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/ctemplate/a/b;->a()Lcom/alipay/android/app/ctemplate/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/a/d;->a:Lcom/alipay/android/app/ctemplate/a/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/android/app/ctemplate/model/Template;
    .locals 4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/ctemplate/model/Template;

    invoke-direct {v0}, Lcom/alipay/android/app/ctemplate/model/Template;-><init>()V

    const-string/jumbo v2, "tplId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    const-string/jumbo v2, "tag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/app/ctemplate/model/Template;->tag:Ljava/lang/String;

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    const-string/jumbo v2, "html"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/app/ctemplate/model/Template;->html:Ljava/lang/String;

    const-string/jumbo v2, "tplVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/app/ctemplate/model/Template;->tplVersion:Ljava/lang/String;

    const-string/jumbo v2, "format"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/app/ctemplate/model/Template;->format:Ljava/lang/String;

    const-string/jumbo v2, "publishVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "template"

    const-string/jumbo v3, "TplAssetsParseEx"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/alipay/android/app/ctemplate/model/Template;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "TemplateStorage::getTemplateFromResource"

    const-string/jumbo v3, "res is null or tplId is empty"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/alipay/android/app/ctemplate/a/a;->a(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "template"

    const-string/jumbo v4, "TplAssetsGetNull"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tplId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",templateString="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/alipay/android/app/ctemplate/a/d;->a(Ljava/lang/String;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;
    .locals 7

    const/16 v4, 0x800

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/android/app/ctemplate/a/d;->d:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ctemplate/a/d$a;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "TemplateStorage::getTemplate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "template hit mem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/ctemplate/model/Template;

    invoke-direct {v1}, Lcom/alipay/android/app/ctemplate/model/Template;-><init>()V

    iput-object p1, v1, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/android/app/ctemplate/a/d$a;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/android/app/ctemplate/model/Template;->format:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/android/app/ctemplate/a/d$a;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/android/app/ctemplate/a/d$a;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/android/app/ctemplate/a/d$a;->e:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/android/app/ctemplate/model/Template;->tplVersion:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/android/app/ctemplate/a/d$a;->f:Ljava/lang/String;

    const-string/jumbo v3, "HTML"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/alipay/android/app/ctemplate/a/d$a;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/alipay/android/app/ctemplate/a/d$a;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/a/d;->a:Lcom/alipay/android/app/ctemplate/a/b;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ctemplate/a/b;->a(Ljava/lang/String;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0x7b

    iget-object v2, v1, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v0, v2, :cond_3

    const/16 v0, 0x3c

    iget-object v2, v1, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, v1, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_4

    iget-object v0, v1, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "template"

    const-string/jumbo v4, "TplLocalGetIllegal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "digest:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/alipay/android/app/ctemplate/a/d$a;->a(Lcom/alipay/android/app/ctemplate/model/Template;)Lcom/alipay/android/app/ctemplate/a/d$a;

    move-result-object v0

    sget-object v2, Lcom/alipay/android/app/ctemplate/a/d;->d:Landroid/util/LruCache;

    iget-object v3, v1, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v0, v1, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p2, p1}, Lcom/alipay/android/app/ctemplate/a/d;->a(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ctemplate/a/d;->a(Lcom/alipay/android/app/ctemplate/model/Template;)Z

    goto/16 :goto_0
.end method

.method public a(Lcom/alipay/android/app/ctemplate/model/Template;)Z
    .locals 9

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v2, "TemplateStorage::saveTemplate"

    const-string/jumbo v3, "template == null"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/alipay/android/app/ctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v2, p1, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/ctemplate/model/Template;->tplVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_1
    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v4

    const-string/jumbo v5, "template"

    const-string/jumbo v6, "TplLocalSaveIllegal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tplId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ",tplVersion="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",tplDataLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v6, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/alipay/android/app/ctemplate/a/d$a;->a(Lcom/alipay/android/app/ctemplate/model/Template;)Lcom/alipay/android/app/ctemplate/a/d$a;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/ctemplate/a/d;->d:Landroid/util/LruCache;

    iget-object v2, p1, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/a/d;->a:Lcom/alipay/android/app/ctemplate/a/b;

    iget-object v1, p1, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/ctemplate/a/b;->a(Ljava/lang/String;Lcom/alipay/android/app/ctemplate/model/Template;)Z

    move-result v0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "TemplateStorage::saveTemplate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ctemplate/a/d;->d:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
