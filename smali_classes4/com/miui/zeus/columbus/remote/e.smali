.class public abstract Lcom/miui/zeus/columbus/remote/e;
.super Ljava/lang/Object;
.source "Server.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/zeus/columbus/ad/enity/IResponseEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final KEY_APP_KEY:Ljava/lang/String; = "appKey"

.field private static final KEY_SIGN:Ljava/lang/String; = "sign"

.field private static final TAG:Ljava/lang/String; = "ASE"


# instance fields
.field private extra:Lorg/json/JSONObject;

.field private mAppKey:Ljava/lang/String;

.field private mAppToken:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected final mTs:J

.field protected final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/zeus/columbus/remote/e;->mUrl:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/zeus/columbus/remote/e;->mTs:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "url can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getFullTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/remote/e;->getTagPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServerResponse(Lcom/miui/zeus/columbus/remote/b;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/remote/b;->a()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/zeus/columbus/util/g;->b(Ljava/io/InputStream;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0}, Lcom/miui/zeus/columbus/remote/e;->getFullTag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HttpResponse: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseHttpResponseInternal(Lcom/miui/zeus/columbus/remote/b;)Lcom/miui/zeus/columbus/remote/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/columbus/remote/b;",
            ")",
            "Lcom/miui/zeus/columbus/remote/d<",
            "TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/remote/e;->getServerResponse(Lcom/miui/zeus/columbus/remote/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/zeus/columbus/remote/e;->getFullTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "response null"

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->SERVER_ERROR:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-static {p1}, Lcom/miui/zeus/columbus/remote/d;->a(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)Lcom/miui/zeus/columbus/remote/d;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/zeus/columbus/remote/e;->parseHttpResponse(Ljava/lang/String;)Lcom/miui/zeus/columbus/ad/enity/IResponseEntity;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/miui/zeus/columbus/remote/e;->getFullTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "response invalid"

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->SERVER_ERROR:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-static {p1}, Lcom/miui/zeus/columbus/remote/d;->a(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)Lcom/miui/zeus/columbus/remote/d;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1}, Lcom/miui/zeus/columbus/ad/enity/IResponseEntity;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-interface {p1}, Lcom/miui/zeus/columbus/ad/enity/IResponseEntity;->getStatus()I

    move-result p1

    sget-object v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->SERVER_ERROR:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-virtual {v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/miui/zeus/columbus/remote/d;->a(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)Lcom/miui/zeus/columbus/remote/d;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Lcom/miui/zeus/columbus/remote/d;->a(Ljava/lang/Object;)Lcom/miui/zeus/columbus/remote/d;

    move-result-object p1

    return-object p1
.end method

.method private sign(Lcom/miui/zeus/columbus/remote/HttpRequest;)V
    .locals 5

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/miui/zeus/columbus/remote/e;->getFullTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpRequest is null, skip sign"

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/remote/e;->mAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/zeus/columbus/remote/e;->mAppToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "appKey"

    iget-object v1, p0, Lcom/miui/zeus/columbus/remote/e;->mAppKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/miui/zeus/columbus/remote/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sign"

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/remote/HttpRequest;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/remote/HttpRequest;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/remote/HttpRequest;->e()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/zeus/columbus/remote/e;->mAppToken:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/miui/zeus/columbus/util/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/zeus/columbus/remote/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/zeus/columbus/remote/e;->getFullTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No appKey or appToken, maybe need one"

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract buildHttpRequest()Lcom/miui/zeus/columbus/remote/HttpRequest;
.end method

.method protected final connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/zeus/columbus/remote/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/zeus/columbus/remote/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/miui/zeus/columbus/remote/g;

    invoke-direct {v0}, Lcom/miui/zeus/columbus/remote/g;-><init>()V

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/miui/zeus/columbus/remote/e;->connect(Lcom/miui/zeus/columbus/remote/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/zeus/columbus/remote/d;

    move-result-object p1

    return-object p1
.end method

.method protected final connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/miui/zeus/columbus/remote/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/miui/zeus/columbus/remote/d<",
            "TT;>;"
        }
    .end annotation

    iput-object p4, p0, Lcom/miui/zeus/columbus/remote/e;->extra:Lorg/json/JSONObject;

    new-instance p4, Lcom/miui/zeus/columbus/remote/g;

    invoke-direct {p4}, Lcom/miui/zeus/columbus/remote/g;-><init>()V

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/miui/zeus/columbus/remote/e;->connect(Lcom/miui/zeus/columbus/remote/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/zeus/columbus/remote/d;

    move-result-object p1

    return-object p1
.end method

.method protected final connect(Lcom/miui/zeus/columbus/remote/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/zeus/columbus/remote/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/columbus/remote/a;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/zeus/columbus/remote/d<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    iput-object p2, p0, Lcom/miui/zeus/columbus/remote/e;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/zeus/columbus/remote/e;->mAppKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/zeus/columbus/remote/e;->mAppToken:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/remote/e;->buildHttpRequest()Lcom/miui/zeus/columbus/remote/HttpRequest;

    move-result-object p2

    const-string p3, "isbase64"

    const-string p4, "false"

    invoke-virtual {p2, p3, p4}, Lcom/miui/zeus/columbus/remote/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/miui/zeus/columbus/remote/e;->sign(Lcom/miui/zeus/columbus/remote/HttpRequest;)V

    invoke-direct {p0}, Lcom/miui/zeus/columbus/remote/e;->getFullTag()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HttpRequest: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/zeus/columbus/remote/HttpRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/miui/zeus/columbus/remote/a;->a(Lcom/miui/zeus/columbus/remote/HttpRequest;)Lcom/miui/zeus/columbus/remote/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/remote/e;->parseHttpResponseInternal(Lcom/miui/zeus/columbus/remote/b;)Lcom/miui/zeus/columbus/remote/d;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-direct {p0}, Lcom/miui/zeus/columbus/remote/e;->getFullTag()Ljava/lang/String;

    move-result-object p2

    const-string p3, "request exception"

    invoke-static {p2, p3, p1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->INTERNAL_ERROR:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-static {p1}, Lcom/miui/zeus/columbus/remote/d;->a(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)Lcom/miui/zeus/columbus/remote/d;

    move-result-object p1

    return-object p1
.end method

.method protected final getExtra()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/remote/e;->extra:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected abstract getTagPrefix()Ljava/lang/String;
.end method

.method protected final nonce()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/zeus/columbus/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract parseHttpResponse(Ljava/lang/String;)Lcom/miui/zeus/columbus/ad/enity/IResponseEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
