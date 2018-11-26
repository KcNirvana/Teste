.class public Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;
.super Lmiui/app/backup/FullBackupAgent;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ZQ:Lcom/miui/antispam/service/backup/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/backup/FullBackupAgent;-><init>()V

    return-void
.end method


# virtual methods
.method protected getVersion(I)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .locals 5

    const/4 v2, 0x0

    iget v0, p1, Lmiui/app/backup/BackupMeta;->feature:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-super {p0, p1, p2}, Lmiui/app/backup/FullBackupAgent;->onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget v0, p1, Lmiui/app/backup/BackupMeta;->feature:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/miui/antispam/service/backup/a;

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/antispam/service/backup/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->ZQ:Lcom/miui/antispam/service/backup/a;

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->acJ(Ljava/io/InputStream;)Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    const/4 v0, 0x6

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_2
    return v0

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->acK()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acj()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;

    iget-object v4, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->ZQ:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v4, v0}, Lcom/miui/antispam/service/backup/a;->ZM(Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_4
    throw v0

    :cond_5
    :try_start_3
    invoke-virtual {v2}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->ack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    iget-object v4, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->ZQ:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v4, v0}, Lcom/miui/antispam/service/backup/a;->ZK(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acl()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;

    iget-object v4, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->ZQ:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v4, v0}, Lcom/miui/antispam/service/backup/a;->ZN(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acm()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$KeywordEntry;

    iget-object v3, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->ZQ:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v3, v0}, Lcom/miui/antispam/service/backup/a;->ZL(Lcom/miui/antispam/service/backup/AntiSpamProtos$KeywordEntry;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :cond_8
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method protected onFullBackup(Landroid/os/ParcelFileDescriptor;I)I
    .locals 7

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-super {p0, p1, p2}, Lmiui/app/backup/FullBackupAgent;->onFullBackup(Landroid/os/ParcelFileDescriptor;I)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/miui/antispam/service/backup/a;

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/antispam/service/backup/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->ZQ:Lcom/miui/antispam/service/backup/a;

    invoke-static {}, Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;->acn()Lcom/miui/antispam/service/backup/f;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->ZQ:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v0}, Lcom/miui/antispam/service/backup/a;->ZQ()Ljava/util/Vector;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->ZQ:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v3}, Lcom/miui/antispam/service/backup/a;->ZO()Ljava/util/Vector;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->ZQ:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v4}, Lcom/miui/antispam/service/backup/a;->ZR()Ljava/util/Vector;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->ZQ:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v5}, Lcom/miui/antispam/service/backup/a;->ZP()Ljava/util/Vector;

    move-result-object v5

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;

    invoke-virtual {v1, v0}, Lcom/miui/antispam/service/backup/f;->acz(Lcom/miui/antispam/service/backup/AntiSpamProtos$PolicyEntry;)Lcom/miui/antispam/service/backup/f;

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;

    invoke-virtual {v1, v0}, Lcom/miui/antispam/service/backup/f;->acA(Lcom/miui/antispam/service/backup/AntiSpamProtos$BlacklistEntry;)Lcom/miui/antispam/service/backup/f;

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;

    invoke-virtual {v1, v0}, Lcom/miui/antispam/service/backup/f;->acB(Lcom/miui/antispam/service/backup/AntiSpamProtos$WhitelistEntry;)Lcom/miui/antispam/service/backup/f;

    goto :goto_3

    :cond_4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/backup/AntiSpamProtos$KeywordEntry;

    invoke-virtual {v1, v0}, Lcom/miui/antispam/service/backup/f;->acC(Lcom/miui/antispam/service/backup/AntiSpamProtos$KeywordEntry;)Lcom/miui/antispam/service/backup/f;

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->acL()Lcom/miui/antispam/service/backup/g;

    move-result-object v0

    invoke-virtual {v1}, Lcom/miui/antispam/service/backup/f;->build()Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/service/backup/g;->acS(Lcom/miui/antispam/service/backup/AntiSpamProtos$AntiSpam;)Lcom/miui/antispam/service/backup/g;

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lcom/miui/antispam/service/backup/g;->build()Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/antispam/service/backup/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_5
    :try_start_2
    sget-object v2, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Cannot export blacklist and whitelist "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :goto_6
    :try_start_3
    sget-object v1, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Cannot export blacklist and whitelist "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5
.end method
