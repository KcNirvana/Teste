.class public Lcom/miui/weather2/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/miui/weather2/c/b;

.field private static c:Ljava/lang/String;


# instance fields
.field private b:Lcom/miui/weather2/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/weather2/c/b;->a:Lcom/miui/weather2/c/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/miui/weather2/c/b;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/weather2/c/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/miui/weather2/c/b;
    .locals 1

    new-instance v0, Lcom/miui/weather2/c/b;

    invoke-direct {v0, p0}, Lcom/miui/weather2/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/weather2/c/b;->a:Lcom/miui/weather2/c/b;

    sget-object v0, Lcom/miui/weather2/c/b;->a:Lcom/miui/weather2/c/b;

    return-object v0
.end method

.method private static a()Lcom/squareup/okhttp/OkHttpClient;
    .locals 2

    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    new-instance v1, Lcom/miui/weather2/c/c;

    invoke-direct {v1}, Lcom/miui/weather2/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lretrofit/client/OkClient;

    invoke-static {}, Lcom/miui/weather2/c/b;->a()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lretrofit/client/OkClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    const-class v1, Lcom/miui/weather2/c/a;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/c/a;

    iput-object v0, p0, Lcom/miui/weather2/c/b;->b:Lcom/miui/weather2/c/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lretrofit/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set;",
            "Lretrofit/Callback",
            "<",
            "Lcom/miui/weather2/structures/Status;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/c/b;->b:Lcom/miui/weather2/c/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/miui/weather2/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lretrofit/Callback;)V

    return-void
.end method
