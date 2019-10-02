.class public interface abstract Lcom/ooyala/pulse/PulsePauseAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/pulse/PulseAd;


# virtual methods
.method public abstract adClickThroughTriggered()V
.end method

.method public abstract adClosed()V
.end method

.method public abstract adDisplayed()V
.end method

.method public abstract adFailed(Lcom/ooyala/pulse/PulseAdError;)V
.end method

.method public abstract getAdPricing()Lcom/ooyala/pulse/AdPricing;
.end method

.method public abstract getAdSystem()Lcom/ooyala/pulse/AdSystem;
.end method

.method public abstract getAdVerifications()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/pulse/AdVerification;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdvertiser()Ljava/lang/String;
.end method

.method public abstract getCampaignIdentifier()Ljava/lang/String;
.end method

.method public abstract getCandidateNum()I
.end method

.method public abstract getCategories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/pulse/AdCategory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClickThroughURL()Ljava/net/URL;
.end method

.method public abstract getCompanions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/pulse/PulseCompanionAd;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCoreAd()Lcom/ooyala/adtech/Ad;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCustomCampaignIdentifier()Ljava/lang/String;
.end method

.method public abstract getCustomGoalIdentifier()Ljava/lang/String;
.end method

.method public abstract getCustomIdentifier()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getGoalIdentifier()Ljava/lang/String;
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract getMaximumPreparationTime()F
.end method

.method public abstract getResourceType()Ljava/lang/String;
.end method

.method public abstract getResourceURL()Ljava/net/URL;
.end method

.method public abstract getStartTimeout()F
.end method

.method public abstract getSurvey()Ljava/net/URL;
.end method

.method public abstract getSurveys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/pulse/AdSurvey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVariant()Lcom/ooyala/pulse/PulseAd$Variant;
.end method

.method public abstract hasPassback()Z
.end method

.method public abstract isConditionalAd()Z
.end method

.method public abstract isPartOfAnExclusiveCampaign()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract shouldShowCountdown()Z
.end method
