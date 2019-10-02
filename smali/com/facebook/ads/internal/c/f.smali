.class public Lcom/facebook/ads/internal/c/f;
.super Lcom/facebook/ads/internal/c/b;


# annotations
.annotation build Landroid/support/annotation/UiThread;
.end annotation


# instance fields
.field private final e:Lcom/facebook/ads/internal/c/g;

.field private f:Lcom/facebook/ads/internal/c/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/c/g;)V
    .locals 1

    iget-object v0, p1, Lcom/facebook/ads/internal/c/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/c/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    return-void
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x3f4

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/c/f;->a(ILandroid/os/Bundle;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/c/f;->b:Lcom/facebook/ads/internal/c/h;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/c/h;->b()V

    iget-object v1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/c/g;->a(Lcom/facebook/ads/InterstitialAd;)V

    return-void
.end method


# virtual methods
.method a()Landroid/os/Message;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x3f2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "STR_PLACEMENT_KEY"

    iget-object v3, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object v3, v3, Lcom/facebook/ads/internal/c/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "STR_AD_ID_KEY"

    iget-object v3, p0, Lcom/facebook/ads/internal/c/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "STR_BID_PAYLOAD_KEY"

    iget-object v3, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object v3, v3, Lcom/facebook/ads/internal/c/g;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "STR_EXTRA_HINTS_KEY"

    iget-object v3, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object v3, v3, Lcom/facebook/ads/internal/c/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SRL_INT_CACHE_FLAGS_KEY"

    iget-object v3, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object v3, v3, Lcom/facebook/ads/internal/c/g;->e:Ljava/util/EnumSet;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "BUNDLE_SETTINGS_KEY"

    sget-object v3, Lcom/facebook/ads/internal/settings/AdInternalSettings;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public a(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/g;->a()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->a:Landroid/content/Context;

    const-string v0, "api"

    sget v1, Lcom/facebook/ads/internal/w/h/b;->n:I

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Ad object is null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    const/16 v2, 0x3fc

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/internal/c/f;->d:Lcom/facebook/ads/internal/c/a;

    sget-object v2, Lcom/facebook/ads/internal/c/a$a;->e:Lcom/facebook/ads/internal/c/a$a;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/c/a;->a(Lcom/facebook/ads/internal/c/a$a;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/c/f;->b:Lcom/facebook/ads/internal/c/h;

    iget-boolean v1, v1, Lcom/facebook/ads/internal/c/h;->b:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/facebook/ads/internal/c/f;->h()V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/internal/c/f;->b:Lcom/facebook/ads/internal/c/h;

    const-string v2, "Received destroy confirmation."

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/internal/c/f;->b:Lcom/facebook/ads/internal/c/h;

    const-string v2, "Received show confirmation."

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/facebook/ads/internal/c/f;->b:Lcom/facebook/ads/internal/c/h;

    const-string v2, "Received load confirmation."

    :goto_0
    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/c/h;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/c/f;->d:Lcom/facebook/ads/internal/c/a;

    sget-object v2, Lcom/facebook/ads/internal/c/a$a;->c:Lcom/facebook/ads/internal/c/a$a;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/c/a;->a(Lcom/facebook/ads/internal/c/a$a;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "BUNDLE_EXTRAS_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    const-string v4, "LONG_INVALIDATION_TIME_KEY"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/facebook/ads/internal/c/g;->g:J

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/internal/c/f;->a:Landroid/content/Context;

    const-string v2, "api"

    sget v4, Lcom/facebook/ads/internal/w/h/b;->m:I

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing bundle for message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v4, v5}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    invoke-virtual {v1, v3}, Lcom/facebook/ads/internal/c/g;->a(Lcom/facebook/ads/InterstitialAd;)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object v1, v1, Lcom/facebook/ads/internal/c/g;->c:Lcom/facebook/ads/InterstitialAdListener;

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_2

    :pswitch_4
    goto :goto_3

    :pswitch_5
    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/g;->c:Lcom/facebook/ads/InterstitialAdListener;

    instance-of p1, p1, Lcom/facebook/ads/InterstitialAdExtendedListener;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/g;->c:Lcom/facebook/ads/InterstitialAdListener;

    check-cast p1, Lcom/facebook/ads/InterstitialAdExtendedListener;

    invoke-interface {p1}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialActivityDestroyed()V

    goto :goto_3

    :pswitch_6
    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/g;->c:Lcom/facebook/ads/InterstitialAdListener;

    invoke-interface {p1, v0}, Lcom/facebook/ads/InterstitialAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/g;->c:Lcom/facebook/ads/InterstitialAdListener;

    invoke-interface {p1, v0}, Lcom/facebook/ads/InterstitialAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/g;->c:Lcom/facebook/ads/InterstitialAdListener;

    invoke-interface {p1, v0}, Lcom/facebook/ads/InterstitialAdListener;->onInterstitialDismissed(Lcom/facebook/ads/Ad;)V

    return-void

    :pswitch_9
    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/g;->c:Lcom/facebook/ads/InterstitialAdListener;

    invoke-interface {p1, v0}, Lcom/facebook/ads/InterstitialAdListener;->onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V

    return-void

    :pswitch_a
    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/g;->c:Lcom/facebook/ads/InterstitialAdListener;

    invoke-interface {p1, v0}, Lcom/facebook/ads/InterstitialAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    :pswitch_b
    iget-object v1, p0, Lcom/facebook/ads/internal/c/f;->d:Lcom/facebook/ads/internal/c/a;

    sget-object v2, Lcom/facebook/ads/internal/c/a$a;->g:Lcom/facebook/ads/internal/c/a$a;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/c/a;->a(Lcom/facebook/ads/internal/c/a$a;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/c/f;->b:Lcom/facebook/ads/internal/c/h;

    iget-boolean v1, v1, Lcom/facebook/ads/internal/c/h;->b:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/facebook/ads/internal/c/f;->h()V

    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "BUNDLE_EXTRAS_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string p1, "INT_ERROR_CODE_KEY"

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "STR_ERROR_MESSAGE_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object v2, v2, Lcom/facebook/ads/internal/c/g;->c:Lcom/facebook/ads/InterstitialAdListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object v2, v2, Lcom/facebook/ads/internal/c/g;->c:Lcom/facebook/ads/InterstitialAdListener;

    new-instance v4, Lcom/facebook/ads/AdError;

    invoke-direct {v4, p1, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v0, v4}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    goto :goto_4

    :cond_8
    const-string p1, "FBAudienceNetwork"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->a:Landroid/content/Context;

    const-string v1, "api"

    sget v2, Lcom/facebook/ads/internal/w/h/b;->m:I

    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing bundle for message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v4}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    :goto_4
    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/internal/c/g;->a(Lcom/facebook/ads/InterstitialAd;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3f7
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3fe
        :pswitch_0
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3fc
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public a(Lcom/facebook/ads/InterstitialAd;Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/InterstitialAd;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->a:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/b/e;->a(Landroid/content/Context;[Ljava/lang/Integer;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 p1, 0xa

    sget-object p2, Lcom/facebook/ads/internal/protocol/AdErrorType;->MISSING_DEPENDENCIES_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/a;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/internal/c/f;->a(ILcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->d:Lcom/facebook/ads/internal/c/a;

    sget-object v1, Lcom/facebook/ads/internal/c/a$a;->b:Lcom/facebook/ads/internal/c/a$a;

    const-string v3, "load()"

    invoke-virtual {v0, v1, v3}, Lcom/facebook/ads/internal/c/a;->a(Lcom/facebook/ads/internal/c/a$a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/c/g;->a(Lcom/facebook/ads/InterstitialAd;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->f:Lcom/facebook/ads/internal/c/d;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->f:Lcom/facebook/ads/internal/c/d;

    invoke-virtual {p1, p2, p3}, Lcom/facebook/ads/internal/c/d;->a(Ljava/util/EnumSet;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iput-object p2, p1, Lcom/facebook/ads/internal/c/g;->e:Ljava/util/EnumSet;

    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iput-object p3, p1, Lcom/facebook/ads/internal/c/g;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/g;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/c/f;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->b:Lcom/facebook/ads/internal/c/h;

    iget-boolean p1, p1, Lcom/facebook/ads/internal/c/h;->b:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/c/f;->b()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->b:Lcom/facebook/ads/internal/c/h;

    iput-boolean v2, p1, Lcom/facebook/ads/internal/c/h;->c:Z

    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->b:Lcom/facebook/ads/internal/c/h;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/c/h;->a()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/internal/c/f;->c()V

    :goto_0
    return-void
.end method

.method public a(Lcom/facebook/ads/InterstitialAd;)Z
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->d:Lcom/facebook/ads/internal/c/a;

    sget-object v1, Lcom/facebook/ads/internal/c/a$a;->d:Lcom/facebook/ads/internal/c/a$a;

    const-string v2, "show()"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/c/a;->a(Lcom/facebook/ads/internal/c/a$a;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/c/g;->a(Lcom/facebook/ads/InterstitialAd;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->b:Lcom/facebook/ads/internal/c/h;

    iget-boolean p1, p1, Lcom/facebook/ads/internal/c/h;->b:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x3f3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/internal/c/f;->a(ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->f:Lcom/facebook/ads/internal/c/d;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->f:Lcom/facebook/ads/internal/c/d;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/c/d;->e()Z

    move-result p1

    return p1

    :cond_2
    new-instance p1, Lcom/facebook/ads/internal/c/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object v2, p0, Lcom/facebook/ads/internal/c/f;->c:Ljava/lang/String;

    invoke-direct {p1, v0, p0, v2}, Lcom/facebook/ads/internal/c/d;-><init>(Lcom/facebook/ads/internal/c/g;Lcom/facebook/ads/internal/c/a/c;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/c/f;->f:Lcom/facebook/ads/internal/c/d;

    iget-object p1, p0, Lcom/facebook/ads/internal/c/f;->f:Lcom/facebook/ads/internal/c/d;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/c/d;->e()Z

    return v1
.end method

.method public c()V
    .locals 3

    new-instance v0, Lcom/facebook/ads/internal/c/d;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object v2, p0, Lcom/facebook/ads/internal/c/f;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Lcom/facebook/ads/internal/c/d;-><init>(Lcom/facebook/ads/internal/c/g;Lcom/facebook/ads/internal/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/c/f;->f:Lcom/facebook/ads/internal/c/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->f:Lcom/facebook/ads/internal/c/d;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object v1, v1, Lcom/facebook/ads/internal/c/g;->e:Ljava/util/EnumSet;

    iget-object v2, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-object v2, v2, Lcom/facebook/ads/internal/c/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/c/d;->a(Ljava/util/EnumSet;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->b:Lcom/facebook/ads/internal/c/h;

    iget-boolean v0, v0, Lcom/facebook/ads/internal/c/h;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/internal/c/f;->h()V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->f:Lcom/facebook/ads/internal/c/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->f:Lcom/facebook/ads/internal/c/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/d;->a()V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->d:Lcom/facebook/ads/internal/c/a;

    sget-object v1, Lcom/facebook/ads/internal/c/a$a;->f:Lcom/facebook/ads/internal/c/a$a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/c/a;->a(Lcom/facebook/ads/internal/c/a$a;)V

    return-void
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->f:Lcom/facebook/ads/internal/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->f:Lcom/facebook/ads/internal/c/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/d;->d()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->d:Lcom/facebook/ads/internal/c/a;

    iget-object v0, v0, Lcom/facebook/ads/internal/c/a;->a:Lcom/facebook/ads/internal/c/a$a;

    sget-object v1, Lcom/facebook/ads/internal/c/a$a;->c:Lcom/facebook/ads/internal/c/a$a;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->f:Lcom/facebook/ads/internal/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->f:Lcom/facebook/ads/internal/c/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/d;->c()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-wide v0, v0, Lcom/facebook/ads/internal/c/g;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/internal/w/b/v;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/ads/internal/c/f;->e:Lcom/facebook/ads/internal/c/g;

    iget-wide v2, v2, Lcom/facebook/ads/internal/c/g;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
