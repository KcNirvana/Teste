.class Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$FlushDescription;
.super Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$MixpanelDescription;
.source "AnalyticsMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlushDescription"
.end annotation


# instance fields
.field private final checkDecide:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$FlushDescription;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$MixpanelDescription;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$FlushDescription;->checkDecide:Z

    return-void
.end method


# virtual methods
.method public shouldCheckDecide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$FlushDescription;->checkDecide:Z

    return v0
.end method
