.class public final Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;
.super Lcom/squareup/wire/Message;
.source "RdsRequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Env"
.end annotation


# static fields
.field public static final DEFAULT_BINARYHASH:Ljava/lang/String; = ""

.field public static final DEFAULT_EM:Ljava/lang/Boolean;

.field public static final DEFAULT_INS:Ljava/lang/Boolean;

.field public static final DEFAULT_INSEX:Ljava/lang/Boolean;

.field public static final DEFAULT_MAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_REP:Ljava/lang/Boolean;

.field public static final DEFAULT_REPIE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_REPIEHASH:Ljava/lang/String; = ""

.field public static final DEFAULT_ROOT:Ljava/lang/Boolean;

.field public static final DEFAULT_SAFE:Ljava/lang/String; = ""

.field public static final DEFAULT_SIGN:Ljava/lang/String; = ""

.field public static final DEFAULT_SIGNHASH:Ljava/lang/String; = ""

.field public static final TAG_BINARYHASH:I = 0x7

.field public static final TAG_EM:I = 0x1

.field public static final TAG_INS:I = 0x2

.field public static final TAG_INSEX:I = 0x3

.field public static final TAG_MAL:I = 0x4

.field public static final TAG_REP:I = 0x5

.field public static final TAG_REPIE:I = 0xc

.field public static final TAG_REPIEHASH:I = 0x8

.field public static final TAG_ROOT:I = 0x6

.field public static final TAG_SAFE:I = 0x9

.field public static final TAG_SIGN:I = 0xa

.field public static final TAG_SIGNHASH:I = 0xb


# instance fields
.field public binaryhash:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public em:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public ins:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public insEx:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mal:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
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

.field public rep:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public repie:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0xc
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

.field public repiehash:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public root:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public safe:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public sign:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public signhash:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->DEFAULT_EM:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->DEFAULT_INS:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->DEFAULT_INSEX:Ljava/lang/Boolean;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->DEFAULT_MAL:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->DEFAULT_REP:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->DEFAULT_ROOT:Ljava/lang/Boolean;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->DEFAULT_REPIE:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->em:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->em:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->ins:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->ins:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->insEx:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->insEx:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->mal:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->mal:Ljava/util/List;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->rep:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->rep:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->root:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->root:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->binaryhash:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->binaryhash:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->repiehash:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->repiehash:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->safe:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->safe:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->sign:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->sign:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->signhash:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->signhash:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->repie:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->repie:Ljava/util/List;

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
    instance-of v2, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->em:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->em:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->ins:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->ins:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->insEx:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->insEx:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->mal:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->mal:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->rep:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->rep:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->root:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->root:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->binaryhash:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->binaryhash:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->repiehash:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->repiehash:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->safe:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->safe:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->sign:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->sign:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->signhash:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->signhash:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->repie:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->repie:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->em:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->ins:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->insEx:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->mal:Ljava/util/List;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->rep:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->root:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->binaryhash:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->repiehash:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->safe:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->sign:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->signhash:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->repie:Ljava/util/List;

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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->hashCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->em:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->em:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->ins:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->ins:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->insEx:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->insEx:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->mal:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->mal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->rep:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->rep:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->root:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->root:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->binaryhash:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->binaryhash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->repiehash:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->repiehash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->safe:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->safe:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->sign:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->sign:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->signhash:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->signhash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->repie:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->repie:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->hashCode:I

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
    move v0, v2

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
    move v0, v1

    goto :goto_7

    :cond_b
    move v0, v1

    goto :goto_8

    :cond_c
    move v0, v1

    goto :goto_9
.end method
