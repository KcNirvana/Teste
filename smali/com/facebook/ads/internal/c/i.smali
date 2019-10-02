.class public Lcom/facebook/ads/internal/c/i;
.super Lcom/facebook/ads/internal/c/b;


# annotations
.annotation build Landroid/support/annotation/UiThread;
.end annotation


# instance fields
.field private final e:Lcom/facebook/ads/internal/c/j;

.field private f:Lcom/facebook/ads/internal/c/e;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/c/j;)V
    .locals 1

    iget-object v0, p1, Lcom/facebook/ads/internal/c/j;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/c/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    return-void
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x7d2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/c/i;->a(ILandroid/os/Bundle;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/c/i;->b:Lcom/facebook/ads/internal/c/h;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/c/h;->b()V

    iget-object v1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/c/j;->a(Lcom/facebook/ads/RewardedVideoAd;)V

    return-void
.end method


# virtual methods
.method a()Landroid/os/Message;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "STR_PLACEMENT_KEY"

    iget-object v3, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object v3, v3, Lcom/facebook/ads/internal/c/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "STR_AD_ID_KEY"

    iget-object v3, p0, Lcom/facebook/ads/internal/c/i;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "STR_BID_PAYLOAD_KEY"

    iget-object v3, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object v3, v3, Lcom/facebook/ads/internal/c/j;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "STR_EXTRA_HINTS_KEY"

    iget-object v3, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object v3, v3, Lcom/facebook/ads/internal/c/j;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "BOOL_RV_FAIL_ON_CACHE_FAILURE_KEY"

    iget-object v3, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-boolean v3, v3, Lcom/facebook/ads/internal/c/j;->g:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SRL_RV_REWARD_DATA_KEY"

    iget-object v3, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object v3, v3, Lcom/facebook/ads/internal/c/j;->e:Lcom/facebook/ads/RewardData;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "BUNDLE_SETTINGS_KEY"

    sget-object v3, Lcom/facebook/ads/internal/settings/AdInternalSettings;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public a(Landroid/os/Message;)V
    .locals 9

    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/j;->a()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->a:Landroid/content/Context;

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

    if-eq v1, v2, :cond_a

    const/16 v2, 0x834

    if-eq v1, v2, :cond_3

    const/16 v4, 0x837

    if-eq v1, v4, :cond_a

    const/16 v4, 0x83a

    if-eq v1, v4, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/internal/c/i;->b:Lcom/facebook/ads/internal/c/h;

    const-string v3, "Received show confirmation."

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/internal/c/i;->b:Lcom/facebook/ads/internal/c/h;

    const-string v3, "Received load confirmation."

    :goto_0
    invoke-virtual {v1, v3}, Lcom/facebook/ads/internal/c/h;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/c/i;->d:Lcom/facebook/ads/internal/c/a;

    sget-object v4, Lcom/facebook/ads/internal/c/a$a;->e:Lcom/facebook/ads/internal/c/a$a;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/internal/c/a;->a(Lcom/facebook/ads/internal/c/a$a;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/c/i;->b:Lcom/facebook/ads/internal/c/h;

    iget-boolean v1, v1, Lcom/facebook/ads/internal/c/h;->b:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/facebook/ads/internal/c/i;->h()V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    invoke-virtual {v1, v3}, Lcom/facebook/ads/internal/c/j;->a(Lcom/facebook/ads/RewardedVideoAd;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/internal/c/i;->d:Lcom/facebook/ads/internal/c/a;

    sget-object v4, Lcom/facebook/ads/internal/c/a$a;->c:Lcom/facebook/ads/internal/c/a$a;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/internal/c/a;->a(Lcom/facebook/ads/internal/c/a$a;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "BUNDLE_EXTRAS_KEY"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    const-string v5, "LONG_INVALIDATION_TIME_KEY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/facebook/ads/internal/c/j;->i:J

    iget-object v4, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    const-string v5, "INT_RV_VIDEO_DURATION_KEY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lcom/facebook/ads/internal/c/j;->h:I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/internal/c/i;->a:Landroid/content/Context;

    const-string v4, "api"

    sget v5, Lcom/facebook/ads/internal/w/h/b;->m:I

    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing bundle for message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v5, v6}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object v1, v1, Lcom/facebook/ads/internal/c/j;->c:Lcom/facebook/ads/RewardedVideoAdListener;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v2, :cond_9

    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_2
    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/j;->c:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {p1}, Lcom/facebook/ads/RewardedVideoAdListener;->onRewardedVideoClosed()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/j;->c:Lcom/facebook/ads/RewardedVideoAdListener;

    instance-of p1, p1, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/j;->c:Lcom/facebook/ads/RewardedVideoAdListener;

    check-cast p1, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    invoke-interface {p1}, Lcom/facebook/ads/S2SRewardedVideoAdListener;->onRewardServerFailed()V

    :cond_6
    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/j;->c:Lcom/facebook/ads/RewardedVideoAdListener;

    instance-of p1, p1, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/j;->c:Lcom/facebook/ads/RewardedVideoAdListener;

    check-cast p1, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    invoke-interface {p1}, Lcom/facebook/ads/S2SRewardedVideoAdListener;->onRewardServerSuccess()V

    :cond_7
    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/j;->c:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {p1}, Lcom/facebook/ads/RewardedVideoAdListener;->onRewardedVideoCompleted()V

    :goto_3
    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/j;->c:Lcom/facebook/ads/RewardedVideoAdListener;

    instance-of p1, p1, Lcom/facebook/ads/RewardedVideoAdExtendedListener;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/j;->c:Lcom/facebook/ads/RewardedVideoAdListener;

    check-cast p1, Lcom/facebook/ads/RewardedVideoAdExtendedListener;

    invoke-interface {p1}, Lcom/facebook/ads/RewardedVideoAdExtendedListener;->onRewardedVideoActivityDestroyed()V

    :cond_8
    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/j;->c:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {p1, v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/j;->c:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {p1, v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    return-void

    :cond_9
    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/j;->c:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {p1, v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    return-void

    :cond_a
    iget-object v1, p0, Lcom/facebook/ads/internal/c/i;->d:Lcom/facebook/ads/internal/c/a;

    sget-object v2, Lcom/facebook/ads/internal/c/a$a;->g:Lcom/facebook/ads/internal/c/a$a;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/c/a;->a(Lcom/facebook/ads/internal/c/a$a;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/c/i;->b:Lcom/facebook/ads/internal/c/h;

    iget-boolean v1, v1, Lcom/facebook/ads/internal/c/h;->b:Z

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/facebook/ads/internal/c/i;->h()V

    :cond_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "BUNDLE_EXTRAS_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string p1, "INT_ERROR_CODE_KEY"

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "STR_ERROR_MESSAGE_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object v2, v2, Lcom/facebook/ads/internal/c/j;->c:Lcom/facebook/ads/RewardedVideoAdListener;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object v2, v2, Lcom/facebook/ads/internal/c/j;->c:Lcom/facebook/ads/RewardedVideoAdListener;

    new-instance v4, Lcom/facebook/ads/AdError;

    invoke-direct {v4, p1, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v0, v4}, Lcom/facebook/ads/RewardedVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    goto :goto_4

    :cond_c
    const-string p1, "FBAudienceNetwork"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->a:Landroid/content/Context;

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
    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/internal/c/j;->a(Lcom/facebook/ads/RewardedVideoAd;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7da
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x838
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/facebook/ads/RewardData;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iput-object p1, v0, Lcom/facebook/ads/internal/c/j;->e:Lcom/facebook/ads/RewardData;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->b:Lcom/facebook/ads/internal/c/h;

    iget-boolean v0, v0, Lcom/facebook/ads/internal/c/h;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SRL_RV_REWARD_DATA_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 p1, 0x7d3

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/internal/c/i;->a(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/c/e;->a(Lcom/facebook/ads/RewardData;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/facebook/ads/RewardedVideoAd;Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->a:Landroid/content/Context;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/internal/c/i;->a(ILcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->d:Lcom/facebook/ads/internal/c/a;

    sget-object v1, Lcom/facebook/ads/internal/c/a$a;->b:Lcom/facebook/ads/internal/c/a$a;

    const-string v3, "load()"

    invoke-virtual {v0, v1, v3}, Lcom/facebook/ads/internal/c/a;->a(Lcom/facebook/ads/internal/c/a$a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/c/j;->a(Lcom/facebook/ads/RewardedVideoAd;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    invoke-virtual {p1, p2, p3}, Lcom/facebook/ads/internal/c/e;->a(Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iput-object p2, p1, Lcom/facebook/ads/internal/c/j;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iput-boolean p3, p1, Lcom/facebook/ads/internal/c/j;->g:Z

    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/j;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/c/i;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->b:Lcom/facebook/ads/internal/c/h;

    iget-boolean p1, p1, Lcom/facebook/ads/internal/c/h;->b:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/c/i;->b()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->b:Lcom/facebook/ads/internal/c/h;

    iput-boolean v2, p1, Lcom/facebook/ads/internal/c/h;->c:Z

    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->b:Lcom/facebook/ads/internal/c/h;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/c/h;->a()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/internal/c/i;->c()V

    :goto_0
    return-void
.end method

.method public a(Lcom/facebook/ads/RewardedVideoAd;I)Z
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->d:Lcom/facebook/ads/internal/c/a;

    sget-object v1, Lcom/facebook/ads/internal/c/a$a;->d:Lcom/facebook/ads/internal/c/a$a;

    const-string v2, "show()"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/c/a;->a(Lcom/facebook/ads/internal/c/a$a;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/c/j;->a(Lcom/facebook/ads/RewardedVideoAd;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->b:Lcom/facebook/ads/internal/c/h;

    iget-boolean p1, p1, Lcom/facebook/ads/internal/c/h;->b:Z

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "INT_RV_APP_ORIENTATION_KEY"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0x7d1

    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/internal/c/i;->a(ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/c/e;->a(I)Z

    move-result p1

    return p1

    :cond_2
    new-instance p1, Lcom/facebook/ads/internal/c/e;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object v2, p0, Lcom/facebook/ads/internal/c/i;->c:Ljava/lang/String;

    invoke-direct {p1, v0, p0, v2}, Lcom/facebook/ads/internal/c/e;-><init>(Lcom/facebook/ads/internal/c/j;Lcom/facebook/ads/internal/c/a/c;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    iget-object p1, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/c/e;->a(I)Z

    return v1
.end method

.method public c()V
    .locals 3

    new-instance v0, Lcom/facebook/ads/internal/c/e;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object v2, p0, Lcom/facebook/ads/internal/c/i;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Lcom/facebook/ads/internal/c/e;-><init>(Lcom/facebook/ads/internal/c/j;Lcom/facebook/ads/internal/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-object v1, v1, Lcom/facebook/ads/internal/c/j;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-boolean v2, v2, Lcom/facebook/ads/internal/c/j;->g:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/c/e;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->b:Lcom/facebook/ads/internal/c/h;

    iget-boolean v0, v0, Lcom/facebook/ads/internal/c/h;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/internal/c/i;->h()V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/e;->a()V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->d:Lcom/facebook/ads/internal/c/a;

    sget-object v1, Lcom/facebook/ads/internal/c/a$a;->f:Lcom/facebook/ads/internal/c/a$a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/c/a;->a(Lcom/facebook/ads/internal/c/a$a;)V

    return-void
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/e;->d()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->d:Lcom/facebook/ads/internal/c/a;

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

    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->f:Lcom/facebook/ads/internal/c/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/e;->c()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-wide v0, v0, Lcom/facebook/ads/internal/c/j;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/internal/w/b/v;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/ads/internal/c/i;->e:Lcom/facebook/ads/internal/c/j;

    iget-wide v2, v2, Lcom/facebook/ads/internal/c/j;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
