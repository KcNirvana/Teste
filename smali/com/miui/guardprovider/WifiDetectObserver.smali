.class public Lcom/miui/guardprovider/WifiDetectObserver;
.super Lcom/miui/guardprovider/aidl/IWifiDetectObserver$Stub;
.source ""


# static fields
.field private static akF:I


# instance fields
.field private akG:Lcom/miui/antivirus/utils/k;

.field private akH:Lorg/json/JSONObject;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/miui/guardprovider/WifiDetectObserver;->akF:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/guardprovider/aidl/IWifiDetectObserver$Stub;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/miui/guardprovider/WifiDetectObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public aqd(I)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    :try_start_0
    const-string/jumbo v0, "WifiDetectObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wifi result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    sget v1, Lcom/miui/guardprovider/WifiDetectObserver;->akF:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDG(Ljava/lang/String;)V

    const-string/jumbo v0, "WifiDetectObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update wifi result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/guardprovider/a;->getInstance(Landroid/content/Context;)Lcom/miui/guardprovider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/guardprovider/a;->aqh()V

    :cond_0
    :goto_1
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifi_item_connection"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifi_type_approve"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :sswitch_2
    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifi_item_connection"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifi_item_encryption"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifi_item_encryption"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifi_item_fake"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifi_item_dns"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifi_item_dns"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifi_item_fake"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifi_item_dns"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifi_item_fake"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifi_item_arp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akH:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifi_item_arp"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_5
        -0x2 -> :sswitch_4
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_7
        0x100 -> :sswitch_3
        0x101 -> :sswitch_4
        0x102 -> :sswitch_4
        0x103 -> :sswitch_4
        0x105 -> :sswitch_8
        0x106 -> :sswitch_9
    .end sparse-switch
.end method

.method public aqg(Lcom/miui/antivirus/utils/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/guardprovider/WifiDetectObserver;->akG:Lcom/miui/antivirus/utils/k;

    return-void
.end method
