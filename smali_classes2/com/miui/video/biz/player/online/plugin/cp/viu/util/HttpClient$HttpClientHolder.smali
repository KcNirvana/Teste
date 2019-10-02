.class Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$HttpClientHolder;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpClientHolder"
.end annotation


# static fields
.field static instance:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$1;)V

    sput-object v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$HttpClientHolder;->instance:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
