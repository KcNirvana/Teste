.class public Lcom/miui/payment/backup/PaymentBackupAgent;
.super Lmiui/app/backup/FullBackupAgent;
.source "PaymentBackupAgent.java"


# static fields
.field private static final BACKUP_VER:I = 0x1


# direct methods
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget v0, p1, Lmiui/app/backup/BackupMeta;->version:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/payment/backup/PaymentBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/payment/backup/PaymentCloudBackupImpl;

    invoke-direct {v2}, Lcom/miui/payment/backup/PaymentCloudBackupImpl;-><init>()V

    invoke-static {v1, p2, v2}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->restoreSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/xiaomi/settingsdk/backup/ICloudBackup;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", cannot restore, current version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onFullBackup(Landroid/os/ParcelFileDescriptor;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/payment/backup/PaymentBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/payment/backup/PaymentCloudBackupImpl;

    invoke-direct {v1}, Lcom/miui/payment/backup/PaymentCloudBackupImpl;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->backupSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/xiaomi/settingsdk/backup/ICloudBackup;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    const/4 v0, 0x0

    return v0
.end method
