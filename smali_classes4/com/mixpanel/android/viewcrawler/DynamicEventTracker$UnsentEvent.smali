.class Lcom/mixpanel/android/viewcrawler/DynamicEventTracker$UnsentEvent;
.super Ljava/lang/Object;
.source "DynamicEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/viewcrawler/DynamicEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnsentEvent"
.end annotation


# instance fields
.field public final eventName:Ljava/lang/String;

.field public final properties:Lorg/json/JSONObject;

.field public final timeSentMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/DynamicEventTracker$UnsentEvent;->eventName:Ljava/lang/String;

    iput-object p2, p0, Lcom/mixpanel/android/viewcrawler/DynamicEventTracker$UnsentEvent;->properties:Lorg/json/JSONObject;

    iput-wide p3, p0, Lcom/mixpanel/android/viewcrawler/DynamicEventTracker$UnsentEvent;->timeSentMillis:J

    return-void
.end method
