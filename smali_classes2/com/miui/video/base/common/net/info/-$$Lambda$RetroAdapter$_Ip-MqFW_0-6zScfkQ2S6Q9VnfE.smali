.class public final synthetic Lcom/miui/video/base/common/net/info/-$$Lambda$RetroAdapter$_Ip-MqFW_0-6zScfkQ2S6Q9VnfE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/base/common/net/info/GeneralServiceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/base/common/net/info/GeneralServiceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/base/common/net/info/-$$Lambda$RetroAdapter$_Ip-MqFW_0-6zScfkQ2S6Q9VnfE;->f$0:Lcom/miui/video/base/common/net/info/GeneralServiceInfo;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/info/-$$Lambda$RetroAdapter$_Ip-MqFW_0-6zScfkQ2S6Q9VnfE;->f$0:Lcom/miui/video/base/common/net/info/GeneralServiceInfo;

    invoke-static {v0, p1}, Lcom/miui/video/base/common/net/info/RetroAdapter;->lambda$createService$3(Lcom/miui/video/base/common/net/info/GeneralServiceInfo;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
