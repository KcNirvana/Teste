.class public Lcom/miui/video/base/common/net/info/GeneralServiceInfo;
.super Lcom/miui/video/base/common/net/info/ServiceInfo;
.source "GeneralServiceInfo.java"


# static fields
.field public static final BASE_URL:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/common/net/info/ServiceInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getCommonParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/common/net/info/ServiceInfo;->getBaseCommonParameters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExtraInterceptor()Lokhttp3/Interceptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraParameters(Lokhttp3/Request;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    return-object v0
.end method
