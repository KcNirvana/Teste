.class public final Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;
.super Lcom/squareup/wire/Message;
.source "ExistUserInfo.java"


# static fields
.field public static final TAG_ACCOUNTTYPE:I = 0x1

.field public static final TAG_AVATAR:I = 0x6

.field public static final TAG_BUTTONFSTMEMO:I = 0xb

.field public static final TAG_BUTTONSEDMEMO:I = 0xc

.field public static final TAG_CERTNO:I = 0x5

.field public static final TAG_DISPLAYTAGS:I = 0x9

.field public static final TAG_IDCARD:I = 0x4

.field public static final TAG_LOGONAPPS:I = 0x8

.field public static final TAG_REALNAME:I = 0x7

.field public static final TAG_REALNAMED:I = 0x3

.field public static final TAG_REGTIME:I = 0xa

.field public static final TAG_TAOBAONICK:I = 0x2


# instance fields
.field public ButtonFstMemo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public ButtonSedMemo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public accountType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public avatar:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public certNo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public displayTags:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public idCard:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public logonApps:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public realName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public realNamed:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public regTime:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public taobaoNick:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
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
    instance-of v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->accountType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->accountType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->taobaoNick:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->taobaoNick:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->realNamed:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->realNamed:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->idCard:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->idCard:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->certNo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->certNo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->avatar:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->realName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->realName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->logonApps:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->logonApps:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->displayTags:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->displayTags:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->regTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->regTime:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->ButtonSedMemo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->ButtonSedMemo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->hashCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->accountType:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->taobaoNick:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->taobaoNick:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->realNamed:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->realNamed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->idCard:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->idCard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->certNo:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->certNo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->avatar:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->avatar:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->realName:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->realName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->logonApps:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->logonApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->displayTags:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->displayTags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->regTime:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->regTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->ButtonSedMemo:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->ButtonSedMemo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->hashCode:I

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    move v0, v1

    goto :goto_6

    :cond_a
    move v0, v2

    goto :goto_7

    :cond_b
    move v0, v1

    goto :goto_8

    :cond_c
    move v0, v1

    goto :goto_9
.end method
