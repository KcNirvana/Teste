.class public final Lcom/miui/antispam/service/backup/b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# instance fields
.field private bitField0_:I

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private notes_:Ljava/lang/Object;

.field private number_:Ljava/lang/Object;

.field private simId_:I

.field private state_:I


# direct methods
.method static synthetic -wrap0()Lcom/miui/antispam/service/backup/b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/b;->create()Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/b;->guid_:Ljava/lang/Object;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/b;->luid_:Ljava/lang/Object;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/b;->number_:Ljava/lang/Object;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/b;->notes_:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->simId_:I

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/b;->aaz()V

    return-void
.end method

.method private aaz()V
    .locals 0

    return-void
.end method

.method private static create()Lcom/miui/antispam/service/backup/b;
    .locals 1

    new-instance v0, Lcom/miui/antispam/service/backup/b;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public aaA(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Lcom/miui/antispam/service/backup/b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->ZY()Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aad()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aal(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/b;->guid_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aae()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aam(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/b;->luid_:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aag()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aao(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/b;->number_:Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aaf()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aan(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/b;->notes_:Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aai()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/b;->setState(I)Lcom/miui/antispam/service/backup/b;

    :cond_5
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aah()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->getSimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/b;->aax(I)Lcom/miui/antispam/service/backup/b;

    :cond_6
    return-object p0
.end method

.method public aaw(Ljava/lang/String;)Lcom/miui/antispam/service/backup/b;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    iput-object p1, p0, Lcom/miui/antispam/service/backup/b;->number_:Ljava/lang/Object;

    return-object p0
.end method

.method public aax(I)Lcom/miui/antispam/service/backup/b;
    .locals 1

    iget v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    iput p1, p0, Lcom/miui/antispam/service/backup/b;->simId_:I

    return-object p0
.end method

.method public aay(Ljava/lang/String;)Lcom/miui/antispam/service/backup/b;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    iput-object p1, p0, Lcom/miui/antispam/service/backup/b;->notes_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/b;->build()Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/b;->buildPartial()Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/antispam/service/backup/b;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/b;->buildPartial()Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)V

    iget v3, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/miui/antispam/service/backup/b;->guid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aaq(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/service/backup/b;->luid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aar(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/service/backup/b;->number_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aat(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/miui/antispam/service/backup/b;->notes_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aas(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/miui/antispam/service/backup/b;->state_:I

    invoke-static {v2, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aav(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget v1, p0, Lcom/miui/antispam/service/backup/b;->simId_:I

    invoke-static {v2, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aau(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;I)I

    invoke-static {v2, v0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aap(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;I)I

    return-object v2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/b;->clear()Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/b;->clear()Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/miui/antispam/service/backup/b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/b;->guid_:Ljava/lang/Object;

    iget v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/b;->luid_:Ljava/lang/Object;

    iget v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/b;->number_:Ljava/lang/Object;

    iget v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/b;->notes_:Ljava/lang/Object;

    iget v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->state_:I

    iget v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->simId_:I

    iget v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/b;->clone()Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/b;->clone()Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/antispam/service/backup/b;
    .locals 2

    invoke-static {}, Lcom/miui/antispam/service/backup/b;->create()Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/b;->buildPartial()Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/service/backup/b;->aaA(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/b;->clone()Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/b;->getDefaultInstanceForType()Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/b;->getDefaultInstanceForType()Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->ZY()Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/service/backup/b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/service/backup/b;->aaA(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/service/backup/b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/b;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->ZR:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/b;->aaA(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Lcom/miui/antispam/service/backup/b;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;
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

    invoke-virtual {p0, v1}, Lcom/miui/antispam/service/backup/b;->aaA(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Lcom/miui/antispam/service/backup/b;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public setState(I)Lcom/miui/antispam/service/backup/b;
    .locals 1

    iget v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/antispam/service/backup/b;->bitField0_:I

    iput p1, p0, Lcom/miui/antispam/service/backup/b;->state_:I

    return-object p0
.end method
