.class public final Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;
.super Lcom/squareup/wire/Message;
.source "WifiInfoPbPB.java"


# static fields
.field public static final DEFAULT_RSSI:Ljava/lang/Double;

.field public static final DEFAULT_SSID:Ljava/lang/String; = ""

.field public static final DEFAULT_WIFIMAC:Ljava/lang/String; = ""

.field public static final TAG_RSSI:I = 0x3

.field public static final TAG_SSID:I = 0x2

.field public static final TAG_WIFIMAC:I = 0x1


# instance fields
.field public rssi:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public ssid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public wifiMac:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->DEFAULT_RSSI:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->wifiMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->wifiMac:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->ssid:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->rssi:Ljava/lang/Double;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->rssi:Ljava/lang/Double;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->wifiMac:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->wifiMac:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->ssid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->rssi:Ljava/lang/Double;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->rssi:Ljava/lang/Double;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->wifiMac:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->ssid:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Double;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->rssi:Ljava/lang/Double;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->wifiMac:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->wifiMac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->ssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->rssi:Ljava/lang/Double;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->rssi:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
