.class public final Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;
.super Lcom/squareup/wire/Message;
.source "UnifyVerifySSOTokenRequestPb.java"


# static fields
.field public static final TAG_VERIFYSSOTOKENREQUEST:I = 0x2

.field public static final TAG_VERIFYTAOBAOSSOTOKENREQ:I = 0x1


# instance fields
.field public verifySsoTokenRequest:Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;->verifySsoTokenRequest:Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;->verifySsoTokenRequest:Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;

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
    instance-of v0, p1, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;->verifySsoTokenRequest:Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;->verifySsoTokenRequest:Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;->verifySsoTokenRequest:Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;->verifySsoTokenRequest:Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;->verifySsoTokenRequest:Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;

    invoke-virtual {v0}, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->hashCode()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;->hashCode:I

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
