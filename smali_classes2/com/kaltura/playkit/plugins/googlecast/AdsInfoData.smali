.class Lcom/kaltura/playkit/plugins/googlecast/AdsInfoData;
.super Ljava/lang/Object;
.source "AdsInfoData.java"


# instance fields
.field private adsBreakInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private isPlayingAd:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAdsBreakInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/AdsInfoData;->adsBreakInfo:Ljava/util/List;

    return-object v0
.end method

.method getIsPlayingAd()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/AdsInfoData;->isPlayingAd:Ljava/lang/Boolean;

    return-object v0
.end method
