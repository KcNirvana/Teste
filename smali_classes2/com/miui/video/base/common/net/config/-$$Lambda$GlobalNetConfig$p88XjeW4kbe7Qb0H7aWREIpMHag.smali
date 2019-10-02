.class public final synthetic Lcom/miui/video/base/common/net/config/-$$Lambda$GlobalNetConfig$p88XjeW4kbe7Qb0H7aWREIpMHag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/video/base/common/net/config/-$$Lambda$GlobalNetConfig$p88XjeW4kbe7Qb0H7aWREIpMHag;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/base/common/net/config/-$$Lambda$GlobalNetConfig$p88XjeW4kbe7Qb0H7aWREIpMHag;

    invoke-direct {v0}, Lcom/miui/video/base/common/net/config/-$$Lambda$GlobalNetConfig$p88XjeW4kbe7Qb0H7aWREIpMHag;-><init>()V

    sput-object v0, Lcom/miui/video/base/common/net/config/-$$Lambda$GlobalNetConfig$p88XjeW4kbe7Qb0H7aWREIpMHag;->INSTANCE:Lcom/miui/video/base/common/net/config/-$$Lambda$GlobalNetConfig$p88XjeW4kbe7Qb0H7aWREIpMHag;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p1}, Lcom/miui/video/base/common/net/config/GlobalNetConfig;->lambda$addHostHeader$1(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
