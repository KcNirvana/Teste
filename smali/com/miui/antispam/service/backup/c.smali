.class public final Lcom/miui/antispam/service/backup/c;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# instance fields
.field private bitField0_:I

.field private guid_:Ljava/lang/Object;

.field private isDisplay_:I

.field private luid_:Ljava/lang/Object;

.field private notes_:Ljava/lang/Object;

.field private number_:Ljava/lang/Object;

.field private simId_:I

.field private state_:I


# direct methods
.method static synthetic -wrap0()Lcom/miui/antispam/service/backup/c;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/c;->create()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->guid_:Ljava/lang/Object;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->luid_:Ljava/lang/Object;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->number_:Ljava/lang/Object;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->notes_:Ljava/lang/Object;

    iput v1, p0, Lcom/miui/antispam/service/backup/c;->isDisplay_:I

    iput v1, p0, Lcom/miui/antispam/service/backup/c;->simId_:I

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/c;->abi()V

    return-void
.end method

.method private abi()V
    .locals 0

    return-void
.end method

.method private static create()Lcom/miui/antispam/service/backup/c;
    .locals 1

    new-instance v0, Lcom/miui/antispam/service/backup/c;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abf(Ljava/lang/String;)Lcom/miui/antispam/service/backup/c;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->number_:Ljava/lang/Object;

    return-object p0
.end method

.method public abg(I)Lcom/miui/antispam/service/backup/c;
    .locals 1

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    iput p1, p0, Lcom/miui/antispam/service/backup/c;->simId_:I

    return-object p0
.end method

.method public abh(Ljava/lang/String;)Lcom/miui/antispam/service/backup/c;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->notes_:Ljava/lang/Object;

    return-object p0
.end method

.method public abj(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;)Lcom/miui/antispam/service/backup/c;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaE()Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaK()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaT(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->guid_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaM()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaU(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->luid_:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaO()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaW(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->number_:Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaN()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaV(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->notes_:Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaQ()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/c;->setState(I)Lcom/miui/antispam/service/backup/c;

    :cond_5
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaL()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaG()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/c;->abk(I)Lcom/miui/antispam/service/backup/c;

    :cond_6
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaP()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->getSimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/c;->abg(I)Lcom/miui/antispam/service/backup/c;

    :cond_7
    return-object p0
.end method

.method public abk(I)Lcom/miui/antispam/service/backup/c;
    .locals 1

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    iput p1, p0, Lcom/miui/antispam/service/backup/c;->isDisplay_:I

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c;->build()Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c;->buildPartial()Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/antispam/service/backup/c;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c;->buildPartial()Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;)V

    iget v3, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_6

    :goto_0
    iget-object v1, p0, Lcom/miui/antispam/service/backup/c;->guid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaY(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/service/backup/c;->luid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aba(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/service/backup/c;->number_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->abc(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/miui/antispam/service/backup/c;->notes_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->abb(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/miui/antispam/service/backup/c;->state_:I

    invoke-static {v2, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->abe(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget v1, p0, Lcom/miui/antispam/service/backup/c;->isDisplay_:I

    invoke-static {v2, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaZ(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;I)I

    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget v1, p0, Lcom/miui/antispam/service/backup/c;->simId_:I

    invoke-static {v2, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->abd(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;I)I

    invoke-static {v2, v0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaX(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;I)I

    return-object v2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c;->clear()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c;->clear()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/miui/antispam/service/backup/c;
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->guid_:Ljava/lang/Object;

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->luid_:Ljava/lang/Object;

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->number_:Ljava/lang/Object;

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->notes_:Ljava/lang/Object;

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->state_:I

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    iput v1, p0, Lcom/miui/antispam/service/backup/c;->isDisplay_:I

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    iput v1, p0, Lcom/miui/antispam/service/backup/c;->simId_:I

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c;->clone()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c;->clone()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/antispam/service/backup/c;
    .locals 2

    invoke-static {}, Lcom/miui/antispam/service/backup/c;->create()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c;->buildPartial()Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/service/backup/c;->abj(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;)Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c;->clone()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c;->getDefaultInstanceForType()Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c;->getDefaultInstanceForType()Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->aaE()Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/service/backup/c;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/service/backup/c;->abj(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;)Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/service/backup/c;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/c;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->ZT:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/c;->abj(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;)Lcom/miui/antispam/service/backup/c;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/antispam/service/backup/c;->abj(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;)Lcom/miui/antispam/service/backup/c;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public setState(I)Lcom/miui/antispam/service/backup/c;
    .locals 1

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->bitField0_:I

    iput p1, p0, Lcom/miui/antispam/service/backup/c;->state_:I

    return-object p0
.end method
