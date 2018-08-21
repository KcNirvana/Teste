.class public final Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;
.super Lcom/squareup/wire/Message;
.source "MspChannelValue.java"


# static fields
.field public static final DEFAULT_ASSIGNEDCHANNEL:Ljava/lang/String; = ""

.field public static final DEFAULT_AVAILABLEAMOUNT:Ljava/lang/String; = ""

.field public static final DEFAULT_CHANNELFULLNAME:Ljava/lang/String; = ""

.field public static final DEFAULT_CHANNELINDEX:Ljava/lang/String; = ""

.field public static final DEFAULT_CHANNELNAME:Ljava/lang/String; = ""

.field public static final DEFAULT_CHANNELTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTINFO:Ljava/lang/String; = ""

.field public static final DEFAULT_LARGELIMITSIGNABLE:Ljava/lang/Integer;

.field public static final TAG_ASSIGNEDCHANNEL:I = 0x1

.field public static final TAG_AVAILABLEAMOUNT:I = 0x2

.field public static final TAG_CARDINFO:I = 0x3

.field public static final TAG_CHANNELFULLNAME:I = 0x4

.field public static final TAG_CHANNELINDEX:I = 0x5

.field public static final TAG_CHANNELNAME:I = 0x6

.field public static final TAG_CHANNELTYPE:I = 0x7

.field public static final TAG_EXTINFO:I = 0x9

.field public static final TAG_LARGELIMITSIGNABLE:I = 0x8


# instance fields
.field public assignedChannel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public availableAmount:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field

.field public channelFullName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public channelIndex:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public channelName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public channelType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extinfo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public largeLimitSignable:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->DEFAULT_LARGELIMITSIGNABLE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->assignedChannel:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->assignedChannel:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->availableAmount:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->availableAmount:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelFullName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelFullName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelIndex:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelType:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->largeLimitSignable:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->largeLimitSignable:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->extinfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->extinfo:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->assignedChannel:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->assignedChannel:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->availableAmount:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->availableAmount:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelFullName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelFullName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelIndex:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->largeLimitSignable:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->largeLimitSignable:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->extinfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->extinfo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->assignedChannel:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->availableAmount:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelFullName:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelIndex:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelName:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelType:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->largeLimitSignable:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->extinfo:Ljava/lang/String;

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
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->assignedChannel:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->assignedChannel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->availableAmount:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->availableAmount:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->cardInfo:Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;

    invoke-virtual {v0}, Lcom/alipay/android/app/pb/rpc/v3/MspCardInfo;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelFullName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelFullName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelIndex:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelIndex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelType:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->channelType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->largeLimitSignable:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->largeLimitSignable:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->extinfo:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->extinfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelValue;->hashCode:I

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
.end method
