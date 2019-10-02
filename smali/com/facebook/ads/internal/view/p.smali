.class public Lcom/facebook/ads/internal/view/p;
.super Lcom/facebook/ads/internal/view/i/a;


# static fields
.field private static final b:Ljava/lang/String; = "p"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/facebook/ads/internal/view/i/b/l;

.field private final e:Lcom/facebook/ads/internal/view/i/b/j;

.field private final f:Lcom/facebook/ads/internal/view/i/b/d;

.field private final g:Lcom/facebook/ads/internal/adapters/v;

.field private h:Lcom/facebook/ads/internal/s/c;

.field private i:Lcom/facebook/ads/internal/view/i/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n:Lcom/facebook/ads/internal/view/q;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private o:Lcom/facebook/ads/NativeAd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/i/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/p;->c:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/internal/view/p$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/p$1;-><init>(Lcom/facebook/ads/internal/view/p;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/p;->d:Lcom/facebook/ads/internal/view/i/b/l;

    new-instance v0, Lcom/facebook/ads/internal/view/p$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/p$2;-><init>(Lcom/facebook/ads/internal/view/p;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/p;->e:Lcom/facebook/ads/internal/view/i/b/j;

    new-instance v0, Lcom/facebook/ads/internal/view/p$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/p$3;-><init>(Lcom/facebook/ads/internal/view/p;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/p;->f:Lcom/facebook/ads/internal/view/i/b/d;

    new-instance v0, Lcom/facebook/ads/internal/adapters/v;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/adapters/v;-><init>(Lcom/facebook/ads/internal/view/p;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/p;->g:Lcom/facebook/ads/internal/adapters/v;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/p;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/view/i/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/ads/internal/view/p;->c:Ljava/lang/String;

    new-instance p2, Lcom/facebook/ads/internal/view/p$1;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/p$1;-><init>(Lcom/facebook/ads/internal/view/p;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/p;->d:Lcom/facebook/ads/internal/view/i/b/l;

    new-instance p2, Lcom/facebook/ads/internal/view/p$2;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/p$2;-><init>(Lcom/facebook/ads/internal/view/p;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/p;->e:Lcom/facebook/ads/internal/view/i/b/j;

    new-instance p2, Lcom/facebook/ads/internal/view/p$3;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/p$3;-><init>(Lcom/facebook/ads/internal/view/p;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/p;->f:Lcom/facebook/ads/internal/view/i/b/d;

    new-instance p2, Lcom/facebook/ads/internal/adapters/v;

    invoke-direct {p2, p0, p1}, Lcom/facebook/ads/internal/adapters/v;-><init>(Lcom/facebook/ads/internal/view/p;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/p;->g:Lcom/facebook/ads/internal/adapters/v;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/p;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/view/i/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/ads/internal/view/p;->c:Ljava/lang/String;

    new-instance p2, Lcom/facebook/ads/internal/view/p$1;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/p$1;-><init>(Lcom/facebook/ads/internal/view/p;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/p;->d:Lcom/facebook/ads/internal/view/i/b/l;

    new-instance p2, Lcom/facebook/ads/internal/view/p$2;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/p$2;-><init>(Lcom/facebook/ads/internal/view/p;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/p;->e:Lcom/facebook/ads/internal/view/i/b/j;

    new-instance p2, Lcom/facebook/ads/internal/view/p$3;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/p$3;-><init>(Lcom/facebook/ads/internal/view/p;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/p;->f:Lcom/facebook/ads/internal/view/i/b/d;

    new-instance p2, Lcom/facebook/ads/internal/adapters/v;

    invoke-direct {p2, p0, p1}, Lcom/facebook/ads/internal/adapters/v;-><init>(Lcom/facebook/ads/internal/view/p;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/p;->g:Lcom/facebook/ads/internal/adapters/v;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/p;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/view/i/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/ads/internal/view/p;->c:Ljava/lang/String;

    new-instance p2, Lcom/facebook/ads/internal/view/p$1;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/p$1;-><init>(Lcom/facebook/ads/internal/view/p;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/p;->d:Lcom/facebook/ads/internal/view/i/b/l;

    new-instance p2, Lcom/facebook/ads/internal/view/p$2;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/p$2;-><init>(Lcom/facebook/ads/internal/view/p;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/p;->e:Lcom/facebook/ads/internal/view/i/b/j;

    new-instance p2, Lcom/facebook/ads/internal/view/p$3;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/p$3;-><init>(Lcom/facebook/ads/internal/view/p;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/p;->f:Lcom/facebook/ads/internal/view/i/b/d;

    new-instance p2, Lcom/facebook/ads/internal/adapters/v;

    invoke-direct {p2, p0, p1}, Lcom/facebook/ads/internal/adapters/v;-><init>(Lcom/facebook/ads/internal/view/p;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/p;->g:Lcom/facebook/ads/internal/adapters/v;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/p;->t()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/p;)Lcom/facebook/ads/internal/view/q;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/p;->n:Lcom/facebook/ads/internal/view/q;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/p;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "parsing"

    sget v2, Lcom/facebook/ads/internal/w/h/b;->M:I

    new-instance v3, Lcom/facebook/ads/internal/protocol/b;

    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-direct {v3, v4, p1}, Lcom/facebook/ads/internal/protocol/b;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/view/p;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private t()V
    .locals 4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/p;->getEventBus()Lcom/facebook/ads/internal/o/e;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/facebook/ads/internal/o/f;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/p;->d:Lcom/facebook/ads/internal/view/i/b/l;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/facebook/ads/internal/view/p;->e:Lcom/facebook/ads/internal/view/i/b/j;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/facebook/ads/internal/view/p;->f:Lcom/facebook/ads/internal/view/i/b/d;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/o/e;->a([Lcom/facebook/ads/internal/o/f;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/p;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/ads/AudienceNetworkActivity;->getAdActivity()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/p;->i:Lcom/facebook/ads/internal/view/i/b;

    if-nez v2, :cond_0

    const-string v2, "Must setClientToken first"

    :goto_0
    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/view/p;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/internal/view/p;->j:Landroid/net/Uri;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/p;->l:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "Must setVideoURI or setVideoMPD first"

    goto :goto_0

    :cond_1
    const-string v2, "useNativeCtaButton"

    iget-object v3, p0, Lcom/facebook/ads/internal/view/p;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "viewType"

    sget-object v3, Lcom/facebook/ads/internal/settings/a$a;->g:Lcom/facebook/ads/internal/settings/a$a;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "videoURL"

    iget-object v3, p0, Lcom/facebook/ads/internal/view/p;->j:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "clientToken"

    iget-object v3, p0, Lcom/facebook/ads/internal/view/p;->k:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/internal/view/p;->k:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "videoMPD"

    iget-object v3, p0, Lcom/facebook/ads/internal/view/p;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "predefinedOrientationKey"

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "videoSeekTime"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/p;->getCurrentPositionInMillis()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "uniqueId"

    iget-object v3, p0, Lcom/facebook/ads/internal/view/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "videoLogger"

    iget-object v3, p0, Lcom/facebook/ads/internal/view/p;->i:Lcom/facebook/ads/internal/view/i/b;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/i/b;->g()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "video_time_polling_interval"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/p;->getVideoProgressReportIntervalMs()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_2
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/p;->a(Z)V

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/p;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Error occurred while loading fullscreen video activity."

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/o/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/o/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/o/b;->a(Lcom/facebook/ads/internal/o/a;)V

    goto :goto_3

    :catch_1
    :try_start_1
    const-class v2, Lcom/facebook/ads/InterstitialAdActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/p;->o:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/p;->o:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->onCtaBroadcast()V

    :cond_0
    return-void
.end method

.method public getListener()Lcom/facebook/ads/internal/view/q;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/view/p;->n:Lcom/facebook/ads/internal/view/q;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/facebook/ads/internal/view/i/a;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/p;->g:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->a()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/p;->g:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->b()V

    invoke-super {p0}, Lcom/facebook/ads/internal/view/i/a;->onDetachedFromWindow()V

    return-void
.end method

.method public setAdEventManager(Lcom/facebook/ads/internal/s/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/p;->h:Lcom/facebook/ads/internal/s/c;

    return-void
.end method

.method public setClientToken(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/facebook/ads/internal/view/p;->i:Lcom/facebook/ads/internal/view/i/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/p;->i:Lcom/facebook/ads/internal/view/i/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/b;->a()V

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/view/p;->k:Ljava/lang/String;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/facebook/ads/internal/view/i/b;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/p;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/p;->h:Lcom/facebook/ads/internal/s/c;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/facebook/ads/internal/view/i/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/i/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/internal/view/p;->i:Lcom/facebook/ads/internal/view/i/b;

    return-void
.end method

.method public setEnableBackgroundVideo(Z)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/p;->a:Lcom/facebook/ads/internal/view/i/d/c;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/i/d/c;->setBackgroundPlaybackEnabled(Z)V

    return-void
.end method

.method public setListener(Lcom/facebook/ads/internal/view/q;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/internal/view/q;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/ads/internal/view/p;->n:Lcom/facebook/ads/internal/view/q;

    return-void
.end method

.method public setNativeAd(Lcom/facebook/ads/NativeAd;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/NativeAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/ads/internal/view/p;->o:Lcom/facebook/ads/NativeAd;

    return-void
.end method

.method public setVideoCTA(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/ads/internal/view/p;->m:Ljava/lang/String;

    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/p;->i:Lcom/facebook/ads/internal/view/i/b;

    if-nez v0, :cond_0

    const-string p1, "Must setClientToken first"

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/p;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/view/p;->l:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/i/a;->setVideoMPD(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/p;->i:Lcom/facebook/ads/internal/view/i/b;

    if-nez v0, :cond_0

    const-string p1, "Must setClientToken first"

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/p;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/view/p;->j:Landroid/net/Uri;

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/i/a;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method
