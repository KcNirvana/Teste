.class final Lcom/miui/applicationlock/utils/o;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source ""


# instance fields
.field final synthetic abA:Lcom/miui/applicationlock/utils/a;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/utils/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/o;->abA:Lcom/miui/applicationlock/utils/a;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationFailed()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/o;->abA:Lcom/miui/applicationlock/utils/a;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/a;->adP(Lcom/miui/applicationlock/utils/a;)Lcom/miui/applicationlock/utils/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/applicationlock/utils/i;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/utils/o;->abA:Lcom/miui/applicationlock/utils/a;

    invoke-static {v1}, Lcom/miui/applicationlock/utils/a;->adP(Lcom/miui/applicationlock/utils/a;)Lcom/miui/applicationlock/utils/i;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/miui/applicationlock/utils/i;->aeM(I)V

    :cond_0
    return-void
.end method
