.class public final Lcom/alipay/mobile/common/http/c/c;
.super Ljava/lang/Object;
.source "LoaderFactory.java"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alipay/mobile/common/http/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/http/c/c;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/alipay/mobile/common/http/c/c;->a:Ljava/util/HashMap;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobile/common/http/c/d;

    invoke-direct {v2}, Lcom/alipay/mobile/common/http/c/d;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/mobile/common/http/c/c;->a:Ljava/util/HashMap;

    const-class v1, Ljava/io/File;

    new-instance v2, Lcom/alipay/mobile/common/http/c/a;

    invoke-direct {v2}, Lcom/alipay/mobile/common/http/c/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/http/g;)Lcom/alipay/mobile/common/http/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alipay/mobile/common/http/g;",
            ")",
            "Lcom/alipay/mobile/common/http/c/b",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/alipay/mobile/common/http/c/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/http/c/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/c/b;->a()Lcom/alipay/mobile/common/http/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/http/c/b;->a(Lcom/alipay/mobile/common/http/g;)V

    return-object v0
.end method
