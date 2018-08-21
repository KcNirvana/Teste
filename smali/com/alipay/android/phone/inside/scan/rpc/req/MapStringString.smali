.class public final Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;
.super Lcom/squareup/wire/Message;
.source "MapStringString.java"


# static fields
.field public static final DEFAULT_ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/inside/scan/rpc/req/EntryStringString;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_ENTRIES:I = 0x1


# instance fields
.field public entries:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/inside/scan/rpc/req/EntryStringString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->DEFAULT_ENTRIES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->entries:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->entries:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->entries:Ljava/util/List;

    check-cast p1, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    iget-object v1, p1, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->entries:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->entries:Ljava/util/List;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->hashCode:I

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->entries:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->hashCode:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->entries:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->entries:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->entries:Ljava/util/List;

    new-instance v1, Lcom/alipay/android/phone/inside/scan/rpc/req/EntryStringString;

    invoke-direct {v1, p1, p2}, Lcom/alipay/android/phone/inside/scan/rpc/req/EntryStringString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->entries:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->entries:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/scan/rpc/req/EntryStringString;

    iget-object v3, v0, Lcom/alipay/android/phone/inside/scan/rpc/req/EntryStringString;->key:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->entries:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/scan/rpc/req/EntryStringString;

    iget-object v0, v0, Lcom/alipay/android/phone/inside/scan/rpc/req/EntryStringString;->value:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "inside"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
