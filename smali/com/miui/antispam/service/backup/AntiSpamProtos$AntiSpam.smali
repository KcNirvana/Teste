.class public final Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# static fields
.field public static ZZ:Lcom/google/protobuf/Parser;

.field private static final aaa:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

.field private static final serialVersionUID:J


# instance fields
.field private blacklist_:Ljava/util/List;

.field private keyword_:Ljava/util/List;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private policy_:Ljava/util/List;

.field private whitelist_:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/antispam/service/backup/l;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/l;-><init>()V

    sput-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->ZZ:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;-><init>(Z)V

    sput-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->aaa:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->aaa:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acp()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10

    const/4 v0, -0x1

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->memoizedIsInitialized:B

    iput v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acp()V

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v9, v2

    move v2, v0

    move v0, v9

    :goto_1
    move v9, v0

    move v0, v2

    move v2, v9

    goto :goto_0

    :sswitch_0
    move v2, v0

    move v0, v1

    goto :goto_1

    :sswitch_1
    and-int/lit8 v3, v0, 0x1

    if-eq v3, v1, :cond_c

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    or-int/lit8 v3, v0, 0x1

    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;->ZR:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v2

    move v2, v3

    goto :goto_1

    :sswitch_2
    and-int/lit8 v3, v0, 0x2

    if-eq v3, v6, :cond_b

    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    or-int/lit8 v3, v0, 0x2

    :goto_3
    :try_start_3
    iget-object v5, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;->ZT:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v0, v2

    move v2, v3

    goto :goto_1

    :sswitch_3
    and-int/lit8 v3, v0, 0x4

    if-eq v3, v7, :cond_a

    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    or-int/lit8 v3, v0, 0x4

    :goto_4
    :try_start_5
    iget-object v5, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$KeywordEntry;->ZV:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$KeywordEntry;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v0, v2

    move v2, v3

    goto :goto_1

    :sswitch_4
    and-int/lit8 v3, v0, 0x8

    if-eq v3, v8, :cond_9

    :try_start_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->policy_:Ljava/util/List;
    :try_end_6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    or-int/lit8 v3, v0, 0x8

    :goto_5
    :try_start_7
    iget-object v5, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->policy_:Ljava/util/List;

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;->ZX:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v0, v2

    move v2, v3

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    :cond_2
    and-int/lit8 v1, v0, 0x4

    if-ne v1, v7, :cond_3

    iget-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    :cond_3
    and-int/lit8 v0, v0, 0x8

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->policy_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->policy_:Ljava/util/List;

    :cond_4
    :try_start_8
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_6
    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->makeExtensionsImmutable()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v2

    move v3, v0

    move-object v0, v2

    :goto_7
    :try_start_9
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    :goto_8
    and-int/lit8 v2, v3, 0x1

    if-ne v2, v1, :cond_5

    iget-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    :cond_5
    and-int/lit8 v1, v3, 0x2

    if-ne v1, v6, :cond_6

    iget-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    :cond_6
    and-int/lit8 v1, v3, 0x4

    if-ne v1, v7, :cond_7

    iget-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    :cond_7
    and-int/lit8 v1, v3, 0x8

    if-ne v1, v8, :cond_8

    iget-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->policy_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->policy_:Ljava/util/List;

    :cond_8
    :try_start_a
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_9
    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->makeExtensionsImmutable()V

    throw v0

    :catch_2
    move-exception v2

    move v3, v0

    move-object v0, v2

    :goto_a
    :try_start_b
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catch_3
    move-exception v1

    goto :goto_9

    :catchall_2
    move-exception v0

    throw v0

    :catchall_3
    move-exception v2

    move v3, v0

    move-object v0, v2

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_7

    :cond_9
    move v3, v0

    goto/16 :goto_5

    :cond_a
    move v3, v0

    goto/16 :goto_4

    :cond_b
    move v3, v0

    goto/16 :goto_3

    :cond_c
    move v3, v0

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->memoizedIsInitialized:B

    iput v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->memoizedIsInitialized:B

    iput v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->memoizedSerializedSize:I

    return-void
.end method

.method public static acn()Lcom/miui/antispam/service/backup/f;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/f;->-wrap0()Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method public static aco()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->aaa:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    return-object v0
.end method

.method private acp()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->policy_:Ljava/util/List;

    return-void
.end method

.method public static acq(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/f;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acn()Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/antispam/service/backup/f;->acI(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic acr(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic acs(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic act(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->policy_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic acu(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic acv(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic acw(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic acx(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->policy_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic acy(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public acj()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->policy_:Ljava/util/List;

    return-object v0
.end method

.method public ack()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    return-object v0
.end method

.method public acl()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    return-object v0
.end method

.method public acm()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->getDefaultInstanceForType()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->aaa:Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->ZZ:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    const/4 v2, 0x0

    iget v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x2

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x3

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->policy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->policy_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iput v3, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->memoizedSerializedSize:I

    return v3
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-byte v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->memoizedIsInitialized:B

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    iput-byte v1, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->newBuilderForType()Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/miui/antispam/service/backup/f;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acn()Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->toBuilder()Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/miui/antispam/service/backup/f;
    .locals 1

    invoke-static {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acq(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/f;

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

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->getSerializedSize()I

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->policy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->policy_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method
