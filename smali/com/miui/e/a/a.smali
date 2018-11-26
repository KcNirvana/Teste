.class public Lcom/miui/e/a/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackSettingSwitchState(Landroid/content/Context;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/e/a/b;->bBz(Landroid/content/Context;)Z

    move-result v3

    const-string/jumbo v4, "com.android.settings.emergency"

    const-string/jumbo v5, "sos_toggle_total"

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    if-eqz v3, :cond_1

    const-string/jumbo v0, "initial"

    invoke-static {p0}, Lcom/miui/e/a/b;->bBA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "emergency_contact"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "com.android.settings.emergency"

    const-string/jumbo v4, "emergency_contact_number"

    invoke-static {v0, v4, v3}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v3, "com.android.settings.emergency"

    const-string/jumbo v4, "call_for_help_total"

    invoke-static {p0}, Lcom/miui/e/a/b;->bBB(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    int-to-long v6, v0

    invoke-static {v3, v4, v6, v7}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "com.android.settings.emergency"

    const-string/jumbo v3, "send_call_record_total"

    invoke-static {p0}, Lcom/miui/e/a/b;->bBC(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_3
    int-to-long v4, v1

    invoke-static {v0, v3, v4, v5}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "one"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "two"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "three"

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
