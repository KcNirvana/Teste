.class public final Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# static fields
.field public static aab:Lcom/google/protobuf/Parser;

.field private static final aac:Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

.field private static final serialVersionUID:J


# instance fields
.field private antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/antispam/service/backup/m;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/m;-><init>()V

    sput-object v0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->aab:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;-><init>(Z)V

    sput-object v0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->aac:Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    sget-object v0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->aac:Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->acO()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    iput v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->acO()V

    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v5

    :goto_0
    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_1

    :sswitch_1
    iget v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    invoke-virtual {v0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->toBuilder()Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    move-object v3, v0

    :goto_2
    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->ZZ:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    iput-object v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    invoke-virtual {v3, v0}, Lcom/miui/antispam/service/backup/f;->acI(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/f;

    invoke-virtual {v3}, Lcom/miui/antispam/service/backup/f;->buildPartial()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    :cond_0
    iget v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v0, v2

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->makeExtensionsImmutable()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_4
    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->makeExtensionsImmutable()V

    throw v0

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v0

    throw v0

    :cond_2
    move-object v3, v4

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    iput v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    iput v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    return-void
.end method

.method public static acJ(Ljava/io/InputStream;)Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->aab:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    return-object v0
.end method

.method public static acL()Lcom/miui/antispam/service/backup/g;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/g;->-wrap0()Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method public static acM()Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->aac:Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    return-object v0
.end method

.method private acO()V
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->aco()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    return-void
.end method

.method public static acP(Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;)Lcom/miui/antispam/service/backup/g;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->acL()Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/antispam/service/backup/g;->acV(Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;)Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic acQ(Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    return-object p1
.end method

.method static synthetic acR(Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    return p1
.end method


# virtual methods
.method public acK()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    return-object v0
.end method

.method public acN()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->getDefaultInstanceForType()Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->aac:Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->aab:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v1

    :cond_0
    iget v1, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    const/16 v1, 0x8

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iput v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-byte v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    iput-byte v1, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->newBuilderForType()Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/miui/antispam/service/backup/g;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->acL()Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->toBuilder()Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/miui/antispam/service/backup/g;
    .locals 1

    invoke-static {p0}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->acP(Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;)Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->getSerializedSize()I

    iget v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->antispam_:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_0
    return-void
.end method
