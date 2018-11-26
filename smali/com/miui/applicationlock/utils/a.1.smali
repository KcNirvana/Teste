.class public Lcom/miui/applicationlock/utils/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aaV:Lcom/miui/applicationlock/utils/a;


# instance fields
.field private aaS:Lcom/miui/applicationlock/utils/i;

.field private aaT:Landroid/os/CancellationSignal;

.field private aaU:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/applicationlock/utils/a;->aaV:Lcom/miui/applicationlock/utils/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/utils/a;->aaU:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/miui/applicationlock/utils/a;->aaT:Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/miui/applicationlock/utils/a;->aaU:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method static synthetic adP(Lcom/miui/applicationlock/utils/a;)Lcom/miui/applicationlock/utils/i;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/a;->aaS:Lcom/miui/applicationlock/utils/i;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/a;
    .locals 2

    const-class v1, Lcom/miui/applicationlock/utils/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/applicationlock/utils/a;->aaV:Lcom/miui/applicationlock/utils/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/applicationlock/utils/a;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/utils/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/applicationlock/utils/a;->aaV:Lcom/miui/applicationlock/utils/a;

    :cond_0
    sget-object v0, Lcom/miui/applicationlock/utils/a;->aaV:Lcom/miui/applicationlock/utils/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public adJ(Lcom/miui/applicationlock/utils/i;I)V
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/utils/a;->aaT:Landroid/os/CancellationSignal;

    iput-object p1, p0, Lcom/miui/applicationlock/utils/a;->aaS:Lcom/miui/applicationlock/utils/i;

    iget-object v0, p0, Lcom/miui/applicationlock/utils/a;->aaU:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/miui/applicationlock/utils/a;->aaT:Landroid/os/CancellationSignal;

    new-instance v4, Lcom/miui/applicationlock/utils/o;

    invoke-direct {v4, p0}, Lcom/miui/applicationlock/utils/o;-><init>(Lcom/miui/applicationlock/utils/a;)V

    move v3, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public adK()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/utils/a;->aaT:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/utils/a;->aaT:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/utils/a;->aaT:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v1, p0, Lcom/miui/applicationlock/utils/a;->aaT:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method

.method public adL()Ljava/util/List;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/applicationlock/utils/a;->aaU:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public adM()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/applicationlock/utils/a;->aaU:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public adN()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/a;->aaU:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    return v0
.end method

.method public adO([B)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/a;->aaU:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->resetTimeout([B)V

    return-void
.end method
