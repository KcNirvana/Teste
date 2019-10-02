.class Lcom/kaltura/playkit/plugins/googlecast/OVPCastConfigHelper;
.super Lcom/kaltura/playkit/plugins/googlecast/CastConfigHelper;
.source "OVPCastConfigHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OVPCastConfigHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/googlecast/CastConfigHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSessionInfo(Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getKs()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected setProxyData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    :try_start_0
    const-string p4, "ks"

    invoke-virtual {p3, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "proxyData"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/kaltura/playkit/plugins/googlecast/OVPCastConfigHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
