.class public final Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;
.super Lcom/squareup/wire/Message;
.source "MspChannelLogo.java"


# static fields
.field public static final DEFAULT_BIZTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_EXIT:Ljava/lang/Integer;

.field public static final DEFAULT_EXTINFO:Ljava/lang/String; = ""

.field public static final DEFAULT_NEWCARDCHANNEL:Ljava/lang/String; = ""

.field public static final DEFAULT_PAYMENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/pb/rpc/v3/MspPayment;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SETTING:Ljava/lang/Integer;

.field public static final TAG_BIZTYPE:I = 0x3

.field public static final TAG_EXIT:I = 0x1

.field public static final TAG_EXTINFO:I = 0x6

.field public static final TAG_NEWCARDCHANNEL:I = 0x5

.field public static final TAG_PAYMENTS:I = 0x4

.field public static final TAG_SETTING:I = 0x2


# instance fields
.field public biztype:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public exit:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extinfo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public newCardChannel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public payments:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/pb/rpc/v3/MspPayment;",
            ">;"
        }
    .end annotation
.end field

.field public setting:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->DEFAULT_EXIT:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->DEFAULT_SETTING:Ljava/lang/Integer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->DEFAULT_PAYMENTS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->exit:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->exit:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->setting:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->setting:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->biztype:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->biztype:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->payments:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->payments:Ljava/util/List;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->newCardChannel:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->newCardChannel:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->extinfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->extinfo:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->exit:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->exit:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->setting:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->setting:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->biztype:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->biztype:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->payments:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->payments:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->newCardChannel:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->newCardChannel:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->extinfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->extinfo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->exit:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->setting:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->biztype:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->payments:Ljava/util/List;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->newCardChannel:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->extinfo:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public format(Z)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->exit:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "exit"

    const-string/jumbo v2, "1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->exit:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->setting:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "setting"

    const-string/jumbo v2, "1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->setting:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    const-string/jumbo v0, "biztype"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->biztype:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "newCardChannel"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->newCardChannel:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/app/d/d/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->payments:Ljava/util/List;

    if-eqz v0, :cond_4

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->payments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->formatPreChannel()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/app/pb/rpc/v3/MspPayment;->formatPayChannel()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_5

    const-string/jumbo v0, "channels"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->extinfo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/d/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string/jumbo v0, "payments"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->exit:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->exit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->setting:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->setting:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->biztype:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->biztype:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->payments:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->payments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->newCardChannel:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->newCardChannel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->extinfo:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->extinfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspChannelLogo;->hashCode:I

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
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4
.end method
