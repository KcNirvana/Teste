.class public final Lcom/miui/antispam/service/backup/g;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# instance fields
.field private antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

.field private bitField0_:I


# direct methods
.method static synthetic -wrap0()Lcom/miui/antispam/service/backup/g;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/g;->create()Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->aco()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/g;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/g;->acT()V

    return-void
.end method

.method private acT()V
    .locals 0

    return-void
.end method

.method private static create()Lcom/miui/antispam/service/backup/g;
    .locals 1

    new-instance v0, Lcom/miui/antispam/service/backup/g;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/g;-><init>()V

    return-object v0
.end method


# virtual methods
.method public acS(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/g;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/miui/antispam/service/backup/g;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    iget v0, p0, Lcom/miui/antispam/service/backup/g;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/antispam/service/backup/g;->bitField0_:I

    return-object p0
.end method

.method public acU(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/g;
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/g;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/backup/g;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->aco()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/backup/g;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    invoke-static {v0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acq(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/antispam/service/backup/f;->acI(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/service/backup/f;->buildPartial()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/g;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    :goto_0
    iget v0, p0, Lcom/miui/antispam/service/backup/g;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/antispam/service/backup/g;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/miui/antispam/service/backup/g;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    goto :goto_0
.end method

.method public acV(Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;)Lcom/miui/antispam/service/backup/g;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->acM()Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->acN()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->acK()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/g;->acU(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/g;

    :cond_1
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/g;->build()Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/g;->buildPartial()Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/antispam/service/backup/g;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/g;->buildPartial()Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;
    .locals 4

    const/4 v0, 0x1

    new-instance v2, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;)V

    iget v3, p0, Lcom/miui/antispam/service/backup/g;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/miui/antispam/service/backup/g;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    invoke-static {v2, v1}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->acQ(Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    invoke-static {v2, v0}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->acR(Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;I)I

    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/g;->clear()Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/g;->clear()Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/miui/antispam/service/backup/g;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->aco()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/g;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    iget v0, p0, Lcom/miui/antispam/service/backup/g;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/antispam/service/backup/g;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/g;->clone()Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/g;->clone()Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/antispam/service/backup/g;
    .locals 2

    invoke-static {}, Lcom/miui/antispam/service/backup/g;->create()Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/g;->buildPartial()Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/service/backup/g;->acV(Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;)Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/g;->clone()Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/g;->getDefaultInstanceForType()Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/g;->getDefaultInstanceForType()Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->acM()Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/service/backup/g;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/service/backup/g;->acV(Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;)Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/service/backup/g;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/g;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->aab:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/g;->acV(Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;)Lcom/miui/antispam/service/backup/g;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;
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

    invoke-virtual {p0, v1}, Lcom/miui/antispam/service/backup/g;->acV(Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;)Lcom/miui/antispam/service/backup/g;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method
