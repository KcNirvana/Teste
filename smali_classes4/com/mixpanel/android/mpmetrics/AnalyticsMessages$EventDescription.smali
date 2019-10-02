.class Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;
.super Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$MixpanelDescription;
.source "AnalyticsMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventDescription"
.end annotation


# instance fields
.field private final mEventName:Ljava/lang/String;

.field private final mIsAutomatic:Z

.field private final mProperties:Lorg/json/JSONObject;

.field private final mSessionMetadata:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZLorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$MixpanelDescription;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;->mEventName:Ljava/lang/String;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;->mProperties:Lorg/json/JSONObject;

    iput-boolean p4, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;->mIsAutomatic:Z

    iput-object p5, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;->mSessionMetadata:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;->mProperties:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getSessionMetadata()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;->mSessionMetadata:Lorg/json/JSONObject;

    return-object v0
.end method

.method public isAutomatic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;->mIsAutomatic:Z

    return v0
.end method
