.class public final synthetic Lcom/miui/video/base/common/net/info/-$$Lambda$RetroAdapter$K0HeFPMYzG57B1Al-p9V2YmwSBU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/base/common/net/info/GeneralServiceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/base/common/net/info/GeneralServiceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/base/common/net/info/-$$Lambda$RetroAdapter$K0HeFPMYzG57B1Al-p9V2YmwSBU;->f$0:Lcom/miui/video/base/common/net/info/GeneralServiceInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/info/-$$Lambda$RetroAdapter$K0HeFPMYzG57B1Al-p9V2YmwSBU;->f$0:Lcom/miui/video/base/common/net/info/GeneralServiceInfo;

    check-cast p1, Lokhttp3/Interceptor$Chain;

    invoke-static {v0, p1}, Lcom/miui/video/base/common/net/info/RetroAdapter;->lambda$null$2(Lcom/miui/video/base/common/net/info/GeneralServiceInfo;Lokhttp3/Interceptor$Chain;)Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1
.end method
