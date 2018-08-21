.class public Lcom/alipay/tag/html/a;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/tag/html/a$a;,
        Lcom/alipay/tag/html/a$c;,
        Lcom/alipay/tag/html/a$b;
    }
.end annotation


# direct methods
.method public static a(FLjava/lang/String;)Landroid/text/Spanned;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/alipay/tag/html/a;->a(FLjava/lang/String;Lcom/alipay/tag/html/a$b;Lcom/alipay/tag/html/a$c;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static a(FLjava/lang/String;Lcom/alipay/tag/html/a$b;Lcom/alipay/tag/html/a$c;)Landroid/text/Spanned;
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "\\r\\n"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, "\\n\\r"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "\\r"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "\\n"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "\r\n"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "\n\r"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "\r"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "\n"

    aput-object v3, v1, v2

    move-object v2, p1

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v5, Lcom/alipay/a/a/a/g;

    invoke-direct {v5}, Lcom/alipay/a/a/a/g;-><init>()V

    :try_start_0
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Lcom/alipay/tag/html/a$a;->a()Lcom/alipay/a/a/a/f;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/alipay/a/a/a/g;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v0, Lcom/alipay/tag/html/HtmlToSpannedConverter;

    move v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/tag/html/HtmlToSpannedConverter;-><init>(FLjava/lang/String;Lcom/alipay/tag/html/a$b;Lcom/alipay/tag/html/a$c;Lcom/alipay/a/a/a/g;)V

    invoke-virtual {v0}, Lcom/alipay/tag/html/HtmlToSpannedConverter;->a()Landroid/text/Spanned;

    move-result-object v0

    return-object v0

    :cond_1
    aget-object v3, v1, v0

    const-string/jumbo v4, "<br>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
