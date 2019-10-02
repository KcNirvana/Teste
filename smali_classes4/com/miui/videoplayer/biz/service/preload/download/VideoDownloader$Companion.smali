.class public final Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;
.super Ljava/lang/Object;
.source "VideoDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoDownloader.kt\ncom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion\n*L\n1#1,316:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000;\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R#\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0011\u001a\u00020\u00128FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014R#\u0010\u0017\u001a\n \u0019*\u0004\u0018\u00010\u00180\u00188FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0016\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;",
        "",
        "()V",
        "HTTP",
        "",
        "HTTPS",
        "LIFO",
        "com/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion$LIFO$1",
        "Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion$LIFO$1;",
        "TAG",
        "UA",
        "cookieStore",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lokhttp3/Cookie;",
        "getCookieStore",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "instance",
        "Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;",
        "getInstance",
        "()Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;",
        "instance$delegate",
        "Lkotlin/Lazy;",
        "mOkHttpClient",
        "Lokhttp3/OkHttpClient;",
        "kotlin.jvm.PlatformType",
        "getMOkHttpClient",
        "()Lokhttp3/OkHttpClient;",
        "mOkHttpClient$delegate",
        "biz_service_preload_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "instance"

    const-string v4, "getInstance()Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mOkHttpClient"

    const-string v4, "getMOkHttpClient()Lokhttp3/OkHttpClient;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCookieStore()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->access$getCookieStore$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public final getInstance()Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->access$getInstance$cp()Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->Companion:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;

    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    return-object v0
.end method

.method public final getMOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 3

    invoke-static {}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->access$getMOkHttpClient$cp()Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->Companion:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;

    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method
