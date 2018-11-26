.class public final Lcom/miui/antispam/service/backup/f;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# instance fields
.field private bitField0_:I

.field private blacklist_:Ljava/util/List;

.field private keyword_:Ljava/util/List;

.field private policy_:Ljava/util/List;

.field private whitelist_:Ljava/util/List;


# direct methods
.method static synthetic -wrap0()Lcom/miui/antispam/service/backup/f;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/f;->create()Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->blacklist_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->whitelist_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->keyword_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->policy_:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/f;->acH()V

    return-void
.end method

.method private acD()V
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/antispam/service/backup/f;->blacklist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->blacklist_:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    :cond_0
    return-void
.end method

.method private acE()V
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/antispam/service/backup/f;->keyword_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->keyword_:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    :cond_0
    return-void
.end method

.method private acF()V
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/antispam/service/backup/f;->policy_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->policy_:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    :cond_0
    return-void
.end method

.method private acG()V
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/antispam/service/backup/f;->whitelist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->whitelist_:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    :cond_0
    return-void
.end method

.method private acH()V
    .locals 0

    return-void
.end method

.method private static create()Lcom/miui/antispam/service/backup/f;
    .locals 1

    new-instance v0, Lcom/miui/antispam/service/backup/f;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/f;-><init>()V

    return-object v0
.end method


# virtual methods
.method public acA(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Lcom/miui/antispam/service/backup/f;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/antispam/service/backup/f;->acD()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->blacklist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public acB(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;)Lcom/miui/antispam/service/backup/f;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/antispam/service/backup/f;->acG()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->whitelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public acC(Lcom/miui/antispam/service/backup/AntiSpamProtos$KeywordEntry;)Lcom/miui/antispam/service/backup/f;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/antispam/service/backup/f;->acE()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->keyword_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public acI(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/f;
    .locals 2

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->aco()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acr(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->blacklist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acr(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->blacklist_:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acu(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->whitelist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acu(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->whitelist_:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acs(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->keyword_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acs(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->keyword_:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->act(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->policy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->act(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->policy_:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    :cond_4
    :goto_3
    return-object p0

    :cond_5
    invoke-direct {p0}, Lcom/miui/antispam/service/backup/f;->acD()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->blacklist_:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acr(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/miui/antispam/service/backup/f;->acG()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->whitelist_:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acu(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/miui/antispam/service/backup/f;->acE()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->keyword_:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acs(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/miui/antispam/service/backup/f;->acF()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->policy_:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->act(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method public acz(Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;)Lcom/miui/antispam/service/backup/f;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/antispam/service/backup/f;->acF()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->policy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->build()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->buildPartial()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/antispam/service/backup/f;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->buildPartial()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;
    .locals 3

    new-instance v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)V

    iget v1, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    iget v1, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/antispam/service/backup/f;->blacklist_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/service/backup/f;->blacklist_:Ljava/util/List;

    iget v1, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/service/backup/f;->blacklist_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acv(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/antispam/service/backup/f;->whitelist_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/service/backup/f;->whitelist_:Ljava/util/List;

    iget v1, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/service/backup/f;->whitelist_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acy(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/antispam/service/backup/f;->keyword_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/service/backup/f;->keyword_:Ljava/util/List;

    iget v1, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    :cond_2
    iget-object v1, p0, Lcom/miui/antispam/service/backup/f;->keyword_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acw(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/miui/antispam/service/backup/f;->policy_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/service/backup/f;->policy_:Ljava/util/List;

    iget v1, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    :cond_3
    iget-object v1, p0, Lcom/miui/antispam/service/backup/f;->policy_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acx(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->clear()Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->clear()Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/miui/antispam/service/backup/f;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->blacklist_:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->whitelist_:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->keyword_:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->policy_:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/miui/antispam/service/backup/f;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->clone()Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->clone()Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/antispam/service/backup/f;
    .locals 2

    invoke-static {}, Lcom/miui/antispam/service/backup/f;->create()Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->buildPartial()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/service/backup/f;->acI(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->clone()Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->getDefaultInstanceForType()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->getDefaultInstanceForType()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->aco()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/service/backup/f;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/service/backup/f;->acI(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/service/backup/f;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/f;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->ZZ:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/f;->acI(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/f;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;
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

    invoke-virtual {p0, v1}, Lcom/miui/antispam/service/backup/f;->acI(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/f;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method
