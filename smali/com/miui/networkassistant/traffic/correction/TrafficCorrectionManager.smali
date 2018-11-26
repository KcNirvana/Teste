.class public Lcom/miui/networkassistant/traffic/correction/TrafficCorrectionManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TRAFFIC_CORRECTION_MIUI:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTrafficCorrectionInstance(ILandroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/networkassistant/traffic/correction/TrafficCorrectionManager;->getTrafficCorrectionInstance(ILandroid/content/Context;Ljava/lang/String;IZ)Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    move-result-object v0

    return-object v0
.end method

.method private static getTrafficCorrectionInstance(ILandroid/content/Context;Ljava/lang/String;IZ)Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p1, p2, v0}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;)Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;

    move-result-object v0

    :cond_0
    return-object v0

    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getTrafficCorrectionInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/miui/networkassistant/traffic/correction/TrafficCorrectionManager;->getTrafficCorrectionInstance(ILandroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    move-result-object v0

    return-object v0
.end method
