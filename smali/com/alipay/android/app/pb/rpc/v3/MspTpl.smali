.class public final Lcom/alipay/android/app/pb/rpc/v3/MspTpl;
.super Lcom/squareup/wire/Message;
.source "MspTpl.java"


# static fields
.field public static final DEFAULT_EXTINFO:Ljava/lang/String; = ""

.field public static final DEFAULT_FORMAT:Ljava/lang/String; = ""

.field public static final DEFAULT_PLATFORM:Ljava/lang/String; = ""

.field public static final DEFAULT_PUBLISHVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_TAG:Ljava/lang/String; = ""

.field public static final DEFAULT_TIME:Ljava/lang/String; = ""

.field public static final DEFAULT_TPLID:Ljava/lang/String; = ""

.field public static final DEFAULT_TPLVERSION:Ljava/lang/String; = ""

.field public static final TAG_EXTINFO:I = 0x8

.field public static final TAG_FORMAT:I = 0x1

.field public static final TAG_PLATFORM:I = 0x2

.field public static final TAG_PUBLISHVERSION:I = 0x3

.field public static final TAG_TAG:I = 0x4

.field public static final TAG_TIME:I = 0x5

.field public static final TAG_TPLID:I = 0x6

.field public static final TAG_TPLVERSION:I = 0x7


# instance fields
.field public extinfo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public format:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public platform:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public publishVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tag:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public time:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tplId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tplVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/pb/rpc/v3/MspTpl;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->format:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->format:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->platform:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->platform:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->publishVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->publishVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tag:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->time:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->time:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->extinfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->extinfo:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->format:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->format:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->platform:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->platform:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->publishVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->publishVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tag:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->time:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->time:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->extinfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->extinfo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/android/app/pb/rpc/v3/MspTpl;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->format:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->platform:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->publishVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tag:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->time:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplId:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->extinfo:Ljava/lang/String;

    goto :goto_0

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
    .end packed-switch
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->time:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "platform"

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->platform:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->platform:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "format"

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->format:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->format:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "tag"

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tag:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "publishVersion"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->publishVersion:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "tplVersion"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplVersion:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "time"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->time:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "tplId"

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object p1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplId:Ljava/lang/String;

    :cond_0
    :goto_3
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->extinfo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/d/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const-string/jumbo v0, "common"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "JSON"

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "QUICKPAY"

    goto :goto_2

    :cond_5
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    goto :goto_3
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->format:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->format:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->platform:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->platform:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->publishVersion:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->publishVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tag:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->time:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->time:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplId:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplVersion:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->tplVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->extinfo:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->extinfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/pb/rpc/v3/MspTpl;->hashCode:I

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
.end method
