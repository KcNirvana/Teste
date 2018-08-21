.class Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$3;
.super Ljava/lang/Object;
.source "PackageInstallReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->clearUpgradeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

.field final synthetic val$apkPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$3;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$3;->val$apkPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "PackageInstallReceiver"

    const-string/jumbo v1, "start delete upgrade apk"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$3;->val$apkPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/FileUtil;->delete(Ljava/lang/String;)V

    return-void
.end method
