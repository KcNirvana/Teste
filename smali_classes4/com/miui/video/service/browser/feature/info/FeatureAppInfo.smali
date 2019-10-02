.class public Lcom/miui/video/service/browser/feature/info/FeatureAppInfo;
.super Lcom/miui/video/common/browser/feature/base/FeatureBase;
.source "FeatureAppInfo.java"


# static fields
.field private static final LINKTYPE:Ljava/lang/String; = "linkType=active"

.field static whitUrlHost:[Ljava/lang/String;


# instance fields
.field private serviceToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http://cdn.awsind0-fusion.fds.api.mi-img.com"

    const-string v1, "https://cdn.awsind0-fusion.fds.api.mi-img.com"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/video/service/browser/feature/info/FeatureAppInfo;->whitUrlHost:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/service/browser/feature/info/FeatureAppInfo;->serviceToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/service/browser/feature/info/FeatureAppInfo;->serviceToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/browser/feature/info/FeatureAppInfo;Lcom/miui/video/common/browser/extension/ExWebViewInterceptor$InterceptLoadUrlParams;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/service/browser/feature/info/FeatureAppInfo;->check(Lcom/miui/video/common/browser/extension/ExWebViewInterceptor$InterceptLoadUrlParams;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/service/browser/feature/info/FeatureAppInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/browser/feature/info/FeatureAppInfo;->serviceToken:Ljava/lang/String;

    return-object p0
.end method

.method private check(Lcom/miui/video/common/browser/extension/ExWebViewInterceptor$InterceptLoadUrlParams;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/miui/video/service/browser/feature/info/FeatureAppInfo;->whitUrlHost:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    iget-object v3, p1, Lcom/miui/video/common/browser/extension/ExWebViewInterceptor$InterceptLoadUrlParams;->url:Ljava/lang/String;

    sget-object v5, Lcom/miui/video/service/browser/feature/info/FeatureAppInfo;->whitUrlHost:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/miui/video/common/browser/extension/ExWebViewInterceptor$InterceptLoadUrlParams;->url:Ljava/lang/String;

    const-string v1, "linkType=active"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    return v4

    :cond_3
    return v0
.end method


# virtual methods
.method public init()V
    .locals 1

    new-instance v0, Lcom/miui/video/service/browser/feature/info/FeatureAppInfo$1;

    invoke-direct {v0, p0}, Lcom/miui/video/service/browser/feature/info/FeatureAppInfo$1;-><init>(Lcom/miui/video/service/browser/feature/info/FeatureAppInfo;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/service/browser/feature/info/FeatureAppInfo;->setExtensionWebViewInterceptor(Lcom/miui/video/common/browser/extension/ExWebViewInterceptor;)V

    return-void
.end method
