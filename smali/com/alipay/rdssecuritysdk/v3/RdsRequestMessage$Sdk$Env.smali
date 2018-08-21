.class public final Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;
.super Lcom/squareup/wire/Message;
.source "RdsRequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Env"
.end annotation


# static fields
.field public static final DEFAULT_ASDK:Ljava/lang/String; = ""

.field public static final DEFAULT_BOARD:Ljava/lang/String; = ""

.field public static final DEFAULT_BRAND:Ljava/lang/String; = ""

.field public static final DEFAULT_DEVICE:Ljava/lang/String; = ""

.field public static final DEFAULT_DISPLAYID:Ljava/lang/String; = ""

.field public static final DEFAULT_EM:Ljava/lang/Boolean;

.field public static final DEFAULT_INCREMENTAL:Ljava/lang/String; = ""

.field public static final DEFAULT_KERVER:Ljava/lang/String; = ""

.field public static final DEFAULT_MANUFACTURER:Ljava/lang/String; = ""

.field public static final DEFAULT_MODEL:Ljava/lang/String; = ""

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_OS:Ljava/lang/String; = ""

.field public static final DEFAULT_OSRELEASE:Ljava/lang/String; = ""

.field public static final DEFAULT_PF:Ljava/lang/String; = ""

.field public static final DEFAULT_PM:Ljava/lang/String; = ""

.field public static final DEFAULT_PN:Ljava/lang/String; = ""

.field public static final DEFAULT_PROCESSOR:Ljava/lang/String; = ""

.field public static final DEFAULT_QEMU:Ljava/lang/String; = ""

.field public static final DEFAULT_ROOT:Ljava/lang/Boolean;

.field public static final DEFAULT_TAGS:Ljava/lang/String; = ""

.field public static final TAG_ASDK:I = 0x1

.field public static final TAG_BOARD:I = 0x2

.field public static final TAG_BRAND:I = 0x3

.field public static final TAG_DEVICE:I = 0x14

.field public static final TAG_DISPLAYID:I = 0x4

.field public static final TAG_EM:I = 0x5

.field public static final TAG_INCREMENTAL:I = 0x6

.field public static final TAG_KERVER:I = 0x7

.field public static final TAG_MANUFACTURER:I = 0x8

.field public static final TAG_MODEL:I = 0x9

.field public static final TAG_NAME:I = 0xa

.field public static final TAG_OS:I = 0xb

.field public static final TAG_OSRELEASE:I = 0x11

.field public static final TAG_PF:I = 0xc

.field public static final TAG_PM:I = 0xd

.field public static final TAG_PN:I = 0xe

.field public static final TAG_PROCESSOR:I = 0xf

.field public static final TAG_QEMU:I = 0x10

.field public static final TAG_ROOT:I = 0x12

.field public static final TAG_TAGS:I = 0x13


# instance fields
.field public asdk:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public board:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public brand:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public device:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public displayid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public em:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public incremental:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public kerver:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public manufacturer:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public model:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public os:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public osRelease:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public pf:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public pm:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public pn:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public processor:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public qemu:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public root:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tags:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->DEFAULT_EM:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->DEFAULT_ROOT:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->asdk:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->asdk:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->board:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->board:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->brand:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->brand:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->displayid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->displayid:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->em:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->em:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->incremental:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->incremental:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->kerver:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->kerver:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->manufacturer:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->manufacturer:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->model:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->model:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->os:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->os:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pf:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pf:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pm:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pm:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pn:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pn:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->processor:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->processor:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->qemu:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->qemu:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->osRelease:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->osRelease:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->root:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->root:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->tags:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->tags:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->device:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->device:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->asdk:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->asdk:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->board:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->board:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->brand:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->brand:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->displayid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->displayid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->em:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->em:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->incremental:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->incremental:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->kerver:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->kerver:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->manufacturer:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->manufacturer:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->model:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->model:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->os:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->os:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pf:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pf:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pm:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pm:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pn:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pn:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->processor:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->processor:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->qemu:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->qemu:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->osRelease:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->osRelease:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->root:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->root:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->tags:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->tags:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->device:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->device:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->asdk:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->board:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->brand:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->displayid:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->em:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->incremental:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->kerver:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->manufacturer:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->model:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->name:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->os:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pf:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pm:Ljava/lang/String;

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pn:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->processor:Ljava/lang/String;

    goto :goto_0

    :pswitch_f
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->qemu:Ljava/lang/String;

    goto :goto_0

    :pswitch_10
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->osRelease:Ljava/lang/String;

    goto :goto_0

    :pswitch_11
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->root:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_12
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->tags:Ljava/lang/String;

    goto :goto_0

    :pswitch_13
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->device:Ljava/lang/String;

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
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->asdk:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->asdk:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->board:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->board:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->brand:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->brand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->displayid:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->displayid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->em:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->em:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->incremental:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->incremental:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->kerver:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->kerver:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->manufacturer:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->model:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->name:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->os:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->os:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pf:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pm:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pn:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->processor:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->processor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->qemu:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->qemu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->osRelease:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->osRelease:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->root:Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->root:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->tags:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->tags:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->device:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->device:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->hashCode:I

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

    goto/16 :goto_9

    :cond_c
    move v0, v1

    goto/16 :goto_a

    :cond_d
    move v0, v1

    goto/16 :goto_b

    :cond_e
    move v0, v1

    goto/16 :goto_c

    :cond_f
    move v0, v1

    goto :goto_d

    :cond_10
    move v0, v1

    goto :goto_e

    :cond_11
    move v0, v1

    goto :goto_f

    :cond_12
    move v0, v1

    goto :goto_10

    :cond_13
    move v0, v1

    goto :goto_11

    :cond_14
    move v0, v1

    goto :goto_12
.end method
