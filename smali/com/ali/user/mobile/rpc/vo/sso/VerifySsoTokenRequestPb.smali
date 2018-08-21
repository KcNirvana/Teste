.class public final Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;
.super Lcom/squareup/wire/Message;
.source "VerifySsoTokenRequestPb.java"


# static fields
.field public static final DEFAULT_ALIPAYSSOTOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_DID:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTERNPARAM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/rpc/vo/sso/KeyValueEntryPB;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LOGINID:Ljava/lang/String; = ""

.field public static final DEFAULT_PRODUCTID:Ljava/lang/String; = ""

.field public static final DEFAULT_PRODUCTVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_SYSTEMTYPE:Ljava/lang/String; = ""

.field public static final TAG_ALIPAYSSOTOKEN:I = 0x2

.field public static final TAG_DID:I = 0x3

.field public static final TAG_EXTERNPARAM:I = 0x7

.field public static final TAG_LOGINID:I = 0x1

.field public static final TAG_PRODUCTID:I = 0x4

.field public static final TAG_PRODUCTVERSION:I = 0x5

.field public static final TAG_SYSTEMTYPE:I = 0x6


# instance fields
.field public alipaySsoToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public did:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public externParam:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x7
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/rpc/vo/sso/KeyValueEntryPB;",
            ">;"
        }
    .end annotation
.end field

.field public loginId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public productId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public productVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public systemType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->DEFAULT_EXTERNPARAM:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->loginId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->loginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->alipaySsoToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->alipaySsoToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->did:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->did:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->systemType:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->systemType:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->externParam:Ljava/util/List;

    invoke-static {v0}, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->externParam:Ljava/util/List;

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
    instance-of v2, p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->loginId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->loginId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->alipaySsoToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->alipaySsoToken:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->did:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->did:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->systemType:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->systemType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->externParam:Ljava/util/List;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->externParam:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->loginId:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->alipaySsoToken:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->did:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productId:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->systemType:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->externParam:Ljava/util/List;

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
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->loginId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->loginId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->alipaySsoToken:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->alipaySsoToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->did:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->did:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productId:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productVersion:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->systemType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->systemType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->externParam:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->externParam:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v1

    iput v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->hashCode:I

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
    const/4 v0, 0x1

    goto :goto_5
.end method
