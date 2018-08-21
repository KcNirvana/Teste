.class public final Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;
.super Lcom/squareup/wire/Message;
.source "ConsultRoutePbReqPB.java"


# static fields
.field public static final DEFAULT_PAITYPE:Ljava/lang/String; = ""

.field public static final TAG_DECODEDATA:I = 0x2

.field public static final TAG_EXTDATA:I = 0x4

.field public static final TAG_PAITYPE:I = 0x1

.field public static final TAG_PRODUCTCONTEXT:I = 0x3


# instance fields
.field public decodeData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field

.field public extData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field

.field public paiType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public productContext:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->paiType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->paiType:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->decodeData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    iput-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->decodeData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    iget-object v0, p1, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->productContext:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    iput-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->productContext:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    iget-object v0, p1, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->extData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    iput-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->extData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

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
    instance-of v2, p1, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;

    iget-object v2, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->paiType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->paiType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->decodeData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    iget-object v3, p1, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->decodeData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->productContext:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    iget-object v3, p1, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->productContext:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->extData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    iget-object v3, p1, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->extData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->paiType:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->decodeData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    goto :goto_0

    :pswitch_2
    check-cast p2, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->productContext:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    goto :goto_0

    :pswitch_3
    check-cast p2, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->extData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->paiType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->paiType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->decodeData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->decodeData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->productContext:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->productContext:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->extData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->extData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method
