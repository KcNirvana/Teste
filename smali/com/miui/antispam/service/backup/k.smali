.class final Lcom/miui/antispam/service/backup/k;
.super Lcom/google/protobuf/AbstractParser;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;
    .locals 2

    new-instance v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/service/backup/k;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;

    move-result-object v0

    return-object v0
.end method
