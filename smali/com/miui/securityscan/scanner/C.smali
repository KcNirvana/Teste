.class final Lcom/miui/securityscan/scanner/C;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final Eh:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/securityscan/scanner/C;->Eh:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
