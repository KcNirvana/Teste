.class Lcom/mixpanel/android/mpmetrics/DisplayTrigger;
.super Ljava/lang/Object;
.source "DisplayTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ANY_EVENT:Ljava/lang/String; = "$any_event"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mixpanel/android/mpmetrics/DisplayTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVENT_KEY:Ljava/lang/String; = "event"

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.DisplayTrigger"

.field private static final SELECTOR_KEY:Ljava/lang/String; = "selector"


# instance fields
.field private final mEvaluator:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator;

.field private final mEventName:Ljava/lang/String;

.field private final mJSONSelector:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger$1;

    invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/DisplayTrigger$1;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mEventName:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "MixpanelAPI.DisplayTrigger"

    const-string v2, "Error parsing selector from display_trigger"

    invoke-static {v1, v2, p1}, Lcom/mixpanel/android/util/MPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mJSONSelector:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mJSONSelector:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator;

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mJSONSelector:Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator;-><init>(Lorg/json/JSONObject;)V

    :cond_0
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mEvaluator:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/mpmetrics/BadDecideObjectException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mEventName:Ljava/lang/String;

    const-string v0, "selector"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mJSONSelector:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mJSONSelector:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator;

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mJSONSelector:Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mEvaluator:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator;

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/mixpanel/android/mpmetrics/BadDecideObjectException;

    const-string v1, "Event triggered notification JSON was unexpected or bad"

    invoke-direct {v0, v1, p1}, Lcom/mixpanel/android/mpmetrics/BadDecideObjectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public matchesEventDescription(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mEventName:Ljava/lang/String;

    const-string v2, "$any_event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;->getEventName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mEventName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mEvaluator:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mEvaluator:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator;

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;->getProperties()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator;->evaluate(Lorg/json/JSONObject;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v1, "MixpanelAPI.DisplayTrigger"

    const-string v2, "Error evaluating selector"

    invoke-static {v1, v2, p1}, Lcom/mixpanel/android/util/MPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mEventName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mixpanel/android/mpmetrics/DisplayTrigger;->mJSONSelector:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
