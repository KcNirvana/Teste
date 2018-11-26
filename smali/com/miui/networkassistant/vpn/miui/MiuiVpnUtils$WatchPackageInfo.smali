.class Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mIsRunning:Z

.field public mPackageName:Ljava/lang/String;

.field public mPid:I

.field public mUid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mUid:I

    iput-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPackageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mIsRunning:Z

    iput p4, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPid:I

    return-void
.end method
