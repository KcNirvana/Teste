.class public Lcom/miui/securitycenter/cloudbackup/SettingsCloudBackupService;
.super Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBackupImpl()Lcom/xiaomi/settingsdk/backup/ICloudBackup;
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/cloudbackup/c;

    invoke-direct {v0}, Lcom/miui/securitycenter/cloudbackup/c;-><init>()V

    return-object v0
.end method
