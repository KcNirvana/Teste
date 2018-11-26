.class public final Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# static fields
.field public static ZX:Lcom/google/protobuf/Parser;

.field private static final ZY:Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private simId_:I

.field private state_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/antispam/service/backup/k;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/k;-><init>()V

    sput-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->ZX:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;-><init>(Z)V

    sput-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->ZY:Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->ZY:Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->abV()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->memoizedIsInitialized:B

    iput v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->abV()V

    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    iput-object v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->guid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    iput-object v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->luid_:Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :sswitch_3
    :try_start_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    iput-object v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->name_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    iget v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->state_:I

    goto :goto_0

    :sswitch_5
    iget v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->simId_:I
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_6
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->makeExtensionsImmutable()V

    return-void

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    throw v0

    :catch_3
    move-exception v1

    goto :goto_1

    :catchall_2
    move-exception v0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->memoizedIsInitialized:B

    iput v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->memoizedIsInitialized:B

    iput v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->memoizedSerializedSize:I

    return-void
.end method

.method public static abL()Lcom/miui/antispam/service/backup/e;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/e;->-wrap0()Lcom/miui/antispam/service/backup/e;

    move-result-object v0

    return-object v0
.end method

.method public static abM()Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->ZY:Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;

    return-object v0
.end method

.method private abV()V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->guid_:Ljava/lang/Object;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->luid_:Ljava/lang/Object;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->name_:Ljava/lang/Object;

    iput v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->state_:I

    iput v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->simId_:I

    return-void
.end method

.method public static abW(Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;)Lcom/miui/antispam/service/backup/e;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->abL()Lcom/miui/antispam/service/backup/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/antispam/service/backup/e;->aci(Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;)Lcom/miui/antispam/service/backup/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic abX(Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->guid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic abY(Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->luid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic abZ(Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic aca(Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    return p1
.end method

.method static synthetic acb(Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic acc(Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic acd(Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic ace(Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->simId_:I

    return p1
.end method

.method static synthetic acf(Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->state_:I

    return p1
.end method


# virtual methods
.method public abN()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->guid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->guid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public abO()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->luid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->luid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public abP()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public abQ()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abR()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abS()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abT()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abU()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->getDefaultInstanceForType()Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->ZY:Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->name_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->ZX:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v1

    :cond_0
    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->abN()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->abO()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_3

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->abP()Lcom/google/protobuf/ByteString;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->state_:I

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->simId_:I

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iput v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->memoizedSerializedSize:I

    return v0
.end method

.method public getSimId()I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->simId_:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->state_:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-byte v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->memoizedIsInitialized:B

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    iput-byte v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->newBuilderForType()Lcom/miui/antispam/service/backup/e;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/miui/antispam/service/backup/e;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->abL()Lcom/miui/antispam/service/backup/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->toBuilder()Lcom/miui/antispam/service/backup/e;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/miui/antispam/service/backup/e;
    .locals 1

    invoke-static {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->abW(Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;)Lcom/miui/antispam/service/backup/e;

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
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->getSerializedSize()I

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->abN()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_0
    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->abO()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->abP()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->state_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->simId_:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_4
    return-void
.end method
