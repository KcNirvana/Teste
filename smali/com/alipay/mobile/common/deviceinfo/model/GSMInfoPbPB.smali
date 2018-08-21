.class public final Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;
.super Lcom/squareup/wire/Message;
.source "GSMInfoPbPB.java"


# static fields
.field public static final DEFAULT_CID:Ljava/lang/Integer;

.field public static final DEFAULT_LAC:Ljava/lang/Integer;

.field public static final DEFAULT_MCC:Ljava/lang/Integer;

.field public static final DEFAULT_MNC:Ljava/lang/Integer;

.field public static final DEFAULT_RSSI:Ljava/lang/Integer;

.field public static final TAG_CID:I = 0x3

.field public static final TAG_LAC:I = 0x4

.field public static final TAG_MCC:I = 0x1

.field public static final TAG_MNC:I = 0x2

.field public static final TAG_RSSI:I = 0x5


# instance fields
.field public cid:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public lac:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mcc:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mnc:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public rssi:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->DEFAULT_MCC:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->DEFAULT_MNC:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->DEFAULT_CID:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->DEFAULT_LAC:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->DEFAULT_RSSI:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mcc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mcc:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mnc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mnc:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->cid:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->cid:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->lac:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->lac:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->rssi:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->rssi:Ljava/lang/Integer;

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
    instance-of v2, p1, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mcc:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mcc:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mnc:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mnc:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->cid:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->cid:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->lac:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->lac:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->rssi:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->rssi:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mcc:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mnc:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->cid:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->lac:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->rssi:Ljava/lang/Integer;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mcc:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mcc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mnc:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mnc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->cid:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->cid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->lac:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->lac:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->rssi:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->rssi:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->hashCode:I

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

    :cond_5
    move v0, v1

    goto :goto_3
.end method
