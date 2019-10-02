.class public Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;
.super Ljava/lang/Object;
.source "ResourceParser.java"


# static fields
.field public static final CDN_AKAMAI:Ljava/lang/String; = "Akamai"

.field public static final CDN_CUSTOM:Ljava/lang/String; = "cdn_custom"

.field public static final CDN_FASTLY:Ljava/lang/String; = "Fastly"

.field public static final CDN_HIGHWINDS:Ljava/lang/String; = "Highwinds"

.field public static final CDN_LEVEL3:Ljava/lang/String; = "Level3"

.field private static final PARSER_PRELOADER_KEY:Ljava/lang/String; = "services.ResourceParser"

.field private static final PARSE_DEFAULT_TIMEOUT:J = 0x3L

.field private static final REG_EXP_VIDEO_EXTENSION_PATTERN:Ljava/lang/String; = "(\\S*?(\\.m3u8|\\.m3u|\\.ts|\\.mp4)(?:\\?\\S*|\\n|\\r|$))"

.field public static cdnsAvailable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;",
            ">;"
        }
    .end annotation
.end field

.field public static cdnsEnabled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cdnCode:Ljava/lang/String;

.field private cdns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nodeHost:Ljava/lang/String;

.field private nodeType:Ljava/lang/String;

.field private processedCDNRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private processedCDNRequestResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private realResource:Ljava/lang/String;

.field private regexPattern:Ljava/util/regex/Pattern;

.field private final timeoutHandler:Landroid/os/Handler;

.field private final timeoutRunnable:Ljava/lang/Runnable;

.field private viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "Level3"

    const-string v2, "Akamai"

    const-string v3, "Highwinds"

    const-string v4, "Fastly"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdnsEnabled:Ljava/util/List;

    new-instance v0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$1;

    invoke-direct {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$1;-><init>()V

    sput-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdnsAvailable:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/npaw/youbora/youboralib/managers/ViewManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->realResource:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeHost:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeType:Ljava/lang/String;

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    new-instance p1, Ljava/util/ArrayList;

    sget-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdnsEnabled:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdns:Ljava/util/List;

    const-string p1, "(\\S*?(\\.m3u8|\\.m3u|\\.ts|\\.mp4)(?:\\?\\S*|\\n|\\r|$))"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->regexPattern:Ljava/util/regex/Pattern;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->processedCDNRequestHeaders:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->processedCDNRequestResponses:Ljava/util/List;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->timeoutHandler:Landroid/os/Handler;

    new-instance p1, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$2;

    invoke-direct {p1, p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$2;-><init>(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;)V

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->timeoutRunnable:Ljava/lang/Runnable;

    const-string p1, "(\\S*?(\\.m3u8|\\.m3u|\\.ts|\\.mp4)(?:\\?\\S*|\\n|\\r|$))"

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->regexPattern:Ljava/util/regex/Pattern;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->processedCDNRequestHeaders:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->processedCDNRequestResponses:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;)V
    .locals 0

    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->finish()V

    return-void
.end method

.method static synthetic access$100(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;)V
    .locals 0

    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNAsync()V

    return-void
.end method

.method static synthetic access$200(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->processedCDNRequestHeaders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->processedCDNRequestResponses:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNHeaders(Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseRealResourceAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private finish()V
    .locals 2

    const-string v0, "Resource parser: finish"

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->timeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->communication:Lcom/npaw/youbora/youboralib/com/Communication;

    const-string v1, "services.ResourceParser"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/com/Communication;->hasPreloader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Resource parser: removing preloader"

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->communication:Lcom/npaw/youbora/youboralib/com/Communication;

    const-string v1, "services.ResourceParser"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/com/Communication;->removePreloader(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private parseCDNAsync()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "parseCDNNodeHost"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdns:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v1, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdnsAvailable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNAsync()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->processedCDNRequestHeaders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Resource parser: using previous request response"

    invoke-static {v2}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->processedCDNRequestHeaders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->processedCDNRequestResponses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNHeaders(Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string v1, "Resource parser: new request"

    invoke-static {v1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "method"

    const-string v4, "HEAD"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "requestHeaders"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/npaw/youbora/youboralib/com/Request;

    iget-object v4, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->realResource:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5, v2}, Lcom/npaw/youbora/youboralib/com/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    new-instance v2, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$4;-><init>(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;Ljava/util/Map;Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;)V

    invoke-virtual {v3, v2}, Lcom/npaw/youbora/youboralib/com/Request;->setSuccessListener(Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)Lcom/npaw/youbora/youboralib/com/Request;

    move-result-object v0

    new-instance v1, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$3;

    invoke-direct {v1, p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$3;-><init>(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;)V

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/com/Request;->setFailureListener(Lcom/npaw/youbora/youboralib/com/Request$OnFailureListener;)Lcom/npaw/youbora/youboralib/com/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/com/Request;->send()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->finish()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->finish()V

    :goto_0
    return-void
.end method

.method private parseCDNHeaders(Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;Ljava/util/Map;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->getHeaders()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_9

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;

    invoke-virtual {v3}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;->getType()Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    move-result-object v4

    sget-object v5, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderNone:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    if-ne v4, v5, :cond_6

    invoke-virtual {p1}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->getCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    invoke-virtual {p1}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->getCdnInfoListener()Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN$CDNInfoListener;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v3, v3, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v3}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v3

    const-string v5, "parseCDNNameFrom"

    invoke-virtual {v3, v5}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v3, ""

    :cond_4
    invoke-interface {v4, p2, v3}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN$CDNInfoListener;->getCDNCode(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    iput-object v3, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdnCode:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/4 v4, 0x2

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;->getRegexPattern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    goto :goto_2

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource parser: error compiling regex: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;->getRegexPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNAsync()V

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_12

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_8

    :cond_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_11

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto/16 :goto_7

    :cond_9
    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNAsync()V

    return-void

    :cond_a
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    const-string v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto/16 :goto_6

    :cond_b
    sget-object v7, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$6;->$SwitchMap$com$npaw$youbora$youboralib$services$resourceparser$cdn$CDNHeader$HeaderType:[I

    invoke-virtual {v3}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;->getType()Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;->getType()Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    move-result-object v3

    sget-object v6, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderHostAndType:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    if-ne v3, v6, :cond_d

    iput-object v5, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeHost:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeType:Ljava/lang/String;

    goto :goto_3

    :cond_d
    iput-object v4, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeHost:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeType:Ljava/lang/String;

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource parser: Host found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource parser: Type found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    :goto_4
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNAsync()V

    return-void

    :pswitch_1
    invoke-direct {p0, v5}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeType:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource parser: Type found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_2
    iput-object v5, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeHost:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource parser: Host found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    :goto_5
    iget-object v3, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdnCode:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdnCode:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_f
    invoke-virtual {p1}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->getCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdnCode:Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    :goto_6
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNAsync()V

    return-void

    :cond_11
    :goto_7
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNAsync()V

    return-void

    :cond_12
    :goto_8
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNAsync()V

    return-void

    :cond_13
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNAsync()V

    return-void

    :cond_14
    :goto_9
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNAsync()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseCDNType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "0"

    return-object p1

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "TCP_MISS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "TCP_IMS_HIT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "TCP_MEM_HIT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "MISS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "HIT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "p"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "c"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "TCP_HIT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p1, "0"

    return-object p1

    :pswitch_0
    const-string p1, "4"

    return-object p1

    :pswitch_1
    const-string p1, "3"

    return-object p1

    :pswitch_2
    const-string p1, "2"

    return-object p1

    :pswitch_3
    const-string p1, "1"

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2d8c3e0b -> :sswitch_7
        0x63 -> :sswitch_6
        0x70 -> :sswitch_5
        0x11773 -> :sswitch_4
        0x241cfc -> :sswitch_3
        0xf9d276b -> :sswitch_2
        0x49ff8c65 -> :sswitch_1
        0x7c06c2ba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseRealResourceAsync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->regexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/2addr v2, v0

    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string p2, "m3u8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "m3u"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->realResource:Ljava/lang/String;

    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNAsync()V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p1, Lcom/npaw/youbora/youboralib/com/Request;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2, p2}, Lcom/npaw/youbora/youboralib/com/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p2, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$5;

    invoke-direct {p2, p0, v1}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$5;-><init>(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/npaw/youbora/youboralib/com/Request;->setSuccessListener(Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)Lcom/npaw/youbora/youboralib/com/Request;

    move-result-object p1

    invoke-virtual {p1}, Lcom/npaw/youbora/youboralib/com/Request;->send()V

    goto :goto_1

    :cond_3
    iput-object v1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->realResource:Ljava/lang/String;

    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNAsync()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNAsync()V

    :goto_1
    return-void
.end method

.method private scheduleTimeout()V
    .locals 4

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->timeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->realResource:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeHost:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdnCode:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdnsEnabled:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdns:Ljava/util/List;

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->processedCDNRequestHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->processedCDNRequestResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCDNCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdnCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeHost:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRealResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->realResource:Ljava/lang/String;

    return-object v0
.end method

.method public start()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->realResource:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->nodeHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->communication:Lcom/npaw/youbora/youboralib/com/Communication;

    const-string v1, "services.ResourceParser"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/com/Communication;->addPreloader(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->scheduleTimeout()V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getResource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->realResource:Ljava/lang/String;

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "parseHLS"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->realResource:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseRealResourceAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
