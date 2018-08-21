.class public final Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;
.super Lcom/squareup/wire/Message;
.source "TidInfoPbPB.java"


# static fields
.field public static final DEFAULT_APPPACKAGENAME:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENTKEY:Ljava/lang/String; = ""

.field public static final DEFAULT_DEVICENAME:Ljava/lang/String; = ""

.field public static final DEFAULT_IMEI:Ljava/lang/String; = ""

.field public static final DEFAULT_IMSI:Ljava/lang/String; = ""

.field public static final DEFAULT_PRODUCTID:Ljava/lang/String; = ""

.field public static final DEFAULT_PRODUCTVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_TID:Ljava/lang/String; = ""

.field public static final DEFAULT_UTDID:Ljava/lang/String; = ""

.field public static final DEFAULT_VIMEI:Ljava/lang/String; = ""

.field public static final DEFAULT_VIMSI:Ljava/lang/String; = ""

.field public static final TAG_APPPACKAGENAME:I = 0xa

.field public static final TAG_CLIENTKEY:I = 0x7

.field public static final TAG_DEVICENAME:I = 0xb

.field public static final TAG_IMEI:I = 0x5

.field public static final TAG_IMSI:I = 0x6

.field public static final TAG_PRODUCTID:I = 0x8

.field public static final TAG_PRODUCTVERSION:I = 0x9

.field public static final TAG_TID:I = 0x1

.field public static final TAG_UTDID:I = 0x2

.field public static final TAG_VIMEI:I = 0x4

.field public static final TAG_VIMSI:I = 0x3


# instance fields
.field public appPackageName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public clientKey:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public deviceName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public imei:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public imsi:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public productId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public productVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public utdid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public vimei:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public vimsi:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->tid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->tid:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->utdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->utdid:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimsi:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimei:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimei:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imei:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imei:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imsi:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->clientKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->clientKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->appPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->appPackageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->deviceName:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->tid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->tid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->utdid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->utdid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimsi:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimsi:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimei:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimei:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imei:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imei:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imsi:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->clientKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->clientKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->appPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->appPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->tid:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->utdid:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimsi:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimei:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imei:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imsi:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->clientKey:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productId:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->appPackageName:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->deviceName:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->tid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->tid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->utdid:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->utdid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimsi:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimei:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imei:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->clientKey:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->clientKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productId:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productVersion:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->appPackageName:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->deviceName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->deviceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_6

    :cond_9
    move v0, v1

    goto :goto_7

    :cond_a
    move v0, v1

    goto :goto_8

    :cond_b
    move v0, v1

    goto :goto_9
.end method
