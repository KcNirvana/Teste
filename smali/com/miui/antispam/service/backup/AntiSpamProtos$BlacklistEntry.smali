.class public final Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# static fields
.field public static ZR:Lcom/google/protobuf/Parser;

.field private static final ZS:Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private notes_:Ljava/lang/Object;

.field private number_:Ljava/lang/Object;

.field private simId_:I

.field private state_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/antispam/service/backup/h;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/h;-><init>()V

    sput-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->ZR:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;-><init>(Z)V

    sput-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->ZS:Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->ZS:Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aaj()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->memoizedIsInitialized:B

    iput v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aaj()V

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

    iget v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    iput-object v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->guid_:Ljava/lang/Object;
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
    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    iput-object v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->luid_:Ljava/lang/Object;
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

    iget v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    iput-object v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->number_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    iput-object v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->notes_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    iget v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->state_:I

    goto :goto_0

    :sswitch_6
    iget v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->simId_:I
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
    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->makeExtensionsImmutable()V

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

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->memoizedIsInitialized:B

    iput v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->memoizedIsInitialized:B

    iput v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->memoizedSerializedSize:I

    return-void
.end method

.method public static ZV()Lcom/miui/antispam/service/backup/b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/b;->-wrap0()Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    return-object v0
.end method

.method public static ZY()Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->ZS:Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    return-object v0
.end method

.method private aaj()V
    .locals 1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->guid_:Ljava/lang/Object;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->luid_:Ljava/lang/Object;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->number_:Ljava/lang/Object;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->notes_:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->state_:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->simId_:I

    return-void
.end method

.method public static aak(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Lcom/miui/antispam/service/backup/b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->ZV()Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/antispam/service/backup/b;->aaA(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aal(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->guid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic aam(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->luid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic aan(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->notes_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic aao(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->number_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic aap(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    return p1
.end method

.method static synthetic aaq(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic aar(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic aas(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->notes_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic aat(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->number_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic aau(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->simId_:I

    return p1
.end method

.method static synthetic aav(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->state_:I

    return p1
.end method


# virtual methods
.method public ZW()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->number_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->number_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public ZX()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->notes_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->notes_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public ZZ()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->guid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->guid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public aaa()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->luid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->luid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public aab()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->notes_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->notes_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public aac()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->number_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->number_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public aad()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aae()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

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

.method public aaf()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

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

.method public aag()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

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

.method public aah()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aai()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->getDefaultInstanceForType()Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->ZS:Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->ZR:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v1

    :cond_0
    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->ZZ()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aaa()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_3

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aac()Lcom/google/protobuf/ByteString;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aab()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->state_:I

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->simId_:I

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iput v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->memoizedSerializedSize:I

    return v0
.end method

.method public getSimId()I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->simId_:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->state_:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-byte v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->memoizedIsInitialized:B

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    iput-byte v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->newBuilderForType()Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/miui/antispam/service/backup/b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->ZV()Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->toBuilder()Lcom/miui/antispam/service/backup/b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/miui/antispam/service/backup/b;
    .locals 1

    invoke-static {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aak(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Lcom/miui/antispam/service/backup/b;

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

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->getSerializedSize()I

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->ZZ()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_0
    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aaa()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aac()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->aab()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3
    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->state_:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_4
    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->simId_:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_5
    return-void
.end method
