.class final Lcom/ooyala/adtech/k;
.super Lcom/ooyala/adtech/Request;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/net/URL;Lcom/ooyala/adtech/TrackingError$PulseError;ILcom/ooyala/adtech/d;)V
    .locals 1

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->TRACKER:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {p0, p4, v0}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    invoke-static {p1, p3, p2}, Lcom/ooyala/adtech/k;->a(Ljava/net/URL;ILcom/ooyala/adtech/TrackingError$PulseError;)Ljava/net/URL;

    move-result-object p1

    sget p2, Lcom/ooyala/adtech/Request;->a:F

    new-instance p3, Lcom/ooyala/adtech/k$2;

    invoke-direct {p3, p0}, Lcom/ooyala/adtech/k$2;-><init>(Lcom/ooyala/adtech/k;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/ooyala/adtech/k;->a(Ljava/net/URL;FLcom/ooyala/adtech/HTTPRequest$b;)V

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Lcom/ooyala/adtech/TrackingError$a;Lcom/ooyala/adtech/d;)V
    .locals 1

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->TRACKER:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {p0, p3, v0}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    invoke-static {p1, p2}, Lcom/ooyala/adtech/k;->a(Ljava/net/URL;Lcom/ooyala/adtech/TrackingError$a;)Ljava/net/URL;

    move-result-object p1

    sget p2, Lcom/ooyala/adtech/Request;->a:F

    new-instance p3, Lcom/ooyala/adtech/k$1;

    invoke-direct {p3, p0}, Lcom/ooyala/adtech/k$1;-><init>(Lcom/ooyala/adtech/k;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/ooyala/adtech/k;->a(Ljava/net/URL;FLcom/ooyala/adtech/HTTPRequest$b;)V

    return-void
.end method

.method private static a(Ljava/net/URL;ILcom/ooyala/adtech/TrackingError$PulseError;)Ljava/net/URL;
    .locals 2

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\[PULSE_ERROR\\]|%5BPULSE_ERROR%5D"

    iget p2, p2, Lcom/ooyala/adtech/TrackingError$PulseError;->a:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\\[PASSBACK_INDEX\\]|%5BPASSBACK_INDEX%5D"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\[CACHEBUSTING\\]|%5BCACHEBUSTING%5D"

    invoke-static {}, Lcom/ooyala/adtech/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    return-object p0
.end method

.method private static a(Ljava/net/URL;Lcom/ooyala/adtech/TrackingError$a;)Ljava/net/URL;
    .locals 2

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\[ERRORCODE\\]|%5BERRORCODE%5D"

    iget p1, p1, Lcom/ooyala/adtech/TrackingError$a;->A:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\[CACHEBUSTING\\]|%5BCACHEBUSTING%5D"

    invoke-static {}, Lcom/ooyala/adtech/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method
