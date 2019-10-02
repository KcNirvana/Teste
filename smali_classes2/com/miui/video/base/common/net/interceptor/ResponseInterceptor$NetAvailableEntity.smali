.class Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;
.super Ljava/lang/Object;
.source "ResponseInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetAvailableEntity"
.end annotation


# instance fields
.field modelBase:Lcom/miui/video/base/common/net/model/ModelBase;

.field request:Lokhttp3/Request;

.field requestTime:J

.field response:Lokhttp3/Response;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->response:Lokhttp3/Response;

    iput-object v0, p0, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->request:Lokhttp3/Request;

    iput-object v0, p0, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->modelBase:Lcom/miui/video/base/common/net/model/ModelBase;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;-><init>()V

    return-void
.end method
