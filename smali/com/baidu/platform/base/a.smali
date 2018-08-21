.class public abstract Lcom/baidu/platform/base/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/util/concurrent/locks/Lock;

.field private b:Lcom/baidu/mapapi/http/AsyncHttpClient;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Lcom/baidu/mapapi/search/district/DistrictResult;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mapapi/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/mapapi/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/base/a;->b:Lcom/baidu/mapapi/http/AsyncHttpClient;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/platform/base/a;->c:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/base/a;->a:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platform/base/a;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/base/a;->e:Lcom/baidu/mapapi/search/district/DistrictResult;

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/base/a;)Lcom/baidu/mapapi/http/AsyncHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/base/a;->b:Lcom/baidu/mapapi/http/AsyncHttpClient;

    return-object v0
.end method

.method private a(Lcom/baidu/mapapi/http/AsyncHttpClient;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;Lcom/baidu/mapapi/search/core/SearchResult;)V
    .locals 2

    check-cast p3, Lcom/baidu/mapapi/search/district/DistrictResult;

    invoke-virtual {p3}, Lcom/baidu/mapapi/search/district/DistrictResult;->getCityName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/platform/core/a/c;

    invoke-direct {v1, v0}, Lcom/baidu/platform/core/a/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/platform/core/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/baidu/mapapi/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/http/HttpClient$HttpStateError;Lcom/baidu/platform/base/b;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{SDK_InnerError:{httpStateError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/platform/base/b;->a(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/SearchResult;

    move-result-object v0

    invoke-direct {p0, v0, p3, p2}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;Lcom/baidu/platform/base/b;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;Lcom/baidu/platform/base/b;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/base/a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/platform/base/a$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/baidu/platform/base/a$2;-><init>(Lcom/baidu/platform/base/a;Lcom/baidu/platform/base/b;Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/base/a;Lcom/baidu/mapapi/http/HttpClient$HttpStateError;Lcom/baidu/platform/base/b;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/mapapi/http/HttpClient$HttpStateError;Lcom/baidu/platform/base/b;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/base/a;Ljava/lang/String;Lcom/baidu/platform/base/b;Ljava/lang/Object;Lcom/baidu/mapapi/http/AsyncHttpClient;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/baidu/platform/base/a;->a(Ljava/lang/String;Lcom/baidu/platform/base/b;Ljava/lang/Object;Lcom/baidu/mapapi/http/AsyncHttpClient;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/platform/base/b;Ljava/lang/Object;Lcom/baidu/mapapi/http/AsyncHttpClient;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;)V
    .locals 3

    invoke-virtual {p2, p1}, Lcom/baidu/platform/base/b;->a(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/SearchResult;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/platform/base/b;Lcom/baidu/mapapi/search/core/SearchResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p4, p5, v1}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/mapapi/http/AsyncHttpClient;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;Lcom/baidu/mapapi/search/core/SearchResult;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Lcom/baidu/platform/core/a/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/platform/base/a;->e:Lcom/baidu/mapapi/search/district/DistrictResult;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/baidu/mapapi/search/district/DistrictResult;

    iget-object v2, p0, Lcom/baidu/platform/base/a;->e:Lcom/baidu/mapapi/search/district/DistrictResult;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/district/DistrictResult;->getCityCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/district/DistrictResult;->setCityCode(I)V

    move-object v0, v1

    check-cast v0, Lcom/baidu/mapapi/search/district/DistrictResult;

    iget-object v2, p0, Lcom/baidu/platform/base/a;->e:Lcom/baidu/mapapi/search/district/DistrictResult;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/district/DistrictResult;->getCenterPt()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/district/DistrictResult;->setCenterPt(Lcom/baidu/mapapi/model/LatLng;)V

    :cond_1
    invoke-direct {p0, v1, p3, p2}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;Lcom/baidu/platform/base/b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platform/base/a;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/base/a;->e:Lcom/baidu/mapapi/search/district/DistrictResult;

    check-cast p2, Lcom/baidu/platform/core/a/b;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/baidu/platform/core/a/b;->a(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, p3, p2}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;Lcom/baidu/platform/base/b;)V

    goto :goto_0
.end method

.method private a(Lcom/baidu/platform/base/b;Lcom/baidu/mapapi/search/core/SearchResult;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/baidu/platform/core/a/b;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v0, p2

    check-cast v0, Lcom/baidu/mapapi/search/district/DistrictResult;

    iget-object v0, v0, Lcom/baidu/mapapi/search/district/DistrictResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v3, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/baidu/mapapi/search/district/DistrictResult;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/district/DistrictResult;->getCityName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/baidu/platform/base/a;->d:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/baidu/platform/base/a;->d:Z

    check-cast p2, Lcom/baidu/mapapi/search/district/DistrictResult;

    iput-object p2, p0, Lcom/baidu/platform/base/a;->e:Lcom/baidu/mapapi/search/district/DistrictResult;

    check-cast p1, Lcom/baidu/platform/core/a/b;

    invoke-virtual {p1, v2}, Lcom/baidu/platform/core/a/b;->a(Z)V

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/baidu/platform/base/c;Ljava/lang/Object;Lcom/baidu/platform/base/b;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const-class v1, Lcom/baidu/platform/base/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "The SearchParser is null, must be applied."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/baidu/platform/base/c;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "{SDK_InnerError:{PermissionCheckError:Error}}"

    invoke-virtual {p3, v1}, Lcom/baidu/platform/base/b;->a(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/SearchResult;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;Lcom/baidu/platform/base/b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/base/a;->b:Lcom/baidu/mapapi/http/AsyncHttpClient;

    new-instance v2, Lcom/baidu/platform/base/a$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/baidu/platform/base/a$1;-><init>(Lcom/baidu/platform/base/a;Lcom/baidu/platform/base/b;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
