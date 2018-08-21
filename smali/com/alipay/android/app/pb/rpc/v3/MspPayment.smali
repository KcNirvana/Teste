.class public final Lcom/alipay/android/app/pb/rpc/v3/MspPayment;
.super Lcom/squareup/wire/Message;
.source "MspPayment.java"


# static fields
.field public static final DEFAULT_AVAILABLETITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_CHILDREN:Ljava/lang/String; = ""

.field public static final DEFAULT_CLOSEMSG:Ljava/lang/String; = ""

.field public static final DEFAULT_DETAIL:Ljava/lang/String; = ""

.field public static final DEFAULT_DETAILACTION:Ljava/lang/String; = ""

.field public static final DEFAULT_DISCOUNTTITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_DLG:Ljava/lang/String; = ""

.field public static final DEFAULT_ENDCODE:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTINFO:Ljava/lang/String; = ""

.field public static final DEFAULT_FANTITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_HUITITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_LOGO:Ljava/lang/String; = ""

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_PAYMENTFLAG:Ljava/lang/Integer;

.field public static final DEFAULT_TAIL:Ljava/lang/String; = ""

.field public static final DEFAULT_VALUE:Ljava/lang/String; = ""

.field public static final TAG_AVAILABLETITLE:I = 0xb

.field public static final TAG_CHANNELVALUE:I = 0x10

.field public static final TAG_CHILDREN:I = 0x9

.field public static final TAG_CLOSEMSG:I = 0xa

.field public static final TAG_DETAIL:I = 0x7

.field public static final TAG_DETAILACTION:I = 0x5

.field public static final TAG_DISCOUNTTITLE:I = 0xc

.field public static final TAG_DLG:I = 0x8

.field public static final TAG_ENDCODE:I = 0xf

.field public static final TAG_EXTINFO:I = 0x11

.field public static final TAG_FANTITLE:I = 0xd

.field public static final TAG_HUITITLE:I = 0xe

.field public static final TAG_LOGO:I = 0x2

.field public static final TAG_NAME:I = 0x3

.field public static final TAG_PAYMENTFLAG:I = 0x1

.field public static final TAG_TAIL:I = 0x4

.field public static final TAG_VALUE:I = 0x6


# instance fields
.field public availableTitle:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
    .end annotation
.end field

.field public children:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public closeMsg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public detail:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public detailAction:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public discountTitle:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public dlg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public endCode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extinfo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public fanTitle:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public huiTitle:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public logo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public paymentFlag:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tail:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->DEFAULT_PAYMENTFLAG:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/pb/rpc/v3/MspPayment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->logo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->logo:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->tail:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->tail:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detailAction:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detailAction:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->value:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detail:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detail:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->dlg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->dlg:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->children:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->children:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->closeMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->closeMsg:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->availableTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->availableTitle:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->discountTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->discountTitle:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->fanTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->fanTitle:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->huiTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->huiTitle:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->endCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->endCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->extinfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->extinfo:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->logo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->logo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->tail:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->tail:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detailAction:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detailAction:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->value:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detail:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detail:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->dlg:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->dlg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->children:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->children:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->closeMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->closeMsg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->availableTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->availableTitle:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->discountTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->discountTitle:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->fanTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->fanTitle:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->huiTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->huiTitle:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->endCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->endCode:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->extinfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->extinfo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/android/app/pb/rpc/v3/MspPayment;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->logo:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->name:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->tail:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detailAction:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->value:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detail:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->dlg:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->children:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->closeMsg:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->availableTitle:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->discountTitle:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->fanTitle:Ljava/lang/String;

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->huiTitle:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->endCode:Ljava/lang/String;

    goto :goto_0

    :pswitch_f
    check-cast p2, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    goto :goto_0

    :pswitch_10
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->extinfo:Ljava/lang/String;

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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public formatPayChannel()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "hui"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string/jumbo v1, "fan"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string/jumbo v1, "busy"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const-string/jumbo v1, "disable"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    const-string/jumbo v1, "checked"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    const-string/jumbo v1, "add"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_5
    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    const-string/jumbo v1, "chargeFree"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_6
    const-string/jumbo v1, "logo"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->logo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "tail"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->tail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "detailAction"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detailAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "value"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "detail"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "dlg"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->dlg:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/app/d/d/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "children"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->children:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/app/d/d/a;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->extinfo:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/app/d/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public formatPreChannel()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "available"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string/jumbo v1, "busy"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string/jumbo v1, "checked"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const-string/jumbo v1, "discount"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    const-string/jumbo v1, "fan"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    const-string/jumbo v1, "hui"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_5
    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    const-string/jumbo v1, "new_card"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_6
    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    const-string/jumbo v1, "togo"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_7
    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    const-string/jumbo v1, "usable"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_8
    const-string/jumbo v1, "logo"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->logo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "tail"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->tail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "detailAction"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detailAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "close_msg"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->closeMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "available_title"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->availableTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "discount_title"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->discountTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "fan_title"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->fanTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "hui_title"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->huiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "end_code"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->endCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    if-eqz v1, :cond_b

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "assignedChannel"

    iget-object v3, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v3, v3, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->assignedChannel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "availableAmount"

    iget-object v3, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v3, v3, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->availableAmount:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "channelFullName"

    iget-object v3, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v3, v3, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelFullName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "channelIndex"

    iget-object v3, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v3, v3, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelIndex:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "channelName"

    iget-object v3, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v3, v3, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "channelType"

    iget-object v3, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v3, v3, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v2, v2, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->largeLimitSignable:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    const-string/jumbo v2, "largeLimitSignable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v4, v4, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->largeLimitSignable:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v2, v2, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    if-eqz v2, :cond_a

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "bankName"

    iget-object v4, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v4, v4, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    iget-object v4, v4, Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;->bankName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "cardNo"

    iget-object v4, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v4, v4, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    iget-object v4, v4, Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;->cardNo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "instId"

    iget-object v4, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v4, v4, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    iget-object v4, v4, Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;->instId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "principalId"

    iget-object v4, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v4, v4, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    iget-object v4, v4, Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;->principalId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "signId"

    iget-object v4, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v4, v4, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    iget-object v4, v4, Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;->signId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "userName"

    iget-object v4, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v4, v4, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    iget-object v4, v4, Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;->userName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v3, v3, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    iget-object v3, v3, Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;->extinfo:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alipay/android/app/d/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string/jumbo v3, "cardInfo"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v2, v2, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->extinfo:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/android/app/d/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->extinfo:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/app/d/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->paymentFlag:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->logo:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->logo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->tail:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->tail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detailAction:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detailAction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->value:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detail:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->detail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->dlg:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->dlg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->children:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->children:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->closeMsg:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->closeMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->availableTitle:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->availableTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->discountTitle:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->discountTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->fanTitle:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->fanTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->huiTitle:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->huiTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->endCode:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->endCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->channelValue:Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    invoke-virtual {v0}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->extinfo:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->extinfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_3

    :cond_6
    move v0, v1

    goto/16 :goto_4

    :cond_7
    move v0, v1

    goto/16 :goto_5

    :cond_8
    move v0, v1

    goto/16 :goto_6

    :cond_9
    move v0, v1

    goto/16 :goto_7

    :cond_a
    move v0, v1

    goto/16 :goto_8

    :cond_b
    move v0, v1

    goto :goto_9

    :cond_c
    move v0, v1

    goto :goto_a

    :cond_d
    move v0, v1

    goto :goto_b

    :cond_e
    move v0, v1

    goto :goto_c

    :cond_f
    move v0, v1

    goto :goto_d

    :cond_10
    move v0, v1

    goto :goto_e

    :cond_11
    move v0, v1

    goto :goto_f
.end method
