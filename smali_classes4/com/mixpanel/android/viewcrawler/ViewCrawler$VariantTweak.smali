.class Lcom/mixpanel/android/viewcrawler/ViewCrawler$VariantTweak;
.super Ljava/lang/Object;
.source "ViewCrawler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/viewcrawler/ViewCrawler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariantTweak"
.end annotation


# instance fields
.field public final tweak:Lorg/json/JSONObject;

.field public final tweakName:Ljava/lang/String;

.field public final variantId:Lcom/mixpanel/android/util/MPPair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mixpanel/android/util/MPPair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/mixpanel/android/util/MPPair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/mixpanel/android/util/MPPair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler$VariantTweak;->tweakName:Ljava/lang/String;

    iput-object p2, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler$VariantTweak;->tweak:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler$VariantTweak;->variantId:Lcom/mixpanel/android/util/MPPair;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/mixpanel/android/viewcrawler/ViewCrawler$VariantTweak;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$VariantTweak;->hashCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler$VariantTweak;->tweakName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
