.class Lcom/kaltura/playkit/PKDeviceCapabilities$2;
.super Ljava/lang/Object;
.source "PKDeviceCapabilities.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/PKDeviceCapabilities;->widevineModularDrmInfo()Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/PKDeviceCapabilities;

.field final synthetic val$mediaDrmEvents:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/PKDeviceCapabilities;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/PKDeviceCapabilities$2;->this$0:Lcom/kaltura/playkit/PKDeviceCapabilities;

    iput-object p2, p0, Lcom/kaltura/playkit/PKDeviceCapabilities$2;->val$mediaDrmEvents:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 1
    .param p1    # Landroid/media/MediaDrm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p5, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :try_start_0
    invoke-static {p5, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/kaltura/playkit/PKDeviceCapabilities$2;->val$mediaDrmEvents:Lorg/json/JSONArray;

    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "event"

    invoke-virtual {p5, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p3

    const-string p5, "extra"

    invoke-virtual {p3, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "data"

    invoke-virtual {p3, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/kaltura/playkit/PKDeviceCapabilities;->access$100()Lcom/kaltura/playkit/PKLog;

    move-result-object p2

    const-string p3, "JSONError"

    invoke-virtual {p2, p3, p1}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
