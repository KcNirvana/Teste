.class final Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$3;
.super Ljava/lang/Object;
.source "MixpanelFCMMessagingService.java"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/MixpanelAPI$InstanceProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService;->trackCampaignReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$campaignId:Ljava/lang/String;

.field final synthetic val$extraLogData:Ljava/lang/String;

.field final synthetic val$messageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$3;->val$extraLogData:Ljava/lang/String;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$3;->val$campaignId:Ljava/lang/String;

    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$3;->val$messageId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V
    .locals 3

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->isAppInForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$3;->val$extraLogData:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$3;->val$extraLogData:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_0
    :try_start_1
    const-string v1, "campaign_id"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$3;->val$campaignId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "message_id"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$3;->val$messageId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "message_type"

    const-string v2, "push"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$campaign_received"

    invoke-virtual {p1, v1, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method
